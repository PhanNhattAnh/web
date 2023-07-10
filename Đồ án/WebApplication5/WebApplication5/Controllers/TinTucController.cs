using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication5.Models;

namespace WebApplication5.Controllers
{
    public class TinTucController : Controller
    {
        //
        // GET: /TinTuc/
        dbQuanLyLapTopDataContext db = new dbQuanLyLapTopDataContext();
        public ActionResult TinTucPartial()
        {
            var ListTT = db.TinTucs.OrderBy(s => s.TieuDe).Take(30).ToList();
            return View(ListTT);
        }
        public ActionResult XemChiTietTT(string ms)
        {
            TinTuc tintuc = db.TinTucs.Single(s => s.MaTT == ms);
            if (tintuc == null)
            {
                return HttpNotFound();
            }
            return View(tintuc);
        }
	}
}