using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class register : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source=LAPTOP-S17B413E\\SQLEXPRESS; initial catalog=sui; integrated security=true");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void registerUser_Click(object sender, EventArgs e)
    {
        String qry = "insert into my_log values(@name, @id, @email,@pwd,@bg,@city,@states, @pin, @phone)";
        SqlCommand cmd = new SqlCommand(qry, con);

        cmd.Parameters.AddWithValue("@name", name.Text);
        cmd.Parameters.AddWithValue("@id", username.Text);
        cmd.Parameters.AddWithValue("@email", emailid.Text);
        cmd.Parameters.AddWithValue("@pwd", password.Text);
        cmd.Parameters.AddWithValue("@bg", blood.Text);
        cmd.Parameters.AddWithValue("@city", city.Text);
        cmd.Parameters.AddWithValue("@states", state.Text);
        cmd.Parameters.AddWithValue("@pin", pin.Text);
        cmd.Parameters.AddWithValue("@phone", phone.Text);

        con.Open();
        int i = cmd.ExecuteNonQuery();
        con.Close();
        if (i == 1)
        {
            Response.Redirect("login.aspx");
        }
    }
}