using kb_bll.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.EntityFrameworkCore;
using System.Data.SqlClient;
using System.Data;
using kb_bll.ViewModels;
using kb_bll.Common;

namespace kb_bll.Services
{
    public class AdvertiseService : IAdvertiseService
    {
        KharidoBechoContext db = new KharidoBechoContext();
        public List<AdvertiseTileVM> SearchAdvertise(string SearchText)
        {

            List<AdvertiseTileVM> adTileLst = new List<AdvertiseTileVM>();

            var results = (from ad in db.Advertise
                           join cat in db.Category on ad.CategoryId equals cat.CategoryId
                           join cc in db.CategoryCar on ad.AdvId equals cc.AdvId into CategoryC
                           from car in CategoryC.DefaultIfEmpty()
                           join f in db.Fuel on car.Fuel equals f.Id into fuelLeft
                           from tempFuel in fuelLeft.DefaultIfEmpty()
                           join cp in db.CategoryProperty on ad.AdvId equals cp.AdvId into categoryP
                           from cap in categoryP.DefaultIfEmpty()
                           join l in db.Location on ad.LocationId equals l.LocationId into locationLeft
                           from loc in locationLeft.DefaultIfEmpty()
                           join i in db.Images on ad.AdvId equals i.AdvId into imagesLeft
                           from img in imagesLeft.DefaultIfEmpty()
                           where ad.Title.Contains(SearchText) ||
                                ad.Description.Contains(SearchText) ||
                                ad.Price.ToString().Contains(SearchText) ||
                                car.Brand.Contains(SearchText) ||
                                car.Description.Contains(SearchText) ||
                                tempFuel.Fuel1.Contains(SearchText) ||
                                car.Kmdriven.ToString().Contains(SearchText) ||
                                car.Year.ToString().Contains(SearchText) ||
                                cap.Type.Contains(SearchText) 
                           select new
                           {
                               ad.AdvId,
                               Title = ad.Title,
                               price = ad.Price,
                               cat.CategoryId,
                               car.Kmdriven ,
                               car.Year,
                               img.ImageUrl,
                               cap.Bathrooms,
                               cap.Bedrooms,
                               cap.BuiltupArea
                               //cap.CarParking,
                               //cap.Construction,
                               //cap.Furnishing,
                               //cap.ListedBy,
                               //cap.Maintenance,
                               //cap.MealInclude,
                               //cap.PropertyType,
                               //cap.TotalFloors,
                               //cap.Type,
                               //cap.VastuCompliant,

                           }
            ).ToList();


            foreach (var ad in results)
            {
                adTileLst.Add(new AdvertiseTileVM 
                { 
                    AdvID = ad.AdvId, Price = Convert.ToDouble(ad.price), Title = ad.Title,
                    TileLine1 = (ad.CategoryId == 1 ? 
                    (ad.Bedrooms + "-" + ad.Bathrooms + "-" + ad.BuiltupArea) : 
                    (ad.Year +"-"+ ad.Kmdriven)),
                    ImageUrl = ad.ImageUrl
                });
            }

            return adTileLst;
        }

     
        public List<AdvertiseTileVM> GetAllAdvertises()
        {
            List<AdvertiseTileVM> adTileLst = new List<AdvertiseTileVM>();

            var results = (from ad in db.Advertise
                           join cat in db.Category on ad.CategoryId equals cat.CategoryId
                           join cc in db.CategoryCar on ad.AdvId equals cc.AdvId into CategoryC
                           from car in CategoryC.DefaultIfEmpty()
                           join f in db.Fuel on car.Fuel equals f.Id into fuelLeft
                           from tempFuel in fuelLeft.DefaultIfEmpty()
                           join cp in db.CategoryProperty on ad.AdvId equals cp.AdvId into categoryP
                           from cap in categoryP.DefaultIfEmpty()
                           join l in db.Location on ad.LocationId equals l.LocationId into locationLeft
                           from loc in locationLeft.DefaultIfEmpty()
                           join i in db.Images on ad.AdvId equals i.AdvId into imagesLeft
                           from img in imagesLeft.DefaultIfEmpty()
                           select new
                           {
                               ad.AdvId,
                               Title = ad.Title,
                               price = ad.Price,
                               cat.CategoryId,
                               car.Kmdriven,
                               car.Year,
                               img.ImageUrl,
                               cap.Bathrooms,
                               cap.Bedrooms,
                               cap.BuiltupArea
                           }
            ).ToList();


            foreach (var ad in results)
            {
                adTileLst.Add(new AdvertiseTileVM
                {
                    AdvID = ad.AdvId,
                    Price = Convert.ToDouble(ad.price),
                    Title = ad.Title,
                    TileLine1 = (ad.CategoryId == 1 ?
                    (ad.Bedrooms + "-" + ad.Bathrooms + "-" + ad.BuiltupArea) :
                    (ad.Year + "-" + ad.Kmdriven)),
                    ImageUrl = ad.ImageUrl
                });
            }
            return adTileLst;
        }
    }
}
