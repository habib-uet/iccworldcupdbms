using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iccworldcupdbms
{
    public partial class international_T20 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!(string.IsNullOrEmpty(Request.QueryString["T_20s"])))
                {
                    string firstname = Request.QueryString["T_20s"];
                    Label1.Text = "PLAYER INTERNATIONAL T2O BATTING CAREER";
                    int id = 0;
                    id = Convert.ToInt32(firstname);
                    SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                    string query = "select * from int_T_20 where T20_id ='" + id + "'"; // for int,bigint.
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
                    Label1.Text = "PLAYER DO NOT HAVE BATTING INTERNATIONAL T2O CAREER";
                }
                if (!(string.IsNullOrEmpty(Request.QueryString["T_20s"])))
                {
                    string firstname = Request.QueryString["T_20s"];
                    Label2.Text = "PLAYER  INTERNATIONAL T2O BOWLING CAREER";
                    int id = 0;
                    id = Convert.ToInt32(firstname);
                    SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                    string query = "select * from int_T_20 where T20_id ='" + id + "'"; // for int,bigint.
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
                    Label2.Text = "PLAYER DO NOT HAVE INTERNATIONAL T2O BOWLING CAREER";
                }
            }
            }
    }
}