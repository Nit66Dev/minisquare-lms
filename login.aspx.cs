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
                   where a.UserName == txtUID.Text
                   select new
                   {
                       user=a.UserName,
                       pwd=a.Password,
                       sts = a.Status

                   };

        bool isValidPassword = false;

        foreach (var d in data)
        {
            string hashedInput = SecurityHelper.HashPassword(txtPWD.Text);
            bool storedIsHash = SecurityHelper.IsPasswordHash(d.pwd);

            if (storedIsHash)
            {
                // If stored is a hash, we MUST match the hashed input
                if (d.pwd == hashedInput)
                {
                    empSTS = d.sts;
                    uid = d.user;
                    pass = d.pwd;
                    isValidPassword = true;
                }
            }
            else
            {
                // Legacy plain text check
                if (d.pwd == txtPWD.Text)
                {
                    empSTS = d.sts;
                    uid = d.user;
                    pass = d.pwd;
                    isValidPassword = true;
                }
            }
        }
        Session["UserName"]=uid;
        if (uid == "admin" && isValidPassword && empSTS)
        {
            Response.Redirect("~/Admin/AdminHome.aspx");
        }

         else if (uid != "" && isValidPassword && empSTS)
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
