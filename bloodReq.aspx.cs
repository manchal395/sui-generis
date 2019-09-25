using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
public partial class bloodReq : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("data source=LAPTOP-S17B413E\\SQLEXPRESS; initial catalog=sui; integrated security=true");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void showRes_Click(object sender, EventArgs e)
    {
        String qry = "select name, bg, email, city, phone from my_log where city=@city and bg=@bg";
        SqlCommand cmd = new SqlCommand(qry, con);
        cmd.Parameters.AddWithValue("@city", incity.Text);
        cmd.Parameters.AddWithValue("@bg", bloodg.Text);
        con.Open();
        SqlDataReader dr = cmd.ExecuteReader();
        GridView1.DataSource = dr;
        GridView1.DataBind();
        con.Close();

        String qry2 = "";
        switch (bloodg.Text)
        {
            case "A+": qry2 = "select orgname, orgemail, orgcity, orgphone from org_log where orgcity=@city and CAST(apos as int)>0"; break;
            case "A-": qry2 = "select orgname, orgemail, orgcity, orgphone from org_log where orgcity=@city and CAST(aneg as int)>0"; break;
            case "B+": qry2 = "select orgname, orgemail, orgcity, orgphone from org_log where orgcity=@city and CAST(bpos as int)>0"; break;
            case "B-": qry2 = "select orgname, orgemail, orgcity, orgphone from org_log where orgcity=@city and CAST(bneg as int)>0"; break;
            case "AB+": qry2 = "select orgname, orgemail, orgcity, orgphone from org_log where orgcity=@city and CAST(abpos as int)>0"; break;
            case "AB-": qry2 = "select orgname, orgemail, orgcity, orgphone from org_log where orgcity=@city and CAST(abneg as int)>0"; break;
            case "O+": qry2 = "select orgname, orgemail, orgcity, orgphone from org_log where orgcity=@city and CAST(opos as int)>0"; break;
            case "O-": qry2 = "select orgname, orgemail, orgcity, orgphone from org_log where orgcity=@city and CAST(oneg as int)>0"; break;
        }
        SqlCommand cmd2 = new SqlCommand(qry2, con);
        cmd2.Parameters.AddWithValue("@city", incity.Text);
  
        con.Open();
        SqlDataReader dr2 = cmd2.ExecuteReader();
        GridView2.DataSource = dr2;
        GridView2.DataBind();
        con.Close();
    }

    protected void GridView1_SelectedIndexChanged(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            String em = GridView1.Rows[index].Cells[3].Text;
           MailMessage msg=new MailMessage();
           MailAddress frm = new MailAddress("#email", "Admin");
           msg.From = frm;
           MailAddress to = new MailAddress(em);
           msg.To.Add(to);
           msg.Subject = "Blood Required";
           msg.Body = "Contact the given number to donate blood " + Phone.Text;
           SmtpClient smtp = new SmtpClient();
           smtp.Host = "smtp.gmail.com";
           smtp.Port = 587;
           NetworkCredential nkc = new NetworkCredential("#email ", "#pwd");
           smtp.Credentials = nkc;
           smtp.EnableSsl = true;
           try
           {
               smtp.Send(msg);
               Label3.Text = "Email Sent Successfully";
           }
           catch (Exception ex)
           {
               Label3.Text = ex.Message;
           }
        }
    }

    protected void GridView2_SelectedIndexChanged(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            int index = Convert.ToInt32(e.CommandArgument);
            String em = GridView2.Rows[index].Cells[2].Text;
            
            MailMessage msg=new MailMessage();
           MailAddress frm = new MailAddress("#email", "Admin");
           msg.From = frm;
           MailAddress to = new MailAddress(em);
           msg.To.Add(to);
           msg.Subject = "Blood Required";
           msg.Body = "Contact the given number to donate blood " + Phone.Text;
           SmtpClient smtp = new SmtpClient();
           smtp.Host = "smtp.gmail.com";
           smtp.Port = 587;
           NetworkCredential nkc = new NetworkCredential("#email", "#pwd");
           smtp.Credentials = nkc;
           smtp.EnableSsl = true;
           try
           {
               smtp.Send(msg);
               Label3.Text = "Email Sent Successfully";
           }
           catch (Exception ex)
           {
               Label3.Text = ex.Message;
           }
        
        }
    }
}
