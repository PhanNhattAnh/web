using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication5.Models
{
    public class GioHang
    {
        dbQuanLyLapTopDataContext db = new dbQuanLyLapTopDataContext();
        public string iMaLT { set; get; }
        public string sTenLT { set; get; }
        public string sAnhBia { set; get; }
        public double dDonGia { set; get; }
        public int iSoLuong { set; get; }
        public double dThanhTien
        {
            get { return iSoLuong * dDonGia; }

        }
        public GioHang(string MaSach)
        {
            iMaLT = MaSach;
            SanPham sach = db.SanPhams.Single(s => s.MaSP == iMaLT);
            sTenLT = sach.TenSP;
            sAnhBia = sach.AnhBia;
            dDonGia = double.Parse(sach.GiaBan.ToString());
            iSoLuong = 1;
        }
    }
}