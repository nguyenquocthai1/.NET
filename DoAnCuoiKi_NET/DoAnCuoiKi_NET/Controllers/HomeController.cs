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
        public ActionResult getCategory_2()
        {
            var cate_2 = from i in db.Category
                         where i.hide == true
                         orderby i.order ascending
                         select i;
            return PartialView(cate_2.ToList());
        }

        public ActionResult getCategory_3()
        {
            ViewBag.meta = "san-pham";
            var cate_3 = from i in db.Category
                         where i.hide == true
                         orderby i.order ascending
                         select i;
            return PartialView(cate_3.ToList());
        }

        public ActionResult getProd_Category(int id_cate, string meta)
        {
            var pcate = from i in db.ProductCategory
                         where i.hide == true && i.id_cate == id_cate
                         orderby i.order ascending
                         select i;
            return PartialView(pcate.ToList());
        }
        public ActionResult getProduct(int id_cate, string meta)
        {
            var prod = from i in db.Product
                       where i.hide == true && i.id_cate == id_cate
                         orderby i.order ascending
                         select i;
            return PartialView(prod.ToList());
        }
        public ActionResult getNews()
        {
            var news = (from i in db.New
                        where i.hide == true
                        orderby i.order ascending
                        select i).Take(3);
            return PartialView(news.ToList());
        }

    }
}