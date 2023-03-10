using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace DoAnCuoiKi_NET
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute("Product", "{type}/{meta}",
            new { controller = "Product", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "san-pham" }
            },
            new[] { "DoAnCuoiKi_NET.Controllers" });

            routes.MapRoute("Detail", "{type}/{meta}/{id}",
            new { controller = "Product", action = "Detail", id = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "san-pham" }
            },
            new[] { "DoAnCuoiKi_NET.Controllers" });

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
        }
    }
}
