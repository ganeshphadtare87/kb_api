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
        public List<AdvertiseVM> SearchAdvertise(string SearchText)
        {
            List<AdvertiseVM> lstAd = new List<AdvertiseVM>();
            //SqlConnection con = new SqlConnection(AppSettings.GetConnectionString);
            //SqlCommand cmd = new SqlCommand("SP_SearchAdvertise", con);
            //cmd.CommandType = CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@SearchText", SearchText);
            //con.Open();
            //SqlDataReader dr = null;

            //dr = cmd.ExecuteReader();

            //while (dr.Read())
            //{
            //    lstAd.Add(new AdvertiseVM { AdvId = Convert.ToInt32(dr["Title"]), Title = dr["Title"].ToString(), Price = Convert.ToDouble(dr["Price"]) });
            //}

            var results = (from ad in db.Advertise
                           join cat in db.Category on ad.CategoryId equals cat.CategoryId
                           join cc in db.CategoryCar on ad.AdvId equals cc.AdvId
                           join f in db.Fuel on cc.Fuel equals f.Id
                           join l in db.Location on ad.LocationId equals l.LocationId
                           join cp in db.CategoryProperty on ad.AdvId equals cp.AdvId into categoryP
                           from cap in categoryP.DefaultIfEmpty()
                           where ad.Title.Contains(SearchText) ||
                                ad.Description.Contains(SearchText) ||
                                ad.Price.ToString().Contains(SearchText) ||
                                l.LocationName.Contains(SearchText) ||
                                cc.Brand.Contains(SearchText) ||
                                cc.Description.Contains(SearchText) ||
                                f.Fuel1.Contains(SearchText) ||
                                cc.Kmdriven.ToString().Contains(SearchText) ||
                                cc.Year.ToString().Contains(SearchText) ||
                                cap.Type.Contains(SearchText)
                           select ad).ToList();


            //foreach (var ad in results)
            //{
            //    lstAd.Add(new AdvertiseVM{ AdvId = ad.AdvId, Description = ad.Description, Price = Convert.ToDouble(ad.Price), DatePosted= Convert.ToDateTime(ad.DatePosted), Title = ad.Title});

            //}

            //var searchText = new SqlParameter("@SearchText", SearchText);
            ////var AdList = db.Database.ExecuteSqlCommand($"SP_SearchAdvertise @SearchText", searchText);

            //System.Data.Common.DbConnection connection = db.Database.GetDbConnection();
            //SqlParameter param = new SqlParameter("@SearchText", SearchText);
            ////string con = connection.ConnectionString;
            //var command = connection.CreateCommand();
            //command.CommandType = CommandType.StoredProcedure;
            //command.CommandText = "SP_SearchAdvertise";
            //command.Parameters.Add(param);


            //System.Data.Common.DbDataReader dr = command.ExecuteReader();

            //while (dr.Read()) {
            //    lstAd.Add( new AdvertiseVM { AdvId = Convert.ToInt32(dr["Title"]), Title = dr["Title"].ToString(), Price = Convert.ToDouble(dr["Price"]) });
            //}


            return lstAd;
        }

     
        public List<AdvertiseVM> GetAdvertise()
        {
            return new List<AdvertiseVM>();
        }
    }
}
