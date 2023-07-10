using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication5.Models;

namespace WebApplication5.Controllers
{
    public class HomeController : Controller
    {
        // GET: Home
        dbQuanLyLapTopDataContext db = new dbQuanLyLapTopDataContext();
        public ActionResult Index()
        {
            return View();
        }

        
    }
}