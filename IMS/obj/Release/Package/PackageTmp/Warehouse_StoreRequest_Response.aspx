﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Warehouse_StoreRequest_Response.aspx.cs" Inherits="IMS.Warehouse_StoreRequest_Response" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <h3> Respond to Store(s)</h3> 
    <br />

    <div class="form-horizontal">
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RequestFrom" CssClass="col-md-2 control-label" Text="Request From : "></asp:Label>
            <div class="col-md-10">
                <asp:Label runat="server" ID="RequestFrom" CssClass="col-md-2 control-label"/>
            </div>
    </div>
    <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="RequestDate" CssClass="col-md-2 control-label" Text="Requested Date :"></asp:Label>
            <div class="col-md-10">
                <asp:Label runat="server" ID="RequestDate" Width="250px" CssClass="col-md-2 control-label"/>
            </div>
    </div>
    </div>
    <br />
    <div class="form-horizontal">
    <div class="form-group">
        <asp:GridView ID="StockDisplayGrid" CssClass="table table-striped table-bordered table-condensed"  Visible="true" runat="server" AllowPaging="True" PageSize="10" 
                AutoGenerateColumns="false" OnSelectedIndexChanged="StockDisplayGrid_SelectedIndexChanged" OnPageIndexChanging="StockDisplayGrid_PageIndexChanging"   onrowcancelingedit="StockDisplayGrid_RowCancelingEdit" 
                onrowcommand="StockDisplayGrid_RowCommand" OnRowDataBound="StockDisplayGrid_RowDataBound" onrowdeleting="StockDisplayGrid_RowDeleting" onrowediting="StockDisplayGrid_RowEditing" >
                 <Columns>
                    <asp:TemplateField HeaderText="OrderDetailID"  Visible="false">
                        <ItemTemplate>
                            <asp:Label ID="OrderDetailNo" Visible="false" CssClass="col-md-2 control-label" runat="server" Text='<%# Eval("OrderDetailID") %>' ></asp:Label>
                        </ItemTemplate>
                        <ItemStyle  Width="1px" HorizontalAlign="Left"/>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Name" HeaderStyle-Width ="250px">
                        <ItemTemplate>
                            <asp:Label ID="ProductName" CssClass="col-md-2 control-label" runat="server" Text='<%# Eval("ProductName") %>'  Width="250px" ></asp:Label>
                        </ItemTemplate>
                         <ItemStyle  Width="250px" HorizontalAlign="Left"/>
                    </asp:TemplateField>
                     
                    <asp:TemplateField HeaderText="Available Stock" HeaderStyle-Width ="250px">
                        <ItemTemplate>
                            <asp:Label ID="Stock" CssClass="col-md-2 control-label" runat="server" Text='<%# Eval("Stock") %>'  Width="250px" ></asp:Label>
                        </ItemTemplate>
                         <ItemStyle  Width="250px" HorizontalAlign="Left"/>
                    </asp:TemplateField>

                     
                    <asp:TemplateField HeaderText="Requested Quantity" HeaderStyle-Width ="250px">
                        <ItemTemplate>
                            <asp:Label ID="RequestedQuantity" CssClass="col-md-2 control-label" runat="server" Text='<%# Eval("ReqQuantity") %>'  Width="250px" ></asp:Label>
                        </ItemTemplate>
                         <ItemStyle  Width="250px" HorizontalAlign="Left"/>
                    </asp:TemplateField>

                     <asp:TemplateField HeaderText="Send Quantity" HeaderStyle-Width ="110px">
                        <ItemTemplate>
                            <asp:Label ID="lblQuantity" CssClass="col-md-2 control-label" runat="server" Text='<%# Eval("SndQauntity") %>' ></asp:Label>
                        </ItemTemplate>
                        
                        <EditItemTemplate>
                            <asp:TextBox ID="txtQuantity" CssClass="form-control" runat="server" Text='<%#Eval("SndQauntity") %>' ></asp:TextBox>
                             <asp:RequiredFieldValidator runat="server" ControlToValidate="txtQuantity" CssClass="text-danger" ErrorMessage="The product quantity field is required." />
                        </EditItemTemplate>
                          <ItemStyle  Width="110px" HorizontalAlign="Left"/>
                    </asp:TemplateField>
                     
                     <asp:TemplateField HeaderText="Remaining Quantity" Visible="false" HeaderStyle-Width ="130px">
                        <ItemTemplate>
                            <asp:Label ID="lblRemainQuan" CssClass="col-md-2 control-label" runat="server" Text='<%# Eval("RemainingQuantity") %>' ></asp:Label>
                        </ItemTemplate>
                          <ItemStyle  Width="130px" HorizontalAlign="Left"/>
                    </asp:TemplateField>
                   <%-- <asp:TemplateField HeaderText="batch Num" Visible="false" HeaderStyle-Width ="130px">
                        <ItemTemplate>
                            <asp:Label ID="lblBatch" CssClass="col-md-2 control-label" runat="server" Text='<%# Eval("BatchNumber") %>' ></asp:Label>
                        </ItemTemplate>
                          <ItemStyle  Width="130px" HorizontalAlign="Left"/>
                    </asp:TemplateField>--%>
                     <asp:TemplateField HeaderText="Action" HeaderStyle-Width ="170px">
                        <ItemTemplate>
                            <asp:Button CssClass="btn btn-default" ID="btnEdit" Text="Edit" runat="server" CommandName="Edit" />
                          
                        </ItemTemplate>

                        <EditItemTemplate>

                            <asp:LinkButton CssClass="btn btn-default" ID="btnUpdate" Text="Update" runat="server" CommandName="UpdateStock" />
                            
                            <asp:LinkButton CssClass="btn btn-default" ID="btnCancel" Text="Cancel" runat="server" CommandName="Cancel" />
                        </EditItemTemplate>
                         <ItemStyle  Width="170px" HorizontalAlign="Left"/>
                    </asp:TemplateField>
                     <asp:TemplateField HeaderText="Status" Visible="false" HeaderStyle-Width ="110px">
                        <ItemTemplate>
                            <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                 </Columns>
             </asp:GridView>
        <br />
         <asp:Button ID="btnAccept" runat="server" OnClick="btnAccept_Click1" Text="ACCEPT LIST" CssClass="btn btn-large"/>
         <asp:Button ID="btnDecline" runat="server" OnClick="btnDecline_Click" Text="CANCEL LIST" CssClass="btn btn-large" />
    </div>
    <div class="form-group">
            <div class="col-md-offset-2 col-md-10">
               
            </div>
        </div>
    </div>
</asp:Content>
