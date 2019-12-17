using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using kb_bll.ViewModels;

namespace kb_bll.Services
{
    public interface ICategoryService
    {
        List<CategoryVM> GetCategories();
    }
}
