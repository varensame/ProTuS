using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
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
    public class TopicsController : Controller
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







    }
}
