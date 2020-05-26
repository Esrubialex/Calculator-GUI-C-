using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
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
using System.Windows.Threading;

namespace Calculadora
{
    /// <summary>
    /// Lógica de interacción para MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        string formula = "";
        string lastOperator;
        bool igualado = false;

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Add_Num(object sender, RoutedEventArgs e)
        {
            if (resultado.Text == "0")
            {
                igualado = false;
                resultado.Text = ((Button)sender).Content.ToString();
            }
            else if (igualado)
            {
                formula = "";
                resultado.Text = ((Button)sender).Content.ToString();
                anteriorResultado.Text = formula;
                igualado = false;
                
            }
            else
            {
                resultado.Text += ((Button)sender).Content.ToString();
            }

        }

        public static double Evaluate(string expression)
        {
            System.Data.DataTable table = new System.Data.DataTable();
            table.Columns.Add("expression", string.Empty.GetType(), expression);
            System.Data.DataRow row = table.NewRow();
            table.Rows.Add(row);
            return double.Parse((string)row["expression"]);
        }

        private void AddFormula(object sender, RoutedEventArgs e)
        {
            lastOperator = ((Button)sender).Tag.ToString();
            formula += $" {resultado.Text} {lastOperator}";
            anteriorResultado.Text = formula;
            resultado.Text = "0";
        }

        private void Igual(object sender, RoutedEventArgs e)
        {

            formula += $" {resultado.Text}";
            resultado.Text = Evaluate(formula).ToString();
            anteriorResultado.Text = formula;
            formula = "";
            igualado = true;

        }
        private void Borrar(object sender, RoutedEventArgs e)
        {
            resultado.Text = "0";
            anteriorResultado.Text = "";
            formula = "";
        }

        private void Border_MouseLeftButtonDown(object sender, MouseButtonEventArgs e)
        {
            DragMove();
        }

        private void Close(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }

        private void Minimize(object sender, RoutedEventArgs e)
        {
            WindowState = WindowState.Minimized;
        }

        private void MainWindow_OnActivated(object sender, EventArgs e)
        {
            //change the WindowStyle back to None, but only after the Window has been activated
            Dispatcher.BeginInvoke(DispatcherPriority.ApplicationIdle, new Action(() => WindowStyle = WindowStyle.None));
        }
    }
}
