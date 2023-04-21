using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DoAnCuoiKi_NET.Models;

namespace DoAnCuoiKi_NET.Areas.admin.Controllers
{
    public class productsController : Controller
    {
        private SHMLYEntities db = new SHMLYEntities();

        // GET: admin/products
        public ActionResult Index()
        {
            var product = db.Product.Include(p => p.Category);
            return View(product.ToList());
        }

        // GET: admin/products/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Product.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // GET: admin/products/Create
        public ActionResult Create()
        {
            ViewBag.id_cate = new SelectList(db.Category, "id_cate", "name_cate");
            return View();
        }

        // POST: admin/products/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "id_product,id_cate,name_product,price,color,size,amount,sale_amount,discount,status,img,img1,img2,img3,img4,img5,detail,description,link,meta,hide,order,datebegin,meta_parent")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Product.Add(product);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.id_cate = new SelectList(db.Category, "id_cate", "name_cate", product.id_cate);
            return View(product);
        }

        // GET: admin/products/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Product.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            ViewBag.id_cate = new SelectList(db.Category, "id_cate", "name_cate", product.id_cate);
            return View(product);
        }

        // POST: admin/products/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "id_product,id_cate,name_product,price,color,size,amount,sale_amount,discount,status,img,img1,img2,img3,img4,img5,detail,description,link,meta,hide,order,datebegin,meta_parent")] Product product)
        {
            if (ModelState.IsValid)
            {
                db.Entry(product).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.id_cate = new SelectList(db.Category, "id_cate", "name_cate", product.id_cate);
            return View(product);
        }

        // GET: admin/products/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Product product = db.Product.Find(id);
            if (product == null)
            {
                return HttpNotFound();
            }
            return View(product);
        }

        // POST: admin/products/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Product product = db.Product.Find(id);
            db.Product.Remove(product);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
