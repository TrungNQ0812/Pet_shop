using Microsoft.Identity.Client;
using Repositories;
using Repositories.Models;
using Services;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace PetShopWPF
{
    /// <summary>
    /// Interaction logic for LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        private readonly AccountServices accountServices;
        public LoginWindow()
        {
            InitializeComponent();
            accountServices = new AccountServices();
        }

        private void LoginWindow_Load(object sender, RoutedEventArgs e)
        {
            
        }

        private void gotoRegister_Click(object sender, RoutedEventArgs e)
        {
            RegisterWindow registerWindow = new RegisterWindow();
            this.Close();
            registerWindow.Show();
        }

        private void LoadData()
        {
            AccountServices accServices = new AccountServices();
            List<Account> accounts = accServices.GetAllAccounts(); // Giả sử bạn có phương thức này để lấy danh sách tài khoản
            accountDataGrid.ItemsSource = accounts;
        }

        private void Cancel_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Login_Click(object sender, RoutedEventArgs e)
        {
            Account account = accountServices.GetAccountByEmail(txtUsername.Text);


            if (account != null && account.Email.Equals(txtUsername.Text)
            && account.Password.Equals(txtPassword.Password))
            {
                if (account.AccountType == 0)
                {
                    // Điều hướng tới cửa sổ admin
                    AdminWindow adminWindow = new AdminWindow();
                    this.Hide();
                    MessageBox.Show("Đăng nhập thành công bằng tài khoản admin!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information);
                    adminWindow.Show();
                }
                if (account.AccountType == 1)
                {
                    // Điều hướng tới cửa sổ customer
                    CustomerWindow customerWindow = new CustomerWindow();
                    this.Hide();
                    MessageBox.Show("Đăng nhập thành công bằng tài khoản khách!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information);
                    customerWindow.Show();
                }
            }
            else
            {
                MessageBox.Show("Tên đăng nhập hoặc mật khẩu không đúng.", "Lỗi", MessageBoxButton.OK, MessageBoxImage.Error);
            }

        }



    }
}
