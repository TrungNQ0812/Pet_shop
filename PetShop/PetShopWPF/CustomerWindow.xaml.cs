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
    /// Interaction logic for CustomerWindow.xaml
    /// </summary>
    public partial class CustomerWindow : Window
    {
        private PetShopContext context = new PetShopContext();
        public CustomerWindow()
        {
            InitializeComponent();
            Load_Data();
        }

        private void Load_Data()
        {
            lvItems.ItemsSource = context.Items.ToList();
            lvService.ItemsSource = context.Services.ToList();
        }
    }
}
