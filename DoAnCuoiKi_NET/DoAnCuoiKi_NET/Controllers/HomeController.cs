using DoAnCuoiKi_NET.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnCuoiKi_NET.Controllers
{
    public class HomeController : Controller
    {
        SHMLYEntities db = new SHMLYEntities();
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult getCategory_1()
        {
            var cate_1 = from i in db.Category
                       where i.hide == true
                       orderby i.order ascending
                       select i;
            return PartialView(cate_1.ToList());
        }
    }
}