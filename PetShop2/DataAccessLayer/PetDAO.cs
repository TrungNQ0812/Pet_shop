using Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataAccessLayer
{
    public class PetDAO
    {
        public static List<Pet> GetAllPets()
        {
            using var db = new PetShopContext();
            return db.Pets.ToList();
        } 

        public static Pet GetPetById(Item item)
        {
            using var db = new PetShopContext();
            return db.Pets.FirstOrDefault();
        }
    }
}
