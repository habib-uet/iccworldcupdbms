using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iccworldcupdbms
{
    public partial class clubsstats : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(Request.QueryString["club_test_id"])))
            {
                string firstname = Request.QueryString["club_test_id"];
                Label1.Text = "PLAYER CLUB TEST CARRER";
                int id = 0;
                id = Convert.ToInt32(firstname);
                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                string query = "select * from club_test where club_test_id ='" + id + "'"; // for int,bigint.
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                GridView3.DataSource = reader;
                GridView3.DataBind();
                connection.Close();
                reader.Close();
            }
            else
            {
                Label1.Text = "PLAYER DO NOT HAVE CLUB TEST CAREER";
            }
            if (!(string.IsNullOrEmpty(Request.QueryString["club_ODI"])))
            {
                string firstname = Request.QueryString["club_ODI"];
                Label1.Text = "PLAYER CLUB ODI CARRER";
                int id = 0;
                id = Convert.ToInt32(firstname);
                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                string query = "select * from club_ODI where club_ODI_id ='" + id + "'"; // for int,bigint.
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                GridView2.DataSource = reader;
                GridView2.DataBind();
                connection.Close();
                reader.Close();
            }
            else
            {
                Label1.Text = "PLAYER DO NOT HAVE CLUB ODI CAREER";
            }
            if (!(string.IsNullOrEmpty(Request.QueryString["club_T_20_id"])))
            {
                string firstname = Request.QueryString["club_T_20_id"];
                Label1.Text = "PLAYER CLUB T20 CARRER";
                int id = 0;
                id = Convert.ToInt32(firstname);
                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                string query = "select * from club_T_20 where club_T_20_id ='" + id + "'"; // for int,bigint.
                SqlCommand command = new SqlCommand(query, connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
                connection.Close();
                reader.Close();
            }
            else
            {
                Label1.Text = "PLAYER DO NOT HAVE CLUB T2O CAREER";
            }
        }
    }
}