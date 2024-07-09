using Repositories.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repositories
{
    public class AccountRepository
    {
        private PetShopContext _context;

        public AccountRepository()
        {
            _context = new PetShopContext(); 
        }
        public List<Account> GetAccounts()
        {
            _context = new();
            return _context.Accounts.ToList();
        }
        public void AddAccount(Account account)
        {
            _context.Accounts.Add(account);
            _context.SaveChanges();
        }
        public Account GetAccountByEmail(string email)
        {
            return _context.Accounts.FirstOrDefault(a => a.Email == email);
        }

    }
}
