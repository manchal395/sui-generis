using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class bloodReq2 : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source=LAPTOP-S17B413E\\SQLEXPRESS; initial catalog=sui; integrated security=true");

    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("bloodReq.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        bloodg.Enabled = true;
        bloodg.Visible = true;
        Label2.Text = "Choose blood group to be updated";
        Label3.Visible = true;
        TextBox1.Visible = true;
        TextBox1.Enabled = true;
        Button3.Visible = true;
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        String qry2 = "";
        switch (bloodg.Text)
        {
            case "A+": qry2 = "update org_log set apos=@unit"; break;
            case "A-": qry2 = "update org_log set aneg=@unit"; break;
            case "B+": qry2 = "update org_log set bpos=@unit"; break;
            case "B-": qry2 = "update org_log set bneg=@unit"; break;
            case "AB+": qry2 = "update org_log set abpos=@unit"; break;
            case "AB-": qry2 = "update org_log set abneg=@unit"; break;
            case "O+": qry2 = "update org_log set opos=@unit"; break;
            case "O-": qry2 = "update org_log set oneg=@unit"; break;
        }
        SqlCommand cmd2 = new SqlCommand(qry2, con);
        cmd2.Parameters.AddWithValue("@unit", TextBox1.Text);
        con.Open();
        int i = cmd2.ExecuteNonQuery();
        con.Close();
        if (i != 0)
        {
            Response.Write("<script>alert('Value updated successfully')</script>");
            bloodg.Enabled = false;
            bloodg.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
            TextBox1.Visible = false;
            Button3.Visible = false;
        }
    }
}