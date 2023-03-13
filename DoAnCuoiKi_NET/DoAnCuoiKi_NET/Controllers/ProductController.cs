using DoAnCuoiKi_NET.Models;
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

        public ActionResult getProduct(int id_cate)
        {
            var prod = from i in db.Product
                       where i.hide == true && i.id_cate == id_cate
                       orderby i.order ascending
                       select i;
            return PartialView(prod.ToList());

        }

        public ActionResult getBestSaleProduct(int id_cate)
        {
            var prod = (from i in db.Product
                        where i.hide == true && i.id_cate == id_cate
                        orderby i.sale_amount descending
                        select i).Take(6);
            return PartialView(prod.ToList());

        }

        public ActionResult getNewProduct(int id_cate)
        {
            var prod = (from i in db.Product
                        where i.hide == true && i.id_cate == id_cate
                        orderby i.order descending
                        select i).Take(4);
            return PartialView(prod.ToList());

        }

        public ActionResult Detail(long id)
        {
            var detail = from i in db.Product
                        where i.id_product == id
                        select i;
            return View(detail.FirstOrDefault());
        }
    }
}