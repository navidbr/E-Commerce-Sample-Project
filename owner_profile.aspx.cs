using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class owner_profile : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Multiview.ActiveViewIndex = 0;

    }
    protected void mainpage_ServerClick(object sender, EventArgs e)//صفحه ی اصلی
    {
        Multiview.ActiveViewIndex = 0;
    }
    protected void main_diagnotice_ServerClick(object sender, EventArgs e)//مشخصات شخصی
    {
        Multiview.ActiveViewIndex = 1;
    }
    protected void diagnotic_change_ServerClick(object sender, EventArgs e)//تغییر مشخصات
    {
        Multiview.ActiveViewIndex = 2;
    }
    protected void security_ServerClick(object sender, EventArgs e)//تغییر رمزعبور و نام کاربری
    {
        Multiview.ActiveViewIndex = 3;

    }
    protected void change_security_ServerClick(object sender, EventArgs e)
    {
        Multiview.ActiveViewIndex = 4;
    }

    protected void goods_ServerClick(object sender, EventArgs e)
    {

    }
}
