using Microsoft.AspNetCore.Mvc;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Protus.Controllers
{

    public class BaseController : Controller
    {
        public string GetUserId()
        {
            return HttpContext?.User?.Claims?.FirstOrDefault(x => x.Type == "UserId")?.Value;
        }



    }
}
