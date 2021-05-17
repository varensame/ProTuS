using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Protus.Data;
using Protus.Data.Entities;
using Protus.DTOS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.Controllers
{
    [Authorize]
    public class HomeController : BaseController
    {
        private readonly ApplicationDbContext applicationDbContext;
        private readonly UserManager<ApplicationUser> userManager;

        public HomeController(ApplicationDbContext _applicationDbContext, UserManager<ApplicationUser> _userManager)
        {
            applicationDbContext = _applicationDbContext;
            userManager = _userManager;
        }
        public IActionResult Index()
        {
            return View();
        }


        
        public async Task<IActionResult>  ViewTopicDetails(int id)
        {
            var topic=await applicationDbContext.Topics.Include(x=>x.Course).Include(x=>x.Challenges).Include(x=>x.CodingExercises).Include(x=>x.Examples).FirstOrDefaultAsync(x=>x.TopicId==id);
            string userId =GetUserId();

            var userChallenges = applicationDbContext.SolvedChallenges.Where(x => x.UserId == userId).Select(x => x.ChallengeId).ToList();
            ViewBag.solvedChallenges = applicationDbContext.Challenges.Where(x => x.TopicId == id && userChallenges.Contains(x.Id)).ToList();

            var userExercises = applicationDbContext.SolvedCodingExercises.Where(x => x.UserId == userId).Select(x => x.ExerciseId).ToList();
            ViewBag.solvedExercises = applicationDbContext.CodingExercises.Where(x => x.TopicId == id && userExercises.Contains(x.Id)).ToList();



            return View(topic);
        }


        public async Task<IActionResult> Statistics()
        {
            var Users = new List<ApplicationUser>();
            if (User.IsInRole("Student"))
            {

                Users.Add(new ApplicationUser { Id=GetUserId() });

            }
            else
            {
                Users= (await userManager.GetUsersInRoleAsync("Student")).ToList(); 
            }
            ViewBag.users = Users;
            ViewBag.courses = applicationDbContext.Courses.Where(x=>x.IsDeleted!=true).ToList();
            return View();
        }

        public async Task<PartialViewResult>  GetResults(string student,int course)
        {
            var topics= await applicationDbContext.Challenges.Include(x => x.Topic).Where(x => x.Topic.CourseId == course).Select(x => new ResultChartDataDto {  ChallengeId=x.Id,Topic = x.Title + " - " + x.Topic.Name }).ToListAsync();
            foreach (var item in topics)
            {
                item.Marks =(await applicationDbContext.SolvedChallenges.AnyAsync(x => x.UserId == student && x.ChallengeId == item.ChallengeId))?1:0;
            }
            ViewBag.chartData = topics.Select(x => new KeyValuePair<string, int>(x.Topic, x.Marks)).ToList();
            return PartialView();
        }


    }
}
