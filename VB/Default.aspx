<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript">
        var visibleIndex = 0;
        function onStartEdit(s, e) {
            visibleIndex = e.visibleIndex;
            popup.ShowAtElement(grid.GetMainElement());
        }
        function onShown(s, e) {
            textBoxFirstName.SetText(grid.batchEditApi.GetCellValue(visibleIndex, "FirstName"));
            textBoxLastName.SetText(grid.batchEditApi.GetCellValue(visibleIndex, "LastName"));
            textBoxAddress.SetText(grid.batchEditApi.GetCellValue(visibleIndex, "Address"));

        }
        function onAcceptClick(s, e) {
            grid.batchEditApi.SetCellValue(visibleIndex, "FirstName", textBoxFirstName.GetText());
            grid.batchEditApi.SetCellValue(visibleIndex, "LastName", textBoxLastName.GetText());
            grid.batchEditApi.SetCellValue(visibleIndex, "Address", textBoxAddress.GetText());
            popup.Hide();
        }
        function onCloseButtonClick(s, e) {
            if (visibleIndex <= -1)
                grid.batchEditApi.ResetChanges(visibleIndex);
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxGridView ID="ASPxGridView1" ClientInstanceName="grid" runat="server" DataSourceID="SqlDataSource1" AutoGenerateColumns="False" KeyFieldName="EmployeeID"
                OnRowInserting="ASPxGridView1_RowInserting" OnRowUpdating="ASPxGridView1_RowUpdating" OnRowDeleting="ASPxGridView1_RowDeleting" OnCustomErrorText="ASPxGridView1_CustomErrorText">
                <ClientSideEvents BatchEditStartEditing="onStartEdit" />
                <SettingsEditing Mode="Batch"></SettingsEditing>
                <Columns>
                    <dx:GridViewCommandColumn ShowNewButtonInHeader="true" ShowDeleteButton="true" VisibleIndex="0"></dx:GridViewCommandColumn>
                    <dx:GridViewDataTextColumn FieldName="EmployeeID" ReadOnly="True" VisibleIndex="1">
                        <EditFormSettings Visible="False" />
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="FirstName" VisibleIndex="2">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="LastName" VisibleIndex="3">
                    </dx:GridViewDataTextColumn>
                    <dx:GridViewDataTextColumn FieldName="Address" VisibleIndex="5">
                    </dx:GridViewDataTextColumn>
                </Columns>
            </dx:ASPxGridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnStr %>" DeleteCommand="DELETE FROM [Employees] WHERE [EmployeeID] = @EmployeeID"
                InsertCommand="INSERT INTO [Employees] ([FirstName], [LastName], [Address]) VALUES (@FirstName, @LastName, @Address)"
                SelectCommand="SELECT [EmployeeID], [FirstName], [LastName], [Address] FROM [Employees]"
                UpdateCommand="UPDATE [Employees] SET [FirstName] = @FirstName, [LastName] = @LastName, [Address] = @Address WHERE [EmployeeID] = @EmployeeID">
                <DeleteParameters>
                    <asp:Parameter Name="EmployeeID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="FirstName" Type="String" />
                    <asp:Parameter Name="LastName" Type="String" />
                    <asp:Parameter Name="Address" Type="String" />
                    <asp:Parameter Name="EmployeeID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <dx:ASPxPopupControl ID="ASPxPopupControl1" runat="server" ClientInstanceName="popup" Modal="true" CloseAction="CloseButton" PopupHorizontalAlign="Center" PopupVerticalAlign="Middle"
                 AllowDragging="True">
                <ClientSideEvents Shown="onShown" CloseButtonClick="onCloseButtonClick" />
                <ContentCollection>
                    <dx:PopupControlContentControl>
                        <dx:ASPxLabel ID="ASPxLabel1" runat="server" Text="First name" />
                        <dx:ASPxTextBox ID="TextBoxFirstName" ClientInstanceName="textBoxFirstName" runat="server" />
                        <dx:ASPxLabel ID="ASPxLabel2" runat="server" Text="Last Name" />
                        <dx:ASPxTextBox ID="TextBoxLastName" ClientInstanceName="textBoxLastName" runat="server" />
                        <dx:ASPxLabel ID="ASPxLabel3" runat="server" Text="Address" />
                        <dx:ASPxTextBox ID="TextBoxAddress" ClientInstanceName="textBoxAddress" runat="server" />
                        <br />
                        <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Accept" AutoPostBack="false">
                            <ClientSideEvents Click="onAcceptClick" />
                        </dx:ASPxButton>
                    </dx:PopupControlContentControl>
                </ContentCollection>
            </dx:ASPxPopupControl>
        </div>
    </form>
</body>
</html>