using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    public void validate()
    {
        string uid, pass, EMPDEPT;
        uid = EMPDEPT = pass = "";
        bool empSTS = true;
        DataClassesDataContext obj = new DataClassesDataContext();
        var data = from a in obj.Login_Masters
                   where a.UserName == txtUID.Text && a.Password == txtPWD.Text
                   select new
                   {
                       user=a.UserName,
                       pwd=a.Password,
                       sts = a.Status
                       
                   };
        foreach (var d in data)
        {
            
            empSTS = d.sts;
            uid = d.user;
            pass = d.pwd;
           
        }
        Session["UserName"]=uid;
        if (uid == "admin" && pass != "" && empSTS)
        {
            Response.Redirect("~/Admin/AdminHome.aspx");
        }

         else if (uid != "" && pass != "" && empSTS)
        {
            Response.Redirect("~/Redirect.aspx");
        }
        else
        {
            lblMSG.ForeColor = System.Drawing.Color.Maroon;
            lblMSG.Text = "Invalid user id or password...";
        }
    }

    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        validate();
    }
}