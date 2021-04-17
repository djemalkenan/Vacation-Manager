using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Vacation_Manager1
{
    public partial class Groups : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserId"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            try
            {
                int i = 0;
                SqlConnection conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["VacationConnectionString"].ConnectionString);
                SqlCommand cmd = new SqlCommand("INSERT INTO dbo.[Group_Table] (UserName,Group-Leader,Project,LaunchDate,timestamp,Description,status)" +
                                                 " Values (@UserName,@Group-Leader,@Project,@LaunchDate,@timestamp,@Description,@status)", conn);

                cmd.Parameters.AddWithValue("@UserName", txtNames.Text);
                cmd.Parameters.AddWithValue("@Group-Leader", txtDate.Text);
                cmd.Parameters.AddWithValue("@Project", txtDate.Text);
                cmd.Parameters.AddWithValue("@LaunchDate", txtDate.Text);
                cmd.Parameters.AddWithValue("@timestamp",  DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss"));
                cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                cmd.Parameters.AddWithValue("@status", chkStatus.Checked);
                
                try
                {
                    conn.Open();
                    i = cmd.ExecuteNonQuery();

                }
                catch (Exception ex)
                {

                }
                finally
                {
                    conn.Close();
                }

                if (i > 0 && chkStatus.Checked)
                {

                    cmd = new SqlCommand("INSERT INTO dbo.[Group_Table]([UserName],[Group-Leader],[Project],[LaunchDate],[timestamp],[Description],[status]) Values (@UserName,@Group-Leader,@Project,@LaunchDate,@timestamp,@Description,@status)", conn);

                    cmd.Parameters.Clear();
                    cmd.Parameters.AddWithValue("@UserName", txtNames.Text);
                    cmd.Parameters.AddWithValue("@Group-Leader", txtDate.Text);
                    cmd.Parameters.AddWithValue("@Project", DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss"));
                    cmd.Parameters.AddWithValue("@LaunchDate", txtDate1.Text);
                    cmd.Parameters.AddWithValue("@timestamp", DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss"));
                    cmd.Parameters.AddWithValue("@Description", txtDescription.Text);
                    cmd.Parameters.AddWithValue("@status", chkStatus.Checked);
                    try
                    {
                        conn.Open();
                        i = cmd.ExecuteNonQuery();

                    }
                    catch (Exception ex)
                    {
                        Response.Write(ex.Message);
                    }
                    finally
                    {
                        conn.Close();
                    }
                }
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}