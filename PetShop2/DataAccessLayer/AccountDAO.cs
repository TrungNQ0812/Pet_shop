using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models.Models;

namespace DataAccessLayer
{
    public class AccountDAO
    {
        public static List<Account> GetAllAccount()
        {
            using var db = new PetShopContext();
            return db.Accounts.ToList();
        }

        public static Account GetAccountByUserName(string userName)
        {
            try
            {
                using var db = new PetShopContext();
                return db.Accounts.FirstOrDefault(c => c.Account1.Equals(userName));
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        public static void CreateAccount(Account acc)
        {
           
            try {
                using var db = new PetShopContext();
                db.Accounts.Add(acc);
                db.SaveChanges();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }

        public static void DeleteAccount(int ID)
        {
            using var db = new PetShopContext();
            try
            {
                var p1 = db.Accounts.SingleOrDefault(c => c.AccountId == ID);
                db.Accounts.Remove(p1);
                db.SaveChanges();
            }
            catch (Exception e)
            {

            }
        }

    }
}
