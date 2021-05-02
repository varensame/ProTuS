using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Protus.Data;
using Protus.Data.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.Controllers
{
    public class MessageController : BaseController
    {
        private readonly ApplicationDbContext applicationDbContext;

        public MessageController(ApplicationDbContext _applicationDbContext)
        {
            applicationDbContext = _applicationDbContext;
        }
        public IActionResult Index()
        {
            var _data = applicationDbContext.Messages.Where(x => x.MessageTo == GetUserId()).ToList();
            ViewBag.users = applicationDbContext.Users.ToList();
            return View(_data);
        }
        public IActionResult Outbox()
        {
            var _data = applicationDbContext.Messages.Where(x => x.MessageFrom == GetUserId()).ToList();
            ViewBag.users = applicationDbContext.Users.ToList();
            return View(_data);
        }
        public IActionResult Compose()
        {
            ViewBag.users = applicationDbContext.Users.Where(x=>x.Id!=GetUserId()).Select(x=>new SelectListItem { Text=x.FirstName ==null?x.Email:x.FirstName+" "+x.LastName, Value=x.Id.ToString()}).ToList();
         
            return View();
        }

        [HttpPost]
        public IActionResult Compose(Message model)
        {
            model.MessageFrom = GetUserId();
            model.MessageDate = DateTime.Now;
            applicationDbContext.Messages.Add(model);
            applicationDbContext.SaveChanges();
            return RedirectToAction("Outbox");
        }
    }
}
