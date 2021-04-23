using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Protus.Data;
using Protus.Data.Entities;
using Protus.DTOS;

namespace Protus.Controllers
{
    public class CoursesController : Controller
    {
        private readonly ApplicationDbContext _context;

        public CoursesController(ApplicationDbContext context)
        {
            _context = context;
        }

        // GET: Courses
        public async Task<IActionResult> Index()
        {
            return View(await _context.Courses.Where(x=>x.IsDeleted!=true).ToListAsync());
        }

        

        // GET: Courses/Create
        public IActionResult Create(int? id)
        {
            CourseDto model= new CourseDto();
            if (id>0)
            {
                var course= _context.Courses.Find(id.Value);
                model.Id = course.Id;
                model.Name = course.Name;
            }
            
            return View(model);
        }

        
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create(CourseDto course)
        {
            if (ModelState.IsValid)
            {
                var _course =course.Id>0? _context.Courses.Find(course.Id):new Course();
                _course.Name = course.Name;
                if (course.Id == 0)
                {
                    _context.Courses.Add(_course);
                }
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(course);
        }

        
        // GET: Courses/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var course = await _context.Courses
                .FirstOrDefaultAsync(m => m.Id == id);
            course.IsDeleted = true;
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        
    }
}
