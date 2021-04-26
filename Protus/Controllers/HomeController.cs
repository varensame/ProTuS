using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Protus.Data;
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

        public HomeController(ApplicationDbContext _applicationDbContext)
        {
            applicationDbContext = _applicationDbContext;
        }
        public IActionResult Index()
        {
            return View();
        }


        
        public async Task<IActionResult>  ViewTopicDetails(int id)
        {
            var topic=await applicationDbContext.Topics.Include(x=>x.Course).Include(x=>x.Challenges).FirstOrDefaultAsync(x=>x.TopicId==id);
            string userId =GetUserId();

            var userChallenges = applicationDbContext.SolvedChallenges.Where(x => x.UserId == userId).Select(x => x.ChallengeId).ToList();
            ViewBag.solvedChallenges = applicationDbContext.Challenges.Where(x => x.TopicId == id && userChallenges.Contains(x.Id)).ToList();
            return View(topic);
        }
    }
}
