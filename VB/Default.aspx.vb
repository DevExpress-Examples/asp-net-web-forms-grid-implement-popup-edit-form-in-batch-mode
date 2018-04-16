Imports DevExpress.Web
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls

Partial Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub ASPxGridView1_RowInserting(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataInsertingEventArgs)
        Throw New CustomExceptions.MyException("Data updates aren't allowed in online examples")
    End Sub
    Protected Sub ASPxGridView1_RowUpdating(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataUpdatingEventArgs)
        Throw New CustomExceptions.MyException("Data updates aren't allowed in online examples")
    End Sub
    Protected Sub ASPxGridView1_RowDeleting(ByVal sender As Object, ByVal e As DevExpress.Web.Data.ASPxDataDeletingEventArgs)
        Throw New CustomExceptions.MyException("Data updates aren't allowed in online examples")
    End Sub
    Protected Sub ASPxGridView1_CustomErrorText(ByVal sender As Object, ByVal e As ASPxGridViewCustomErrorTextEventArgs)
        If TypeOf e.Exception Is CustomExceptions.MyException Then
            e.ErrorText = e.Exception.Message
        End If
    End Sub
End Class