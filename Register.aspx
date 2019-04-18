<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebOASystem.Register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>FYL</title>
    <%--checkBox选中之后会如果没有登录会弹出对话框--%>
    <%--<script language="javascript" type="text/javascript">

        function getCookies() {

            var cookies = document.cookie.split(";");

            for (var i = 0; i < cookies.length; i++) {

                var cookInfo = cookies[i].split("=");

                if (cookInfo[0] == "userInfo") {

                    var userInfo = cookInfo[1].split("#");

                    if (document.getElementById("US_UserName").value == userInfo[0]) {

                        document.getElementById("US_PWD").value = userInfo[1];

                        alert(userInfo[1]);
                    } 
                } 
            } 
        } </script>--%>
<!-- 页面基本设置禁止随意更改 -->
<meta charset="utf-8">
<meta name="author" content="forework">
<meta name="format-detection" content="telephone=no">
<meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<meta name="apple-mobile-web-app-status-bar-style" content="black">
<meta name="msapplication-tap-highlight" content="no">
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<!-- 页面基本设置禁止随意更改 -->
<!-- 基础CSS类库可随意更改 -->
<link rel="stylesheet" type="text/css" href="css/less.css">
<link rel="stylesheet" type="text/css" href="css/basic.css">
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <div class="wrapper" style="background-color: white;">
  <div class="login-top">
  <div style="height: 60px;background-color: white;">
	<div style=";margin-left: 160px;">
		<img src="images/OALogo.jpg" />	
	</div>
      <%--<div style="float:right;margin-top: -34px;width: 360px;font-size: 12px;">
		<span>返回首页</span>
		<span>|</span>
		<span>登录帮助</span>
		<span>|</span>
		<span>在线答疑</span>
	</div>--%>
  </div>
    <div class="login-topBg">
      <div class="login-topBg1">
        
        <div class="login-topStyle" >
          
          <!--在点击注册时出现样式login-topStyle3登录框，而login-topStyle2则消失-->
          <div class="login-topStyle3" id="loginStyle" style="margin-top: 75px;">
            <h3>用户平台登录</h3>
            <!--输入错误提示信息，默认是隐藏的，把display:none，变成block可看到-->
            <%--<div class="error-information" style="display:none;">您输入的密码不正确，请重新输入</div>--%>
            <div class="ui-form-item loginRegister">
                <%--<input type="username" placeholder="用户名/手机号/密码">--%>
              <asp:textbox id="US_UserName" runat="server" Height = "35" Width="230px" 
                    size="25"></asp:textbox>
            </div class="ui-form-item loginRegister">
            <div >
                <%--<input type="password" placeholder="请输入密码">--%>
              <asp:textbox id="US_PWD" runat="server" Height = "35px" Width="230px" 
                    size="25" textmode="password" ></asp:textbox>
            </div>
            <div class="login_reme">
              <%--<input type="checkbox">--%>
             <%-- <asp:CheckBox ID="RecordCheck" runat="server" Text="记住账号" Font-Size="Small" 
                    ForeColor="gray" oncheckedchanged="RecordCheck_CheckedChanged" />--%>
              <%--<a class="reme1">记住账号</a> --%><%--<a class="reme2" href="password.html">忘记密码?</a> --%></div>
            <%--<span class="error_xinxi" style="display:none;">您输入的密码不正确，请重新输入</span> --%>
            <%--<a class="btnStyle btn-register" href="register.html"> 立即登录</a> --%>
            <asp:imagebutton id="LoginBtn" runat="server" Height="35px" Width="101px" 
                  ImageURL="images/Register.jpg" onclick="LoginBtn_Click"></asp:imagebutton>
            <asp:imagebutton id="LoginbtnCandel" runat="server" Height="35px" Width="101px" 
                  ImageURL="images/Candel.jpg" onclick="LoginbtnCandel_Click"></asp:imagebutton>
            </div>
        </div>
      </div>
    </div>
  </div>
  <div class="loginCen" style="margin-top: 55px;">
    <div class="login-center">
      <div class="loginCenter-moudle">
      </div>
    </div>
  </div>
  <div class="footer"> <span class="footerText">Copyright © 河南科技学院新科学院 信息工程系 计算机科学与技术 
      0001号</span> </div>
</div>
    </div>
    </form>
</body>
</html>
