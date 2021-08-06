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
    public partial class playerrecords : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string firstname = Request.QueryString["p_id"];
                int id = Convert.ToInt32(firstname);
                SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                string query = "select p_id,first_name,last_name,country,height,dob,debut_date from player where p_id ='" + id + "'"; // for int,bigint.
                SqlCommand command = new SqlCommand(query,connection);
                connection.Open();
                SqlDataReader reader = command.ExecuteReader();
                GridView1.DataSource = reader;
                GridView1.DataBind();
                connection.Close();
                SqlConnection connection9 = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True; MultipleActiveResultSets=True");
                string query9 = "select p_id from player where p_id ='" + id + "'"; // for int,bigint.
                SqlCommand command9 = new SqlCommand(query9, connection9);
                connection9.Open();
                SqlDataReader reader9 = command9.ExecuteReader();
                GridView9.DataSource = reader9;
                GridView9.DataBind();
                connection9.Close();
                reader9.Close();
                    SqlCommand command3 = new SqlCommand();
                    SqlDataAdapter adapter = new SqlDataAdapter();
                    DataSet ds = new DataSet();
                    int i = 0;
                    string sql = null;
                    //string connetionString = "Data Source=.;Initial Catalog=pubs;User ID=sa;Password=*****";
                    SqlConnection connection3 = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True ; MultipleActiveResultSets=True");
                    connection3.Open();
                    command3.Connection = connection3;
                    command3.CommandType = CommandType.StoredProcedure;
                    command3.CommandText = "Selectintt20";
                    adapter = new SqlDataAdapter(command3);
                    command3.Parameters.Add("@playerid", SqlDbType.Int).Value = id;
                   adapter.Fill(ds);
                GridView3.DataSource = ds.Tables[0];
                GridView3.DataBind();
                connection3.Close();
                SqlCommand command4 = new SqlCommand();
                SqlDataAdapter adapter4 = new SqlDataAdapter();
                DataSet ds4 = new DataSet();
                //string sql = null;
                //string connetionString = "Data Source=.;Initial Catalog=pubs;User ID=sa;Password=*****";
                SqlConnection connection4 = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True ; MultipleActiveResultSets=True");
                connection4.Open();
                command4.Connection = connection4;
                command4.CommandType = CommandType.StoredProcedure;
                command4.CommandText = "Selectodit20";
                adapter4 = new SqlDataAdapter(command4);
                command4.Parameters.Add("@playerid", SqlDbType.Int).Value = id;
                adapter4.Fill(ds4);
                GridView4.DataSource = ds4.Tables[0];
                GridView4.DataBind();

                connection4.Close();

                SqlCommand command5 = new SqlCommand();
                SqlDataAdapter adapter5 = new SqlDataAdapter();
                DataSet ds5 = new DataSet();
                //string sql = null;
                //string connetionString = "Data Source=.;Initial Catalog=pubs;User ID=sa;Password=*****";
                SqlConnection connection5 = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True ; MultipleActiveResultSets=True");
                connection5.Open();
                command5.Connection = connection5;
                command5.CommandType = CommandType.StoredProcedure;
                command5.CommandText = "Selecttest";
                adapter5 = new SqlDataAdapter(command5);
                command5.Parameters.Add("@playerid", SqlDbType.Int).Value = id;
                adapter5.Fill(ds5);
                GridView5.DataSource = ds5.Tables[0];
                GridView5.DataBind();

                SqlCommand command6 = new SqlCommand();
                SqlDataAdapter adapter6 = new SqlDataAdapter();
                DataSet ds6 = new DataSet();
                //string sql = null;
                //string connetionString = "Data Source=.;Initial Catalog=pubs;User ID=sa;Password=*****";
                SqlConnection connection6 = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True ; MultipleActiveResultSets=True");
                connection6.Open();
                command6.Connection = connection6;
                command6.CommandType = CommandType.StoredProcedure;
                command6.CommandText = "Selectregion";
                adapter6 = new SqlDataAdapter(command6);
                command6.Parameters.Add("@playerid", SqlDbType.Int).Value = id;
                adapter6.Fill(ds6);
                GridView6.DataSource = ds6.Tables[0];
                GridView6.DataBind();

                SqlCommand command7 = new SqlCommand();
                SqlDataAdapter adapter7 = new SqlDataAdapter();
                DataSet ds7 = new DataSet();
                //string sql = null;
                //string connetionString = "Data Source=.;Initial Catalog=pubs;User ID=sa;Password=*****";
                SqlConnection connection7 = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True ; MultipleActiveResultSets=True");
                connection7.Open();
                command7.Connection = connection7;
                command7.CommandType = CommandType.StoredProcedure;
                command7.CommandText = "Selectdomestic";
                adapter7 = new SqlDataAdapter(command7);
                command7.Parameters.Add("@playerid", SqlDbType.Int).Value = id;
                adapter7.Fill(ds7);
                GridView7.DataSource = ds7.Tables[0];
                GridView7.DataBind();

                SqlCommand command8 = new SqlCommand();
                SqlDataAdapter adapter8 = new SqlDataAdapter();
                DataSet ds8 = new DataSet();
                //string sql = null;
                //string connetionString = "Data Source=.;Initial Catalog=pubs;User ID=sa;Password=*****";
                SqlConnection connection8 = new SqlConnection(@"Data Source=DESKTOP-EQN8E2P\SQLSERVER;Initial Catalog=ICcWORLDCUPDBMS;Integrated Security=True ; MultipleActiveResultSets=True");
                connection8.Open();
                command8.Connection = connection7;
                command8.CommandType = CommandType.StoredProcedure;
                command8.CommandText = "Selectforclubs";
                adapter8 = new SqlDataAdapter(command8);
                command8.Parameters.Add("@playerid", SqlDbType.Int).Value = id;
                adapter8.Fill(ds8);
                GridView8.DataSource = ds8.Tables[0];
                GridView8.DataBind();
            }
            
        }
    }
}