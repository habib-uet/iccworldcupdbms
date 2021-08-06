using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iccworldcupdbms
{
    public partial class regional : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!(string.IsNullOrEmpty(Request.QueryString["regions"])))
            {
                string firstname = Request.QueryString["regions"];
                Label1.Text = "PLAYER DOMESTIC T20 CARRER";
                int id = 0;
                id = Convert.ToInt32(firstname);
                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                string query = "select * from region_T_20 where region_id  ='" + id + "'"; // for int,bigint.
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
                Label1.Text = "PLAYER DO NOT HAVE REGION T20 CAREER";
            }
            if (!(string.IsNullOrEmpty(Request.QueryString["regions"])))
            {
                string firstname = Request.QueryString["regions"];
                Label1.Text = "PLAYER DOMESTIC ODI CARRER";
                int id = 0;
                id = Convert.ToInt32(firstname);
                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                string query = "select * from region_ODI where region_id  ='" + id + "'"; // for int,bigint.
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
                Label2.Text = "PLAYER DO NOT HAVE REGION ODI CAREER";
            }
            if (!(string.IsNullOrEmpty(Request.QueryString["regions"])))
            {
                string firstname = Request.QueryString["regions"];
                Label3.Text = "PLAYER DOMESTIC TEST CARRER";
                int id = 0;
                id = Convert.ToInt32(firstname);
                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                string query = "select * from region_test where region_id ='" + id + "'"; // for int,bigint.
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
                Label3.Text = "PLAYER DO NOT HAVE REGION TEST CAREER";
            }
            if (!(string.IsNullOrEmpty(Request.QueryString["regions"])))
            {
                SqlCommand command = new SqlCommand();
                SqlDataAdapter adapter = new SqlDataAdapter();
                DataSet ds = new DataSet();
                int i = 0;
                string sql = null;
                string firstname = Request.QueryString["regions"];
                Label4.Text = "REGION TEAM";
                int id = 0;
                id = Convert.ToInt32(firstname);
                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True");
                connection.Open();
                command.Connection = connection;
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "selectregionteam";
                adapter = new SqlDataAdapter(command);
                command.Parameters.Add("@regionid", SqlDbType.Int).Value = id;
                adapter.Fill(ds);
                connection.Close();
                GridView4.DataSource = ds.Tables[0];
                GridView4.DataBind();
            }

        }
    }
}