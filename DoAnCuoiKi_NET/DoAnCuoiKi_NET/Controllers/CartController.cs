using DoAnCuoiKi_NET.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnCuoiKi_NET.Controllers
{
    public class CartController : Controller
    {
        // GET: Cart
        SHMLYEntities db = new SHMLYEntities();
        public ActionResult Index(String meta)
        {
            return View();
        }

    }
}
    
