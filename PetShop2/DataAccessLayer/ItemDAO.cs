using Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class ItemDAO
    {
        public static Item getItemByID(int Id)
        {
            using var db = new PetShopContext();
            return db.Items.FirstOrDefault(c => c.ItemId == Id);
        }

        public static List<Item> getAllItems()
        {
            using var db = new PetShopContext();
            return db.Items.ToList();
        }
    }
}
