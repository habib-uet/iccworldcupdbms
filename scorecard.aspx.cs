using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iccworldcupdbms
{
    public partial class scorecard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!(string.IsNullOrEmpty(Request.QueryString["sc_id"])))
                {
                    string firstname = Request.QueryString["sc_id"];
                    Label1.Text = "MATCH STATISTICS";
                    int id = 0;
                    id = Convert.ToInt32(firstname);
                    SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                    string query = "select * from scorecard where sc_id = '" + id + "'"; // for int,bigint.
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
                    Label1.Text = "MATCH IS NOT PLAYED YET";
                }
                if (!(string.IsNullOrEmpty(Request.QueryString["sc_id"])))
                {
                    string firstname = Request.QueryString["sc_id"];
                    Label1.Text = "MATCH STATISTICS";
                    int id = 0;
                    id = Convert.ToInt32(firstname);
                    SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                    string query = "select * from scorecard where sc_id = '" + id + "'"; // for int,bigint.
                    SqlCommand command = new SqlCommand(query, connection);
                    connection.Open();
                    SqlDataReader reader = command.ExecuteReader();
                    GridView2.DataSource = reader;
                    GridView2.DataBind();
                    connection.Close();
                    reader.Close();
                }
            }
        }
    }
}