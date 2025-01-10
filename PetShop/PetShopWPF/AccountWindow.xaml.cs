using Microsoft.Identity.Client.NativeInterop;
using Repositories;
using System;
using System.Collections.Generic;
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
    /// Interaction logic for AccountWindow.xaml
    /// </summary>
    public partial class AccountWindow : Window
    {
        private PetShopContext context = new PetShopContext();
        public AccountWindow()
        {
            InitializeComponent();
            Load_Page();
        }

        private void Load_Page()
        {
            lvEmployee.ItemsSource = context.Accounts.ToList();
        }

        private void btnLogout_Click(object sender, RoutedEventArgs e)
        {
            LoginWindow login = new LoginWindow();
            this.Close();
            login.Show();
        }

        private void lvEmployee_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (lvEmployee.SelectedItem is Account selected)
            {
                txtId.Text = selected.AccountId.ToString();
                txtName.Text = selected.UserName.ToString();
                txtEmail.Text = selected.E;
                txtPhone.Text = selected.PhoneNumber ?? string.Empty;
            }
        }

       
    }
}
