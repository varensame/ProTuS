using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Protus.Data;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Nexgen_Tutoring.Components
{
    public class CourseTopicsComponent : ViewComponent
    {
        private readonly ApplicationDbContext applicationDbContext;

        public CourseTopicsComponent(ApplicationDbContext _applicationDbContext)
        {
            applicationDbContext = _applicationDbContext;
        }
        public async Task<IViewComponentResult> InvokeAsync()
        {
            // This component will display all the courses and their topics in the left menu
            var _data =await applicationDbContext.Courses.Include(x => x.Topics).Where(x=>x.IsDeleted!=true).ToListAsync();
            return await Task.FromResult((IViewComponentResult)View("CourseTopicsComponent", _data));
        }
    }
}
