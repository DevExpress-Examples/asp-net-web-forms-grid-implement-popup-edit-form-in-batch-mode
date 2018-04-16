using DevExpress.Web;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void ASPxGridView1_RowInserting(object sender, DevExpress.Web.Data.ASPxDataInsertingEventArgs e) {
        throw new CustomExceptions.MyException("Data updates aren't allowed in online examples");
    }
    protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e) {
        throw new CustomExceptions.MyException("Data updates aren't allowed in online examples");
    }
    protected void ASPxGridView1_RowDeleting(object sender, DevExpress.Web.Data.ASPxDataDeletingEventArgs e) {
        throw new CustomExceptions.MyException("Data updates aren't allowed in online examples");
    }
    protected void ASPxGridView1_CustomErrorText(object sender, ASPxGridViewCustomErrorTextEventArgs e) {
        if (e.Exception is CustomExceptions.MyException)
            e.ErrorText = e.Exception.Message;
    }
}