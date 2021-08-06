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
    public partial class previouworldcup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
			string firstname = Request.QueryString["p_id"];
			int id = Convert.ToInt32(firstname);
			SqlCommand command = new SqlCommand();
			SqlDataAdapter adapter = new SqlDataAdapter();
			DataSet ds = new DataSet();
			//	string connetionString = "Data Source=.;Initial Catalog=pubs;User ID=sa;Password=*****";
			SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True");
			connection.Open();
			command.Connection = connection;
			command.CommandType = CommandType.StoredProcedure;
			command.CommandText = "Selectworldcupforwhichhaveplayed";
			adapter = new SqlDataAdapter(command);
			command.Parameters.Add("@playerid", SqlDbType.Int).Value = id;
			adapter.Fill(ds);
			connection.Close();
			GridView1.DataSource = ds.Tables[0];
			GridView1.DataBind();
		}
    }
}