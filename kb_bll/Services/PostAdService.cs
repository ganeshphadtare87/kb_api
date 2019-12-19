using kb_bll.Models;
using kb_bll.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;

namespace kb_bll.Services
{
    public class PostAdService
    {
        KharidoBechoContext db = new KharidoBechoContext();

        public int PostCarAd(CategoryCarVM newCar)
        {
            //db.Advertise.FromSql("dbo.sp_PostAdCar", parameters: new[] { newAd.Title, newAd.Description, 
            //newAd.CategoryId, newAd.Price, newAd.LocationId, newCar.Brand, newCar.Year, newCar.Fuel, newCar.Kmdriven });
            var newCarAd = new Advertise()
            {
                Title = newCar.Title, Description = newCar.Description, CategoryId = newCar.CategoryId, 
                Price = Convert.ToDecimal(newCar.Price),LocationId = newCar.LocationId
            };

            db.Advertise.Add(newCarAd);
            db.SaveChanges();
            int newAdID = newCarAd.AdvId;

            var newCarAdCat = new CategoryCar()
            {
                AdvId = newAdID, Brand = newCar.Brand, Year = newCar.Year, Fuel =  newCar.Fuel, Kmdriven =  newCar.Kmdriven
            };

            db.CategoryCar.Add(newCarAdCat);
            db.SaveChanges();

            return newCarAdCat.Id;
        }

        public int PostPropertyAd(CategoryPropertyVM newProp)
        {
            var newPropAd = new Advertise()
            {
                Title = newProp.Title,
                Description = newProp.Description,
                CategoryId = newProp.CategoryId,
                Price = Convert.ToDecimal(newProp.Price),
                LocationId = newProp.LocationId

            };

            db.Advertise.Add(newPropAd);
            db.SaveChanges();
            int newAdID = newPropAd.AdvId;

            var newPropCat = new CategoryProperty()
            {
                AdvId = newAdID, Type = newProp.Type, Bedrooms = newProp.Bedrooms, Bathrooms = newProp.Bathrooms,
                Furnishing = newProp.Furnishing, Construction = newProp.Construction, ListedBy = newProp.ListedBy,
                BuiltupArea = newProp.BuiltupArea, CarpetArea = newProp.CarpetArea, Maintenance = newProp.Maintenance,
                TotalFloors = newProp.TotalFloors, FloorNo = newProp.FloorNo, CarParking = newProp.CarParking,
                VastuCompliant = newProp.VastuCompliant, MealInclude = newProp.MealInclude, PropertyType = newProp.PropertyType
            };

            db.CategoryProperty.Add(newPropCat);
            db.SaveChanges();

            return newPropCat.Id;
        }
    }
}
