<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Order_Items.aspx.cs" Inherits="Web_App.Order_Items" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contact">
    <div class="container">
        <h2>Manage</h2>
        <div class="contentmanage"> 
           
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="id" 
                DataSourceID="SqlDataSource1" Width="100%">
                <EditItemTemplate>
                    id:
                    <asp:Label ID="idLabel1" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    Order_id:
                    <asp:TextBox ID="Order_idTextBox" runat="server" 
                        Text='<%# Bind("Order_id") %>' />
                    <br />
                    Product_id:
                    <asp:TextBox ID="Product_idTextBox" runat="server" 
                        Text='<%# Bind("Product_id") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" 
                        Text='<%# Bind("Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" 
                        CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <EmptyDataTemplate>
                    <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                        CommandName="New" Text="New" />
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    id:
                    <asp:TextBox ID="idTextBox" runat="server" Text='<%# Bind("id") %>' />
                    <br />
                    Order_id:
                    <asp:TextBox ID="Order_idTextBox" runat="server" 
                        Text='<%# Bind("Order_id") %>' />
                    <br />
                    Product_id:
                    <asp:TextBox ID="Product_idTextBox" runat="server" 
                        Text='<%# Bind("Product_id") %>' />
                    <br />
                    Quantity:
                    <asp:TextBox ID="QuantityTextBox" runat="server" 
                        Text='<%# Bind("Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" 
                        CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" 
                        CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    id:
                    <asp:Label ID="idLabel" runat="server" Text='<%# Eval("id") %>' />
                    <br />
                    Order_id:
                    <asp:Label ID="Order_idLabel" runat="server" Text='<%# Bind("Order_id") %>' />
                    <br />
                    Product_id:
                    <asp:Label ID="Product_idLabel" runat="server" 
                        Text='<%# Bind("Product_id") %>' />
                    <br />
                    Quantity:
                    <asp:Label ID="QuantityLabel" runat="server" Text='<%# Bind("Quantity") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" 
                        CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" 
                        CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" 
                        CommandName="New" Text="New" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:QuanLyBanHangConnectionString %>" 
                DeleteCommand="DELETE FROM [Order_Item] WHERE [id] = @id" 
                InsertCommand="INSERT INTO [Order_Item] ([id], [Order_id], [Product_id], [Quantity]) VALUES (@id, @Order_id, @Product_id, @Quantity)" 
                SelectCommand="SELECT * FROM [Order_Item]" 
                UpdateCommand="UPDATE [Order_Item] SET [Order_id] = @Order_id, [Product_id] = @Product_id, [Quantity] = @Quantity WHERE [id] = @id">
                <DeleteParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id" Type="Int32" />
                    <asp:Parameter Name="Order_id" Type="Int32" />
                    <asp:Parameter Name="Product_id" Type="Int32" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Order_id" Type="Int32" />
                    <asp:Parameter Name="Product_id" Type="Int32" />
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="id" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
           
        </div>
        <h2>List Of Order Items</h2>
        <div> 
           
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                CellPadding="3" DataKeyNames="id" DataSourceID="SqlDataSource1" 
                GridLines="Horizontal" Width="100%" BackColor="White" BorderColor="#E7E7FF" 
                BorderStyle="None" BorderWidth="1px">
                <AlternatingRowStyle BackColor="#F7F7F7" />
                <Columns>
                    <asp:BoundField DataField="id" HeaderText="ID Order Items" ReadOnly="True" 
                        SortExpression="id" />
                    <asp:BoundField DataField="Order_id" HeaderText="ID Order" 
                        SortExpression="Order_id" />
                    <asp:BoundField DataField="Product_id" HeaderText="ID Products" 
                        SortExpression="Product_id" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" 
                        SortExpression="Quantity" />
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" 
                        ShowEditButton="True" HeaderText="Manage" />
                </Columns>
                <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                <SortedAscendingCellStyle BackColor="#F4F4FD" />
                <SortedAscendingHeaderStyle BackColor="#5A4C9D" />
                <SortedDescendingCellStyle BackColor="#D8D8F0" />
                <SortedDescendingHeaderStyle BackColor="#3E3277" />
            </asp:GridView>
           
        </div>
    </div>
  </div>
</asp:Content>
