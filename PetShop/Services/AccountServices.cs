using Repositories;
using Repositories.Models;
using System;
using System.Collections.Generic;

namespace Services
{
    public class AccountServices
    {
        private readonly AccountRepository AccRepo;

        public AccountServices()
        {
            AccRepo = new AccountRepository();
        }

        public List<Account> GetAllAccounts()
        {
            return AccRepo.GetAccounts();
        }

        public Account GetAccountByEmail(string email)
        {
            return AccRepo.GetAccountByEmail(email);
        }

        public void CreateAccount(Account acc)
        {
            AccRepo.CreateAccount(acc);
        }
    }
}
