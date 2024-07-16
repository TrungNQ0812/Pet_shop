using DataAccessLayer;
using Microsoft.Identity.Client.NativeInterop;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Models.Models;

namespace PetShopWPF
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;
            Models.Models.Account check = DataAccessLayer.AccountDAO.GetAccountByUserName(username);
            if (check != null && username.Equals(check.Account1) && password.Equals(password)){
                if (check.AccountType == 0 )
                {
                    AdminWindow admin = new AdminWindow();
                    this.Hide();
                    MessageBox.Show("Đăng nhập thành công bằng tài khoản admin!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information);
                    admin.Show();
                }

                if (check.AccountType.Equals(1)){
                    // Điều hướng tới cửa sổ customer
                    CustomerWindow customerWindow = new CustomerWindow();
                    this.Hide();
                    MessageBox.Show("Đăng nhập thành công bằng tài khoản khách!", "Thành công", MessageBoxButton.OK, MessageBoxImage.Information);
                    customerWindow.Show();
                }
            }

        }
    }
}