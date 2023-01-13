using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_StudentMaster : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SqlDataSourceFVStudentMaster_Inserting(object sender, SqlDataSourceCommandEventArgs e)
    {
        FileUpload fa = (FileUpload)FormView1.FindControl("FileUpload1");
        if (fa.HasFile)
        {
            string strfilename = fa.FileName;
            string ext = System.IO.Path.GetExtension(fa.PostedFile.FileName);
            string name = System.IO.Path.GetFileNameWithoutExtension(fa.PostedFile.FileName);
            if (ext == ".JPG" || ext == ".jpg" || ext == ".GIF" || ext == ".gif" || ext == ".PNG" || ext == ".png") 
            {
                string strguid = Guid.NewGuid().ToString();
                string savefilename = Server.MapPath("../StudentImages/") + name + strguid + ext;
                string strname = "StudentImages/" + name + strguid + ext;
                fa.SaveAs(savefilename);
                e.Command.Parameters["@ImagePath"].Value = strname;

            }else
            {
                e.Cancel = true;
            }
        }
    }
}