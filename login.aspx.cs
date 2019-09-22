using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
public partial class login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source=LAPTOP-S17B413E\\SQLEXPRESS; initial catalog=sui; integrated security=true");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void loginUser_Click(object sender, EventArgs e)
    {
        SqlCommand cmd = new SqlCommand("loginU", con);
        cmd.CommandType = CommandType.StoredProcedure;

        cmd.Parameters.AddWithValue("@u_id", uname.Text);
        cmd.Parameters.AddWithValue("@u_pass", pwd.Text);

        con.Open();

        int user_count = (Int32)cmd.ExecuteScalar();

        con.Close();

        if (user_count == 1)
        {
            Response.Redirect("bloodReq.aspx");
            Response.Write("<script>alert('Login Successfully')</script>");
        }
        else
        {
            SqlCommand cmd2 = new SqlCommand("loginO", con);
            cmd2.CommandType = CommandType.StoredProcedure;

            cmd2.Parameters.AddWithValue("@u_id", uname.Text);
            cmd2.Parameters.AddWithValue("@u_pass", pwd.Text);

            con.Open();

            int user_count2 = (Int32)cmd2.ExecuteScalar();

            con.Close();

            if (user_count2 == 1)
            {
                Response.Redirect("bloodReq2.aspx");
                Response.Write("<script>alert('Login Successfully')</script>");
                
            }
            else
            {
                Response.Write("<script>alert('Login Failed')</script>");
            }
        }
    }
    protected void newUser_Click(object sender, EventArgs e)
    {
        Response.Redirect("register.aspx");
    }
    protected void newOrg_Click(object sender, EventArgs e)
    {
        Response.Redirect("register2.aspx");
    }
}