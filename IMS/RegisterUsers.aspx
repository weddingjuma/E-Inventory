﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegisterUsers.aspx.cs" Inherits="IMS.RegisterUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="form-horizontal">
        <h4>Register</h4>
        <hr />
        
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="EmpID" CssClass="col-md-2 control-label">Employee ID</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="EmpID" CssClass="form-control" Enabled="True" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="EmpID" CssClass="text-danger" ErrorMessage="The Employee ID field is required." />
                <br />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="uPwd" CssClass="col-md-2 control-label">User Password</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="uPwd" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="uPwd" CssClass="text-danger" ErrorMessage="The user password field is required." />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ddlURole" CssClass="col-md-2 control-label">User Role</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList runat="server" ID="ddlURole" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlURole" CssClass="text-danger" ErrorMessage="The user role field is required." />
            </div>
        </div>

         <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ddlSysID" CssClass="col-md-2 control-label">Assigned System</asp:Label>
            <div class="col-md-10">
                <asp:DropDownList runat="server" ID="ddlSysID" CssClass="form-control" Width="29%"/>
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ddlSysID" CssClass="text-danger" ErrorMessage="The assigned system field is required." />
            </div>
        </div>    

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="fName" CssClass="col-md-2 control-label">First Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="fName" CssClass="form-control" />
                <br />
            </div>
        </div>

        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="lstName" CssClass="col-md-2 control-label">Last Name</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="lstName" CssClass="form-control" />
                <br />
            </div>
        </div>
        
        <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
                <asp:Button ID="btnAddEmployee" runat="server" OnClick="btnAddEmployee_Click" Text="ADD" CssClass="btn btn-default" />
                <%--<asp:Button ID="btnCancelProduct" runat="server" OnClick="btnCancelProduct_Click" Text="CANCEL" CssClass="btn btn-default" />--%>
                <asp:Button ID="btnBack" runat="server" CssClass="btn btn-primary btn-large" Text="Go Back" OnClick="btnBack_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
