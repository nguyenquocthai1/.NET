using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using NetBooking.Models;

namespace NetBooking.Controllers
{
    public class TempController : Controller
    {
        NetBookingEntities db = new NetBookingEntities();
        // GET: Temp
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult getMenu()
       {
           var v = from t in db.Menus
                   where t.hide == true
                   orderby t.order ascending
                   select t;
            return PartialView(v.ToList());
       }

        public ActionResult getFooter()
        {
            var f = from t in db.Footers
                    where t.hide == true
                    orderby t.order ascending
                    select t;
            return PartialView(f.FirstOrDefault());
        }
    }
}