using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication5.Models;

namespace WebApplication5.Controllers
{
    public class SearchController : Controller
    {
        // GET: Search
       
            QLLTDBContext db = new QLLTDBContext();
        DataClasses1DataContext s = new DataClasses1DataContext();
            public ActionResult Index()
            {
                return View();
            }
            public ActionResult Search(string sTuKhoa)
            {
            ViewBag.DanhMuc = db.danhmucs.ToList();
            var lstSP = s.sanphams.Where(n => n.ten_sp.Contains(sTuKhoa));
                return View(lstSP.OrderBy(s => s.ten_sp));
            }
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            SanPham sanPham = db.sanphams.Find(id);
            if (sanPham == null)
            {
                return HttpNotFound();
            }
            return View(sanPham);
        }

    }
}