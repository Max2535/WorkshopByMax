using Microsoft.AspNetCore.Mvc;
using System.Reflection;
using System.Text;

namespace BuildingBlocks.Controllers
{
    public class HomeController : Controller
    {
        [HttpGet]
        public ActionResult Index()
        {
            StringBuilder oSb = new StringBuilder();
            oSb.AppendLine($"");
            oSb.AppendLine($"<h1>{Assembly.GetExecutingAssembly().GetName().Name} v{Assembly.GetEntryAssembly().GetName().Version}</h1>");
            return new ContentResult
            {
                ContentType = "text/html",
                Content = oSb.ToString()
            };
        }
    }
}
