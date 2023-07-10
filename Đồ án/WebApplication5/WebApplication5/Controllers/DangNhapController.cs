using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication5.Controllers;
using WebApplication5.Models;
using System.Data.SqlClient;

namespace WebApplication5.Controllers
{
    public class DangNhapController : Controller
    {
        dbQuanLyLapTopDataContext db = new dbQuanLyLapTopDataContext();
        // GET: DangNhap
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult DangKy()
        {
            return View();
        }
        [HttpPost]
        public ActionResult DangKy(KhachHang kh, FormCollection f)
        {
            
            var hoten = f["HotenKH"];
            var tendn = f["TenDN"];
            var matkhau = f["Matkhau"];
            var rematkhau = f["ReMatkhau"];
            var dienthoai = f["Dienthoai"];
            var diachi = f["Diachi"];
           

            if (String.IsNullOrEmpty(hoten))
            {
                ViewData["Loi1"] = "Họ tên không bỏ trống";
            }
            if (String.IsNullOrEmpty(tendn))
            {
                ViewData["Loi2"] = "Tên đăng nhập không bỏ trống";
            }
            if (String.IsNullOrEmpty(matkhau))
            {
                ViewData["Loi3"] = "Vui lòng nhập mật khẩu";
            }
            if (String.IsNullOrEmpty(rematkhau))
            {
                ViewData["Loi4"] = "Vui lòng nhập mật khẩu";
            }
            if (String.IsNullOrEmpty(dienthoai))
            {
                ViewData["Loi5"] = "Vui lòng nhập số điện thoại";
            }
            if (!String.IsNullOrEmpty(hoten) && !String.IsNullOrEmpty(tendn) && !String.IsNullOrEmpty(matkhau) && !String.IsNullOrEmpty(rematkhau) && !String.IsNullOrEmpty(diachi) )
            {
                
                kh.TenKH = hoten;
                kh.DiaChi = diachi;
                kh.DienThoai = dienthoai;
                kh.TenTK = tendn;
                kh.MK = matkhau;
                db.KhachHangs.InsertOnSubmit(kh);
                db.SubmitChanges();
                return RedirectToAction("DangNhap", "DangNhap");
            }
            return View();
        }
        [HttpPost]
        public ActionResult DangNhap()
        {
            return View();
        }
        [HttpGet]
        public ActionResult DangNhap(FormCollection f)
        {
            var tendn = f["TenTK"];
            var matkhau = f["MK"];

            if (String.IsNullOrEmpty(tendn))
            {
                ViewData["Loi1"] = "Tên đăng nhập không bỏ trống";
            }
            if (String.IsNullOrEmpty(matkhau))
            {
                ViewData["Loi2"] = "Vui lòng nhập mật khẩu";
            }
            if (!String.IsNullOrEmpty(tendn) && !String.IsNullOrEmpty(matkhau))
            {
                KhachHang kh = db.KhachHangs.SingleOrDefault(c => c.TenTK == tendn && c.MK == matkhau);
                if (kh != null)
                {
                    ViewBag.TB = "Đăng nhập thành công!!!!";
                    Session["TenTK"] = kh;
                }
                else
                {
                    ViewBag.TB = "Sai tên DN hoặc MK, nhập lại";
                }
            }
            return View();
        }
    }
}