using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Protus.Data;
using Protus.Data.Entities;
using Protus.DTOS;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.Json;
using System.Threading.Tasks;

namespace Protus.Controllers
{
    public class TopicsController : BaseController
    {
        private readonly ApplicationDbContext _context;

        public TopicsController(ApplicationDbContext context)
        {
            _context = context;
        }
        public async Task<IActionResult>  Index()
        {
            return View(await _context.Topics.Include(x=>x.Course).ToListAsync());
        }
        public async Task<IActionResult> Delete(int id)
        {
            var row = _context.Topics.Find(id);
            _context.Topics.Remove(row);
            await _context.SaveChangesAsync();
            return RedirectToAction("Index");
        }


        public IActionResult Create(int? id)
        {
            TopicDto model = new TopicDto();
            ViewBag.Courses = _context.Courses.Where(x => x.IsDeleted != true).Select(x => new SelectListItem { Text = x.Name, Value = x.Id.ToString() }).ToList();
            if (id > 0)
            {
                var topic = _context.Topics.Find(id.Value);
                model.Id = topic.TopicId;
                model.Name = topic.Name;
                model.Description = topic.Description;
                model.CourseId = topic.CourseId;
            }

            return View(model);
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(TopicDto topic)
        {
            if (ModelState.IsValid)
            {
                var _topic= topic.Id > 0 ? _context.Topics.Find(topic.Id) : new Topic();
                _topic.Name = topic.Name;
                _topic.Description = topic.Description;
                _topic.CourseId = topic.CourseId;
                if (topic.Id == 0)
                {
                    _context.Topics.Add(_topic);
                }
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(topic);
        }

        public async Task<IActionResult>  ManageChallenges(int id)
        {
            ViewBag.topicId = id;
            var challenges =await _context.Challenges.Where(x => x.TopicId == id).ToListAsync();
            return View(challenges);
        }
        public async Task<IActionResult> ManageExamples(int id)
        {
            ViewBag.topicId = id;
            var examples = await _context.Examples.Where(x => x.TopicId == id).ToListAsync();
            return View(examples);
        }
        public async Task<IActionResult> ManageExercises(int id)
        {
            ViewBag.topicId = id;
            var examples = await _context.CodingExercises.Where(x => x.TopicId == id).ToListAsync();
            return View(examples);
        }

        public IActionResult CreateChallenge(int id,int topicId)
        {
            ChallengeDto model = new ChallengeDto() { TopicId = topicId };
            if (id > 0)
            {
                model = _context.Challenges.Include(x => x.ChallengeOptions).Where(x => x.Id == id).Select(x => new ChallengeDto
                {
                    Id = x.Id,
                    Code = x.Code,
                    Description = x.Description,
                    Title = x.Title,
                    TopicId = x.TopicId ?? 0,
                    ChallengeOptions = x.ChallengeOptions.Select(x => new ChallengeOptionDto
                    {
                        IsAnswer = x.IsAnswer,
                        Option = x.Option
                    })

                }).FirstOrDefault();
            }
            return View(model);
        }
        public IActionResult CreateExample(int id, int topicId)
        {
            ExampleDto model = new ExampleDto() { TopicId = topicId };
            if (id > 0)
            {
                model = _context.Examples.Where(x => x.Id == id).Select(x => new ExampleDto
                {
                    Id = x.Id,
                    Code = x.Code,
                    Description = x.Description,
                    Title = x.Title,
                    TopicId = x.TopicId ?? 0,
                 
                }).FirstOrDefault();
            }
            return View(model);
        }
        public IActionResult CreateExercise(int id, int topicId)
        {
            ExampleDto model = new ExampleDto() { TopicId = topicId };
            if (id > 0)
            {
                model = _context.CodingExercises.Where(x => x.Id == id).Select(x => new ExampleDto
                {
                    Id = x.Id,
                    Code = x.Code,
                    Description = x.Description,
                    Title = x.Title,
                    TopicId = x.TopicId ?? 0,

                }).FirstOrDefault();
            }
            return View(model);
        }
        [HttpPost]
        public IActionResult CreateChallenge(ChallengeDto model)
        {
            var _challenge = model.Id==0? new Data.Entities.Challenge():_context.Challenges.Find(model.Id);

            _challenge.Code = model.Code;
            _challenge.Title = model.Title;
            _challenge.Description = model.Description;
            _challenge.TopicId = model.TopicId;
            if (model.Id==0)
            {
                _context.Challenges.Add(_challenge);
            }
            _context.SaveChanges();

            if (model.Id>0)
            {
               var options= _context.ChallengeOptions.Where(x => x.ChallengeId == model.Id).ToList();
                foreach (var item in options)
                {
                    _context.ChallengeOptions.Remove(item);
                }
                _context.SaveChanges();
            }
            if (!string.IsNullOrEmpty(model.OptionsString) )
            {
                var options = JsonSerializer.Deserialize<List<ChallengeOptionDto>>(model.OptionsString);
                if (options != null)
                {
                    foreach (var _option in options)
                    {
                        _context.ChallengeOptions.Add(new ChallengeOption
                        {
                            ChallengeId = _challenge.Id,
                            IsAnswer = _option.IsAnswer,
                             Option=_option.Option
                        });
                    }
                    _context.SaveChanges();
                  
                }
            }
            return RedirectToAction("Index");
        }
        [HttpPost]
        public IActionResult CreateExercise(ExampleDto model)
        {
            var _exercise = model.Id == 0 ? new Data.Entities.CodingExercise() : _context.CodingExercises.Find(model.Id);

            _exercise.Code = model.Code;
            _exercise.Title = model.Title;
            _exercise.Description = model.Description;
            _exercise.TopicId = model.TopicId;
            if (model.Id == 0)
            {
                _context.CodingExercises.Add(_exercise);
            }
            _context.SaveChanges();
            return RedirectToAction("Index");
        }
        [HttpPost]
        public IActionResult CreateExample(ExampleDto model)
        {
            var _example = model.Id == 0 ? new Data.Entities.Example() : _context.Examples.Find(model.Id);

            _example.Code = model.Code;
            _example.Title = model.Title;
            _example.Description = model.Description;
            _example.TopicId = model.TopicId;
            if (model.Id == 0)
            {
                _context.Examples.Add(_example);
            }
            _context.SaveChanges();
            return RedirectToAction("Index");
        }

        public IActionResult GetChallengeDetails(int id)
        {
            var model = _context.Challenges.Include(x => x.ChallengeOptions).FirstOrDefault(x => x.Id == id);
            return PartialView(model);
        }
        public IActionResult GetExampleDetails(int id)
        {
            var model = _context.Examples.FirstOrDefault(x => x.Id == id);
            return PartialView(model);
        }
        public IActionResult GetExerciseDetails(int id)
        {
            var model = _context.CodingExercises.FirstOrDefault(x => x.Id == id);
            return PartialView(model);
        }

        [HttpPost]
        public IActionResult SolvedChallenge(int Id)
        {
            string userId = GetUserId();
            var rows = _context.SolvedChallenges.Where(x=>x.ChallengeId==Id && x.UserId== userId).ToList();
            if (rows!=null && rows.Count>0)
            {
                _context.SolvedChallenges.RemoveRange(rows);
                _context.SaveChanges();
            }
            _context.SolvedChallenges.Add(new Data.Entities.SolvedChallenge
            {
                UserId = userId,
                ChallengeId = Id
            });
            _context.SaveChanges();
            return Json(true);
        }
         
        [HttpPost]
        public IActionResult SolvedExercise(int Id,string code)
        {
            string userId = GetUserId();
            var rows = _context.SolvedCodingExercises.Where(x => x.ExerciseId == Id && x.UserId == userId).ToList();
            if (rows != null && rows.Count > 0)
            {
                _context.SolvedCodingExercises.RemoveRange(rows);
                _context.SaveChanges();
            }
            _context.SolvedCodingExercises.Add(new Data.Entities.SolvedCodingExercise
            {
                UserId = userId,
                ExerciseId = Id,
                 Code=code
            });
            _context.SaveChanges();
            return Json(true);
        }

    }
}
