using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iccworldcupdbms
{
	public partial class teamsplayer : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

			SqlCommand command = new SqlCommand();
			SqlDataAdapter adapter = new SqlDataAdapter();
			DataSet ds = new DataSet();
			int i = 0;
			string sql = null;
		//	string connetionString = "Data Source=.;Initial Catalog=pubs;User ID=sa;Password=*****";
			SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True");
			connection.Open();
			command.Connection = connection;
			command.CommandType = CommandType.StoredProcedure;
			command.CommandText = "Selectteamplaye";
			adapter = new SqlDataAdapter(command);
			command.Parameters.Add("@coutryname", SqlDbType.VarChar).Value = "PAKISTAN";
			adapter.Fill(ds);
			connection.Close();
			GridView1.DataSource = ds.Tables[0];
			GridView1.DataBind();
		}
		
	}
}