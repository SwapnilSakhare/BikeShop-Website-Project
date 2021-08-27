using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    String l1, l2;
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["logid"] = null;
    }
    protected void logincust_Click(object sender, EventArgs e)
    {
        l1 = ucontact.Text.ToString().Trim();
        l2 = upassword.Text.ToString().Trim();
        if(l1!="" && l2!="")
        {
            if (l1.Equals("1111111111") && l2.Equals("11111111"))
            {
                Session["logid"] = l1;
                Response.Redirect("admhome.aspx");

            }
            else {
            submitcustdetails(); 
        }

        
        }
        else{prntmsg.Text="all fields required";}
    }
    protected void loginsup_Click(object sender, EventArgs e)
    {
        l1 = ucontact.Text.ToString().Trim();
        l2 = upassword.Text.ToString().Trim();
        if (l1 != "" && l2 != "")
        {
            if (l1.Equals("1111111111") && l2.Equals("11111111"))
            {
                Session["logid"] = l1;
                Response.Redirect("admhome.aspx");
                       }
            else {
            submitsuptdetails(); 
        }



           
        }
        else { prntmsg.Text = "all fields required"; }
    }

    private void submitcustdetails()
    {
        try
        {


            string str = ConfigurationManager.ConnectionStrings["cstr"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);
            string sqlquery = "select * from custtbl where ucontact='" + l1 + "' and upassword='" + l2 + "'";

            sqlcon.Open();

            SqlCommand cmd = new SqlCommand(sqlquery, sqlcon);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["logid"] = l1;
                prntmsg.Text = "success";
                Response.Redirect("custhome.aspx");
            }
            else
            {
                prntmsg.Text = "UserId & Password Is not correct Try again..!!";

            }
            sqlcon.Close();
        }
        catch (Exception ex)
        {
            prntmsg.Text = "contact administrator";
           // Response.Write(ex.Message);
        }
    }
    private void submitsuptdetails()
    {
        try
        {

            string str = ConfigurationManager.ConnectionStrings["cstr"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);
            string sqlquery = "select * from supptbl where scontact='" + l1 + "' and spassword='" + l2 + "'";

            sqlcon.Open();

            SqlCommand cmd = new SqlCommand(sqlquery, sqlcon);
            SqlDataReader sdr = cmd.ExecuteReader();
            if (sdr.Read())
            {
                Session["logid"] = l1;
                prntmsg.Text = "success";
                Response.Redirect("supphome.aspx");
            }
            else
            {
                prntmsg.Text = "UserId & Password Is not correct Try again..!!";

            }
            sqlcon.Close();
        }
        catch (Exception ex)
        {
            prntmsg.Text = "contact administrator";
            // Response.Write(ex.Message);
        }
    }
    protected void adminbtn_Click(object sender, EventArgs e)
    {
        l1 = ucontact.Text.ToString().Trim();
        l2 = upassword.Text.ToString().Trim();
      
            if (l1.Equals("1111111111") && l2.Equals("11111111"))
            {
                Session["logid"] = l1;
                Response.Redirect("admhome.aspx");

            }
            else { prntmsg.Text = "all fields required"; }


    }
}