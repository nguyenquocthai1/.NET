using DoAnCuoiKi_NET.Models;
using Microsoft.Ajax.Utilities;
using Microsoft.Win32.SafeHandles;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace DoAnCuoiKi_NET.Controllers
{
    public class ProductController : Controller
    {
        SHMLYEntities db = new SHMLYEntities();
        // GET: Product

        public ActionResult Index(string meta)
        {
            var index = from i in db.Category
                        where i.meta == meta
                        select i;
            return View(index.FirstOrDefault());
        }

        public ActionResult getChild_Product(int id_cate)
        {
            ViewBag.meta = "san-pham";
            var prod = from i in db.Product
                       where i.hide == true && i.id_cate == id_cate
                       orderby i.order ascending
                       select i;
            return PartialView(prod.ToList());

        }

        public ActionResult getParent_Product(string meta_parent)
        {
            ViewBag.meta = "san-pham";
            var prod = from i in db.Product
                       where i.hide == true && i.meta_parent == meta_parent
                       orderby i.order ascending
                       select i;

            return PartialView(prod.ToList());

        }

        public ActionResult getChild_BestSaleProduct(int id_cate)
        {
            ViewBag.meta = "san-pham";
            var prod = (from i in db.Product
                        where i.hide == true && i.id_cate == id_cate
                        orderby i.sale_amount descending
                        select i).Take(6);
            return PartialView(prod.ToList());

        }

        public ActionResult getParent_BestSaleProduct(string meta_parent)
        {
            ViewBag.meta = "san-pham";
            var prod = (from i in db.Product
                        where i.hide == true && i.meta_parent == meta_parent
                        orderby i.sale_amount descending
                        select i).Take(6);
            return PartialView(prod.ToList());

        }

        public ActionResult getChild_NewProduct(int id_cate)
        {
            var prod = (from i in db.Product
                        where i.hide == true && i.id_cate == id_cate
                        orderby i.order descending
                        select i).Take(4);
            return PartialView(prod.ToList());

        }

        public ActionResult getParent_NewProduct(string meta_parent)
        {
            var prod = (from i in db.Product
                        where i.hide == true && i.meta_parent == meta_parent
                        orderby i.order descending
                        select i).Take(4);
            return PartialView(prod.ToList());

        }


        public ActionResult getDetail(long id)
        {
            var detail = from i in db.Product
                        where i.id_product == id
                        select i;
            return View(detail.FirstOrDefault());
        }
    }
}