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

            // Map Product
            routes.MapRoute("Product", "{type}/{meta}",
            new { controller = "Product", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "san-pham" }
            },
            new[] { "DoAnCuoiKi_NET.Controllers" });

            // Map Detail
            routes.MapRoute("Detail", "{type}/{meta}/{id}",
            new { controller = "Product", action = "getDetail", id = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "san-pham" }
            },
            new[] { "DoAnCuoiKi_NET.Controllers" });

            //Map Contact
            routes.MapRoute("Contact", "{type}/{meta}",
            new { controller = "Contact", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "contact" }
            },
            new[] { "DoAnCuoiKi_NET.Controllers" });

            //Map Login
            routes.MapRoute("Login", "{type}/{meta}",
            new { controller = "Login", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "dang-nhap" }
            },
            new[] { "DoAnCuoiKi_NET.Controllers" });

            //Map Register
            routes.MapRoute("Register", "{type}/{meta}",
            new { controller = "Register", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "dang-ky" }
            },
            new[] { "DoAnCuoiKi_NET.Controllers" });

            //Map Payment
            routes.MapRoute("Payment", "{type}/{meta}",
            new { controller = "Payment", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "thanh-toan" }
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
