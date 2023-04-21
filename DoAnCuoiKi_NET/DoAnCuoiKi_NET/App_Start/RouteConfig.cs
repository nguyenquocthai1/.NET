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
            namespaces: new[] { "DoAnCuoiKi_NET.Controllers" });

            // Map Detail
            routes.MapRoute("Detail", "{type}/{meta}/{id}",
            new { controller = "Product", action = "getDetail", id = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "san-pham" }
            },
            namespaces: new[] { "DoAnCuoiKi_NET.Controllers" });

            //Map Contact
            routes.MapRoute("Contact", "{type}/{meta}",
            new { controller = "Contact", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "contact" }
            },
            namespaces: new[] { "DoAnCuoiKi_NET.Controllers" });

            //Map Login
            routes.MapRoute("Login", "{type}/{meta}",
            new { controller = "Login", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "dang-nhap" }
            },
            namespaces: new[] { "DoAnCuoiKi_NET.Controllers" });

            //Map Register
            routes.MapRoute("Register", "{type}/{meta}",
            new { controller = "Register", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "dang-ky" }
            },
            namespaces: new[] { "DoAnCuoiKi_NET.Controllers" });

            //Map Cart
            routes.MapRoute("Cart", "{type}/{meta}",
            new { controller = "Cart", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "gio-hang" }
            },
            namespaces: new[] { "DoAnCuoiKi_NET.Controllers" });

            //Map Payment
            routes.MapRoute("Payment", "{type}/{meta}",
            new { controller = "Payment", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "thanh-toan" }
            },
            namespaces: new[] { "DoAnCuoiKi_NET.Controllers" });

            //Map News
            routes.MapRoute("News", "{type}/{meta}",
            new { controller = "News", action = "Index", meta = UrlParameter.Optional },
            new RouteValueDictionary
            {
                {"type", "tin-tuc" }
            },
            namespaces: new[] { "DoAnCuoiKi_NET.Controllers" });

            routes.MapRoute(
                name: "Home",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional },
                namespaces: new[] { "DoAnCuoiKi_NET.Controllers" }

            );
        }
    }
}
