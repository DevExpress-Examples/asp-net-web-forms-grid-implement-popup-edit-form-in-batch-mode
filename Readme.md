<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128534583/15.1.5%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T286169)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
<!-- default badges end -->
<!-- default file list -->
*Files to look at*:

* [CustomExceptions.cs](./CS/App_Code/CustomExceptions.cs) (VB: [CustomExceptions.vb](./VB/App_Code/CustomExceptions.vb))
* **[Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))**
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# ASPxGridView - How to implement a popup Edit Form for GridView in Batch Edit mode
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t286169/)**
<!-- run online end -->


<p>In this example, ASPxGridView is used in <a href="https://documentation.devexpress.com/#AspNet/CustomDocument16443">Batch Edit mode</a>. Clicking editable cells or the add new row button displays a custom <a href="https://documentation.devexpress.com/#AspNet/CustomDocument3582">Popup</a> Edit Form.</p>
<p>Edit forms fields are filled using the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientGridViewBatchEditApi_GetCellValuetopic">ASPxClientGridViewBatchEditApi.GetCellValue</a> method. After submiting new values, the grid cells are filled from the Edit Form using the <a href="https://documentation.devexpress.com/#AspNet/DevExpressWebScriptsASPxClientGridViewBatchEditApi_SetCellValuetopic">ASPxClientGridViewBatchEditApi.SetCellValue</a> method.</p>

<br/>


