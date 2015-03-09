﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AddStock.aspx.cs" Inherits="IMS.AddStock" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <script src="Scripts/jquery.js"  type="text/javascript"></script>
          <script src="Scripts/jquery-ui.js" type="text/javascript"></script>
          <link rel="stylesheet" href="Style/jquery-ui.css" />
          <script>
              $(function () { $("#<%= DateTextBox.ClientID %>").datepicker(); });

          </script>
    <br />
    <br />
    <div class="row">
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="SelectProduct" CssClass="col-md-2 control-label">Select Product</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList runat="server" ID="SelectProduct" CssClass="form-control" Width="29%" AutoPostBack="true" OnSelectedIndexChanged="SelectProduct_SelectedIndexChanged"/>
                <br />
            </div>
        </div>
    </div>
    
    <div class="form-horizontal">
        <h4>Add Stock</h4>
        <hr />
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="BarCodeSerial" CssClass="col-md-2 control-label">BarCode Serial</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="BarCodeSerial" CssClass="form-control" Enabled="False" />
                <br />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ProductName" CssClass="col-md-2 control-label">Product Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ProductName" CssClass="form-control" Enabled="False" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ProductName" CssClass="text-danger" ErrorMessage="The product name field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Quantity" CssClass="col-md-2 control-label">Stock Quantity</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Quantity" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Quantity" CssClass="text-danger" ErrorMessage="The product quantity field is required." />
                <br />
            </div>
        </div>

         <div class="form-group">
            <asp:Label runat="server"  CssClass="col-md-2 control-label">Stock Expiry</asp:Label>
            <div class="col-md-10">
                 <asp:TextBox runat="server" ID="DateTextBox" CssClass="form-control" />
                <br />
            </div>
            
        </div>
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="StockAt" CssClass="col-md-2 control-label">Stock At</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList runat="server" ID="StockAt" CssClass="form-control" Width="29%"/>
                <br/>
            </div>
        </div>    

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ProductSale" CssClass="col-md-2 control-label">Unit Sale Price</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ProductSale" CssClass="form-control" />
                <br />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ProductCost" CssClass="col-md-2 control-label">Unit Cost Price</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ProductCost" CssClass="form-control" />
                <br />
            </div>
        </div>

        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="btnCreateProduct" runat="server" OnClick="btnCreateProduct_Click" Enabled="false" Text="ADD" CssClass="btn btn-default" />
                <asp:Button ID="btnCancelProduct" runat="server" OnClick="btnCancelProduct_Click" Text="CANCEL" CssClass="btn btn-default" />
                <asp:Button ID="btnBack" runat="server" CssClass="btn btn-primary btn-large" Text="Go Back" OnClick="btnBack_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
