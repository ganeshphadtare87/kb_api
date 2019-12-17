using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using kb_bll;
using kb_bll.Services;
using kb_bll.ViewModels;

namespace kb_api.Controllers
{
    [ApiController]
    [Route("[controller]")]
    public class CategoryController : Controller
    {
        [HttpGet("getcategories")]
        public List<CategoryVM> GetCategories()
        {
            CategoryService catService = new CategoryService();

            return catService.GetCategories();
        }
    }
}