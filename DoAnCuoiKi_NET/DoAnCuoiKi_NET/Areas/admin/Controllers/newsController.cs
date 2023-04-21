using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Validation;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using DoAnCuoiKi_NET.Models;
using DoAnCuoiKi_NET.Help;

namespace DoAnCuoiKi_NET.Areas.admin.Controllers
{
    public class newsController : Controller
    {
        private SHMLYEntities db = new SHMLYEntities();

        // GET: admin/News
        public ActionResult Index()
        {
            return View(db.New.ToList());
        }


        // GET: admin/News/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            New news = db.New.Find(id);
            if (news == null)
            {
                return HttpNotFound();
            }
            return View(news);
        }

        // GET: admin/News/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: admin/News/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Create([Bind(Include = "id,name,img,description,detail,meta,hide,order,datebegin")] New news, HttpPostedFileBase img)
        {
            try
            {
                var path = "";
                var filename = "";
                if (ModelState.IsValid)
                {
                    if (img != null)
                    {
                        //filename = Guid.NewGuid().ToString() + img.FileName;
                        filename = DateTime.Now.ToString("dd-MM-yy-hh-mm-ss-") + img.FileName;
                        path = Path.Combine(Server.MapPath("~/Content/upload/img/news"), filename);
                        img.SaveAs(path);
                        news.img = filename; //Lưu ý
                    }
                    else
                    {
                        news.img = "logo.png";
                    }
                    news.datebegin = Convert.ToDateTime(DateTime.Now.ToShortDateString());
                    news.meta = Functions.ConvertToUnSign(news.meta); //convert Tiếng Việt không dấu
                    db.New.Add(news);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
            }
            catch (DbEntityValidationException e)
            {
                throw e;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return View(news);
        }

        // GET: admin/News/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            New news = db.New.Find(id);
            if (news == null)
            {
                return HttpNotFound();
            }
            return View(news);
        }

        // POST: admin/News/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        [ValidateInput(false)]
        public ActionResult Edit([Bind(Include = "id,name,img,description,detail,meta,hide,order,datebegin")] New news, HttpPostedFileBase img)
        {
            try
            {
                var path = "";
                var filename = "";
                New temp = getById(news.id_new);
                if (ModelState.IsValid)
                {
                    if (img != null)
                    {
                        //filename = Guid.NewGuid().ToString() + img.FileName;
                        filename = DateTime.Now.ToString("dd-MM-yy-hh-mm-ss-") + img.FileName;
                        path = Path.Combine(Server.MapPath("~/Content/upload/img/news"), filename);
                        img.SaveAs(path);
                        temp.img = filename; //Lưu ý
                    }
                    // temp.datebegin = Convert.ToDateTime(DateTime.Now.ToShortDateString());                   
                    temp.name_new = news.name_new;
                    temp.description = news.description;
                    temp.detail = news.detail;
                    temp.meta = Functions.ConvertToUnSign(news.meta); //convert Tiếng Việt không dấu
                    temp.hide = news.hide;
                    temp.order = news.order;
                    db.Entry(temp).State = EntityState.Modified;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
            }
            catch (DbEntityValidationException e)
            {
                throw e;
            }
            catch (Exception ex)
            {
                throw ex;
            }

            return View(news);
        }

        public New getById(long id)
        {
            return db.New.Where(x => x.id_new == id).FirstOrDefault();

        }
        // GET: admin/News/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            New news = db.New.Find(id);
            if (news == null)
            {
                return HttpNotFound();
            }
            return View(news);
        }

        // POST: admin/News/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            New news = db.New.Find(id);
            db.New.Remove(news);
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
