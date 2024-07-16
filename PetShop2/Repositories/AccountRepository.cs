using DataAccessLayer;
using Models.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Repositories
{
    public class AccountRepository : IAccountRepository
    {
        public Account GetAccountByID(int id) => AccountDAO.GetAccountByID(id); 
    }
}
