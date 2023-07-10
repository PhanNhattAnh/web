using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication5.Models;

namespace WebApplication5.Controllers
{
    public class LapTopController : Controller
    {
        // GET: LapTop
        dbQuanLyLapTopDataContext db = new dbQuanLyLapTopDataContext();
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult TrangChu()
        {
            var ListS = db.SanPhams.OrderBy(s => s.TenSP).Take(30).ToList();
            return View(ListS);
        }
        public ActionResult XemChiTiet(string ms)
        {
            SanPham laptop = db.SanPhams.Single(s => s.MaSP == ms);
            if (laptop == null)
            {
                return HttpNotFound();
            }
            return View(laptop);
        }
        public ActionResult LienHe()
        {
            return View();
        }
        public ActionResult SanPhamPartial_LT()
        {
            var ListLapTop = db.Loais.Where(sp => sp.Note == "Lap").OrderBy(s => s.TenLoai).Take(3).ToList();
            return View(ListLapTop);
        }
        public ActionResult SanPhamPartial_PK()
        {
            var ListLapTop = db.Loais.Where(sp => sp.Note == "PK").OrderBy(s => s.TenLoai).Take(3).ToList();
            return View(ListLapTop);
        }
        public ActionResult SanPhamTheoLoai(int maLoai)
        {
            var ListSPTheoLoai = db.SanPhams.Where(sp => sp.MaLoai == maLoai).OrderBy(sp => sp.GiaBan).ToList();
            if (ListSPTheoLoai.Count == 0)
                ViewBag.ThongBao = "Không có sản phẩm này!";
            return View(ListSPTheoLoai);
        }
    }
}