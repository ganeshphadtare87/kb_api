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
        ICategoryService categoryService;
        public CategoryController(ICategoryService categoryService) {
            this.categoryService = categoryService;
        }
        [HttpGet("getcategories")]
        public List<CategoryVM> GetCategories()
        {
            return this.categoryService.GetCategories();
        }
    }
}