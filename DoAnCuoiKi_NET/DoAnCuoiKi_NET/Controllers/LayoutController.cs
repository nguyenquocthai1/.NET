using DoAnCuoiKi_NET.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;


namespace DoAnCuoiKi_NET.Controllers
{
    
    public class LayoutController : Controller
    {
        SHMLYEntities db = new SHMLYEntities();
        
        // GET: Layout
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult getMenu()
        {
            var menu = from i in db.Menu
                       where i.hide == true
                       orderby i.order ascending
                       select i;
            return PartialView(menu.ToList());
        }

        public ActionResult getFooter()
        {
            var footer = from i in db.Footer
                       where i.hide == true
                       orderby i.order ascending
                       select i;
            return PartialView(footer.FirstOrDefault());
        }
    }
}