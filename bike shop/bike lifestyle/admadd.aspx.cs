using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admadd : System.Web.UI.Page
{
    String s1, s2, s3, s4, s5, s6, s7;
    String b1, b2, b3, b4, b5;
    String bp1, bp2, bp3, bp4;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["logid"] == null)
        {
            Response.Redirect("home.aspx");
        }
    }
    protected void rbaddsupp_CheckedChanged(object sender, EventArgs e)
    {
            paneladdsupp.Visible= true;
            paneladdbike.Visible= false;
            paneladdparts.Visible = false;
            panelmcustomer.Visible = false;
    }
    protected void rbaddbike_CheckedChanged(object sender, EventArgs e)
    {
        paneladdsupp.Visible = false;
        paneladdbike.Visible = true;
        paneladdparts.Visible = false;
        panelmcustomer.Visible = false;
    }
    protected void rbaddparts_CheckedChanged(object sender, EventArgs e)
    {
        paneladdsupp.Visible = false;
        paneladdbike.Visible = false;
        paneladdparts.Visible = true;
        panelmcustomer.Visible = false;
    }
    protected void rbmcustomer_CheckedChanged(object sender, EventArgs e)
    {
        paneladdsupp.Visible = false;
        paneladdbike.Visible = false;
        paneladdparts.Visible = false;
        panelmcustomer.Visible = true;
    }

    protected void submitbtn_Click(object sender, EventArgs e)
    {
        s2 = sname.Text.ToString();
        s3 = scontact.Text.ToString();
        s4 = semail.Text.ToString();
        s5 = saddress.Text.ToString();
        s6 = sdetails.Text.ToString();
        s7 = spassword.Text.ToString();


        if(s2!="" && s3!="" && s4!="" && s5!="" && s6!="" && s7!="")
        {
            submitdetails();
        }
        else{prntmsg.Text="all fields required";}
    }
    private void submitdetails()
    {

        try
        {

            string str = ConfigurationManager.ConnectionStrings["cstr"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);

            sqlcon.Open();
            //command 1
            String strid = "select count(sid) from supptbl";
            SqlCommand cmd = new SqlCommand(strid, sqlcon);
            int rowid = Convert.ToInt32(cmd.ExecuteScalar());
            rowid = rowid + 1;
            String eid = rowid.ToString().Trim();
            s1 = "supp" + eid;
            //
            //command 2
            string sqlquery = "insert into supptbl values('" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + s5 + "','" + s6 + "','" + s7 + "')";
            SqlCommand cmd1 = new SqlCommand(sqlquery, sqlcon);


            int k = cmd1.ExecuteNonQuery();
            if (k != 0)
            {
                prntmsg.Text = "Succesfully";
                Response.Redirect("admadd.aspx");

            }
            else
            {
                prntmsg.Text = "failed";
            }


            sqlcon.Close();


        }
        catch (Exception ex)
        {
            prntmsg.Text = "contact administrator";
            // prntmsg.Text = ex.Message;
        }
    }

    protected void submitbikebtn_Click(object sender, EventArgs e)
    {
        b2 = bname.Text.ToString().Trim();
        b3 = bprice.Text.ToString().Trim();
        b4 = bquantity.Text.ToString().Trim();
        
        uploadbike.SaveAs(Server.MapPath("~/bikeimage/") + Path.GetFileName(uploadbike.FileName));

        b5 = "bikeimage/" + Path.GetFileName(uploadbike.FileName);

        if(s2!="" && s3!="" && s4!="" && s5!="")
        { submitbikedetails(); }
        else{prntmsgbike.Text="all field rerquired";}
    }
    private void submitbikedetails()
    {

        try
        {

            string str = ConfigurationManager.ConnectionStrings["cstr"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);

            sqlcon.Open();
            //command 1
            String strid = "select count(bid) from biketbl";
            SqlCommand cmd = new SqlCommand(strid, sqlcon);
            int rowid = Convert.ToInt32(cmd.ExecuteScalar());
            rowid = rowid + 1;
            String eid = rowid.ToString().Trim();
            b1 = "bk" + eid;
            //
            //command 2
            string sqlquery = "insert into biketbl values('" + b1 + "','" + b2 + "','" + b3 + "','" + b4 + "','" + b5 + "')";
            SqlCommand cmd1 = new SqlCommand(sqlquery, sqlcon);


            int k = cmd1.ExecuteNonQuery();
            if (k != 0)
            {
                prntmsgbike.Text = "Succesfully";
                Response.Redirect("admadd.aspx");

            }
            else
            {
                prntmsgbike.Text = "failed";
            }


            sqlcon.Close();


        }
        catch (Exception ex)
        {
            prntmsgbike.Text = "contact administrator";
            // prntmsg.Text = ex.Message;
        }
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        bp2 = bpname.Text.ToString().Trim();
        bp3 = bpprice.Text.ToString().Trim();
        bp4 = bpquantity.Text.ToString().Trim();

        if(bp2!="" && bp3!="" && bp4!="")
        { submitbpartdetails(); }
        else{prntmsgbpart.Text="all fields required";}
    }
    private void submitbpartdetails()
    {

        try
        {

            string str = ConfigurationManager.ConnectionStrings["cstr"].ConnectionString;
            SqlConnection sqlcon = new SqlConnection(str);

            sqlcon.Open();
            //command 1
            String strid = "select count(bpid) from bikeparttbl";
            SqlCommand cmd = new SqlCommand(strid, sqlcon);
            int rowid = Convert.ToInt32(cmd.ExecuteScalar());
            rowid = rowid + 1;
            String eid = rowid.ToString().Trim();
            bp1 = "prt" + eid;
            //
            //command 2
            string sqlquery = "insert into bikeparttbl values('" + bp1 + "','" + bp2 + "','" + bp3 + "','" + bp4 + "')";
            SqlCommand cmd1 = new SqlCommand(sqlquery, sqlcon);


            int k = cmd1.ExecuteNonQuery();
            if (k != 0)
            {
                prntmsgbpart.Text = "Succesfully";
                Response.Redirect("admadd.aspx");
                

            }
            else
            {
                prntmsgbpart.Text = "failed";
            }


            sqlcon.Close();


        }
        catch (Exception ex)
        {
            prntmsgbpart.Text = "contact administrator";
            // prntmsg.Text = ex.Message;
        }
    }
}