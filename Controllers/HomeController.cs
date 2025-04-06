using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using brc_mvc.Models;

namespace brc_mvc.Controllers;

public class HomeController : Controller
{
    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Privacy()
    {
        return View();
    }

    
}
