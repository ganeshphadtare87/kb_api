using kb_bll.Models;
using kb_bll.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace kb_bll.Services
{
    public class CategoryService : ICategoryService
    {
        KharidoBechoContext db = new KharidoBechoContext();

        public List<CategoryVM> GetCategories()
        {
            var categoryList = (from c in db.Category
                                select c).ToList();

            List<CategoryVM> catList = new List<CategoryVM>();

            foreach(var cat in categoryList)
            {
                catList.Add(new CategoryVM { CategoryId = cat.CategoryId, CategoryName = cat.CategoryName, Description = cat.Description, ParentCatId = cat.ParentCatId});
            }

            return catList;
        }
    }
}
