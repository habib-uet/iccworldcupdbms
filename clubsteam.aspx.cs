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
    public partial class clubsteam : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(string.IsNullOrEmpty(Request.QueryString["team_id"])))
            {
                SqlCommand command = new SqlCommand();
                SqlDataAdapter adapter = new SqlDataAdapter();
                DataSet ds = new DataSet();
                int i = 0;
                string sql = null;
                string firstname = Request.QueryString["team_id"];
                Label1.Text = "CLUB TEAM";
                int id = 0;
                id = Convert.ToInt32(firstname);
                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True");
                connection.Open();
                command.Connection = connection;
                command.CommandType = CommandType.StoredProcedure;
                command.CommandText = "selectclubteam";
                adapter = new SqlDataAdapter(command);
                command.Parameters.Add("@temid", SqlDbType.Int).Value = id;
                adapter.Fill(ds);
                connection.Close();
                GridView1.DataSource = ds.Tables[0];
                GridView1.DataBind();
            }
        }
    }
}