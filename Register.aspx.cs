using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.SessionState;

namespace WebOASystem
{
    public partial class Register : System.Web.UI.Page,IHttpHandler
    {
        BaseClass bc = new BaseClass();
        //HttpCookie cookie = new HttpCookie("LoginUserName");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void LoginBtn_Click(object sender, ImageClickEventArgs e)
        {
            if (US_UserName.Text == "" && US_PWD.Text == "")
            {

                Response.Write(bc.MessageBox("用户名称和密码不能为空!"));
                return;
            }
            else
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connect"]);
                SqlCommand cmd = new SqlCommand("select count(*) from OA_Users where US_UserName='" + US_UserName.Text + "'and US_PWD='" + US_PWD.Text + "'and US_RegisterTimes=1", con);
                cmd.Connection.Open();
                int i = (int)cmd.ExecuteScalar();
                cmd.Connection.Close();
                if ( i > 0)
                {
                    if (US_UserName.Text == "Admin")
                    {
                        //登陆成功后，设置登陆时间和标识
                        bc.ExecSQL("update sysUser set US_LoginTime='" + DateTime.Now + "',US_Sign=1 where userName='" + US_UserName.Text + "'");
                        Session["LoginUserName"] = US_UserName.Text;
                        Response.Redirect("/HomePage/AdminTopMenu.aspx");
                        //cookie["LoginUserName"] = US_UserName.Text;
                        //Response.Cookies.Add(cookie);
                        //cookie.Expires = DateTime.Now.AddDays(1);
                        //Response.Cookies["LoginUserName"].Value = US_UserName.Text;
                    }
                    else
                    {
                        //登陆成功后，设置登陆时间和标识
                        bc.ExecSQL("update sysUser set US_LoginTime='" + DateTime.Now + "',US_Sign=1 where userName='" + US_UserName.Text + "'");
                        Session["LoginUserName"] = US_UserName.Text;
                        Response.Redirect("/HomePage/UserTopMenu.aspx");
                        //cookie["LoginUserName"] = US_UserName.Text;
                        //Response.Cookies["LoginUserName"].Value = US_UserName.Text;
                    }
                }

                else
                {
                    Response.Write(bc.MessageBox("用户名或密码错误!"));
                }
                con.Close();
            }
        }

        //protected void LinkSQL()
        //{
            
        //}
        

        //protected void RecordCheck_CheckedChanged(object sender, EventArgs e)
        //{
        //    if (RecordCheck.Checked)
        //    {
        //        HttpCookie cookies = new HttpCookie("userInfo");
        //        cookies.Value = US_UserName.Text + "#" + US_PWD.Text;
        //        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["connect"]);
        //        SqlCommand cmd = new SqlCommand("select count(*) from OA_Users where US_UserName='" + US_UserName.Text + "'and US_PWD='" + US_PWD.Text + "'and US_RegisterTimes=1", con);
        //        cmd.Connection.Open();
        //        int i = (int)cmd.ExecuteScalar();
        //        cmd.Connection.Close();
        //        if (i > 0)
        //        {
        //            //登陆成功后，设置登陆时间和标识
        //            bc.ExecSQL("update sysUser set US_LoginTime='" + DateTime.Now + "',US_Sign=1 where userName='" + US_UserName.Text + "'");
        //            //Session["loginName"] = US_UserName.Text;
        //            cookies.Expires = DateTime.Now.AddDays(3);
        //            Response.Cookies.Add(cookies);
        //            Response.Cookies.Add(new HttpCookie("AdminLogin"));

        //            Response.Redirect("/HomePage/Users/TopMenu.aspx");
        //        }
        //        else
        //        {
        //            Response.Write(bc.MessageBox("用户名或密码错误!"));
        //        }
        //        con.Close();
                
        //    }
        //}

        protected void LoginbtnCandel_Click(object sender, ImageClickEventArgs e)
        {
            US_UserName.Text = "";
            US_PWD.Text = "";
        }
    }
}