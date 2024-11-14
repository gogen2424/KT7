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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace KT7.Pages
{
    /// <summary>
    /// Логика взаимодействия для ListView.xaml
    /// </summary>
    public partial class ListView : Page
    {
        public ListView()
        {
            InitializeComponent();
            Init();
        }

        public void Init()
        {
            var partners = Data.KT7_Stepanyan_georgyyEntities.GetContext().PartnerImport.ToList();

            var partner2 = (from partner in partners
                            join product in Data.KT7_Stepanyan_georgyyEntities.GetContext().MasterProductImport
                            on partner.Id equals product.IdPartner
                            group product by partner into g
                            select new
                            {
                                Partner = g.Key,
                                Discount = CalculateDiscount(g.Sum(d => d.ProductNum))

                            }).ToList();

            MasterListView.ItemsSource = partner2;

        }
        private int CalculateDiscount(int totalCount)
        {
            if (totalCount < 10000) return 0;
            if (totalCount <= 50000 && totalCount > 10000) return 5;
            if (totalCount >= 50000 && totalCount < 3000000) return 10;
            return 15;
        }

        private void AddButton_Click(object sender, RoutedEventArgs e)
        {
            Classes.Manager.MainFrame.Navigate(new Pages.AddEdit());
        }

        private void Delete_Click(object sender, RoutedEventArgs e)
        {

        }

        private void Edit_Click(object sender, RoutedEventArgs e)
        {
            Button editButton = sender as Button;
            var PartnerData = editButton as dynamic;
            if(PartnerData == null)
            {
                var partner = (PartnerData as dynamic).Partner;
                Classes.Manager.MainFrame.Navigate(new Pages.AddEdit());
            }
              

        }
    }
}
