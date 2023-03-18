using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnCuoiKi_NET.Controllers
{
    public class RegisterController : Controller
    {
        // GET: Register
        public ActionResult Index(string meta)
        {
            return View();
        }
    }
}