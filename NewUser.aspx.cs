using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class NewUser : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ClearMsgs();
    }
    private void ClearMsgs()
    {
        Label1.Text = ""; 
        Label2.Text = "";
        Label3.Text = "";
    }
    private void ClearData()
    {
        f1.Text = "";
        f2.Text = "";
        ddl1.SelectedIndex = 0;
        ddl2.SelectedIndex = 0;
        f5.Text = "";
        f6.Text = "";
        f7.Text = "";
        fi1.Text = "";
        f8.Text = "";
        f9.Text = ""; 
    }
    private string ValidData(string rolno)
    {
        DataClassesDataContext ob = new DataClassesDataContext();
        Student_Master SM = new Student_Master();
        Login_Master LM = new Login_Master();
        Issued_Master IM = new Issued_Master();
        string bn = "S";
       

        var data = from a in ob.Student_Masters
                   where a.Roll_No == rolno
                   select new
                   {
                       rolno = a.Roll_No
                   };
        foreach (var d in data)
        {
            bn = "F";
            rolno = d.rolno;
        }
        return bn;
    }

    private string ValidData1(string usnm)
    {
        DataClassesDataContext ob = new DataClassesDataContext();
        Student_Master SM = new Student_Master();
        Login_Master LM = new Login_Master();
        Issued_Master IM = new Issued_Master();
        string bn = "S";

        var data1 = from a in ob.Login_Masters
                    where a.UserName == usnm
                    select new
                    {
                        usnm = a.UserName
                    };
        foreach (var d in data1)
        {
            bn = "F";
            usnm = d.usnm;

        }
        return  bn;
    }

    protected void b1_Click(object sender, EventArgs e)
    {
        DataClassesDataContext ob = new DataClassesDataContext();
        Student_Master SM = new Student_Master();
        Login_Master LM = new Login_Master(); 
        Boolean bn = false;
        string rolno = "" ;
        string usnm = "";

        string DataExist = ValidData(f1.Text);
        string DataExist1 = ValidData1(f6.Text); 
        

        if (DataExist == "F")
        {
            Label2.ForeColor = System.Drawing.Color.Red;
            Label2.Text = "Roll Number Already Exists";
        }

        else if (DataExist1 == "F")
        {
            Label3.ForeColor = System.Drawing.Color.Red;
            Label3.Text = "UserName Already Exists";
        }

        else
        {
            SM.Roll_No = f1.Text;
            SM.Name = f2.Text;
            SM.Department = ddl1.SelectedValue.ToString();
            SM.DeptCode = ddl2.SelectedValue.ToString();
            SM.Year = f5.Text;
            SM.UserName = f6.Text;
            SM.Email = f8.Text;
            SM.Mobile = f9.Text;
            SM.ValidUpto = Convert.ToDateTime(fi1.Text);
            SM.Status = true;
            ob.Student_Masters.InsertOnSubmit(SM);
            ob.SubmitChanges();

            LM.UserName = f6.Text;
            LM.Password = f7.Text;
            LM.Status = true;
            Label1.ForeColor = System.Drawing.Color.Lime;
            Label1.Text = "User Created Successfully..";
            ob.Login_Masters.InsertOnSubmit(LM);
            ob.SubmitChanges();
        }
    }
    protected void b2_Click(object sender, EventArgs e)
    {
        ClearData();
        ClearMsgs();
    }
}
