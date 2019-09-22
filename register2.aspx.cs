using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source=LAPTOP-S17B413E\\SQLEXPRESS; initial catalog=sui; integrated security=true");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void registerUser_Click(object sender, EventArgs e)
    {
        String qry = "insert into org_log values(@orgname,@orgid,@orgemail,@orgpwd,@apos,@aneg,@bpos,@bneg,@abpos,@abneg,@opos,@oneg,@orgcity,@orgstates,@orgpin,@orgphone)";
        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.Parameters.AddWithValue("@orgname", name.Text);
        cmd.Parameters.AddWithValue("@orgid", username.Text);
        cmd.Parameters.AddWithValue("@orgemail", emailid.Text);
        cmd.Parameters.AddWithValue("@orgpwd", password.Text);
        cmd.Parameters.AddWithValue("@apos", apos.Text);
        cmd.Parameters.AddWithValue("@aneg", aneg.Text);
        cmd.Parameters.AddWithValue("@bpos", bpos.Text);
        cmd.Parameters.AddWithValue("@bneg", bneg.Text);
        cmd.Parameters.AddWithValue("@abpos", abpos.Text);
        cmd.Parameters.AddWithValue("@abneg", abneg.Text);
        cmd.Parameters.AddWithValue("@opos", opos.Text);
        cmd.Parameters.AddWithValue("@oneg", oneg.Text);
        cmd.Parameters.AddWithValue("@orgcity", city.Text);
        cmd.Parameters.AddWithValue("@orgstates", state.Text);
        cmd.Parameters.AddWithValue("@orgpin", pin.Text);
        cmd.Parameters.AddWithValue("@orgphone", phone.Text);


        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i == 1)
        {
            Response.Redirect("login.aspx");
        }
    }
}