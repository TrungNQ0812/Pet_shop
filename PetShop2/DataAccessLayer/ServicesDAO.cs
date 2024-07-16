using Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class ServicesDAO
    {
        public static List<Service> GetServices()
        {
            var db = new PetShopContext();
            try
            {
                return db.Services.ToList();

            }
            catch (Exception e)
            {

            }
            return db.Services.ToList();
        }
    }
}
