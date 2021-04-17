<%@ Page Title="" Language="C#" MasterPageFile="~/MainMaster.master" AutoEventWireup="true" CodeBehind="Groups.aspx.cs" Inherits="Vacation_Manager1.Groups" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        .myddls {
            align-items: center;
            background-color: rgb(255, 255, 255);
            border-bottom-color: rgb(204, 204, 204);
            border-bottom-left-radius: 4px;
            border-bottom-right-radius: 0px;
            border-bottom-style: solid;
            border-bottom-width: 1px;
            border-collapse: collapse;
            border-image-outset: 0px;
            border-image-repeat: stretch;
            border-image-slice: 100%;
            border-image-source: none;
            border-image-width: 1;
            border-left-color: rgb(204, 204, 204);
            border-left-style: solid;
            border-left-width: 1px;
            border-right-color: rgb(204, 204, 204);
            border-right-style: solid;
            border-right-width: 1px;
            border-top-color: rgb(204, 204, 204);
            border-top-left-radius: 4px;
            border-top-right-radius: 0px;
            border-top-style: solid;
            border-top-width: 1px;
            box-shadow: rgba(0, 0, 0, 0.0745098) 0px 1px 1px 0px inset;
            box-sizing: border-box;
            color: rgb(85, 85, 85);
            cursor: default;
            display: inline-block;
            font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
            font-size: 14px;
            font-stretch: normal;
            font-style: normal;
            font-variant: normal;
            font-weight: normal;
            height: 34px;
            letter-spacing: normal;
            line-height: normal;
            margin-bottom: 0px;
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 0px;
            max-width: 280px;
            overflow-x: visible;
            overflow-y: visible;
            padding-bottom: 6px;
            padding-left: 12px;
            padding-right: 12px;
            padding-top: 6px;
            text-align: start;
            text-indent: 0px;
            text-rendering: auto;
            text-shadow: none;
            text-transform: none;
            transition-delay: 0s, 0s;
            transition-duration: 0.15s, 0.15s;
            transition-property: border-color, box-shadow;
            transition-timing-function: ease-in-out, ease-in-out;
            vertical-align: middle;
            white-space: pre;
            width: 48px;
            word-spacing: 0px;
            writing-mode: horizontal-tb;
            -webkit-appearance: menulist-button;
            -webkit-rtl-ordering: logical;
        }
        </style>

</asp:Content><asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <center>
        <div>
            <br />
            <br />
            
            <div class="input-group">
                <div class="form-inline">    
                    <h3 class="alert alert-danger">Groups</h3>          
                    <table border="0" cellpadding="5" cellspacing="5" class="table bg-success table-responsive ">
                         <tr class="alert-info">
                            <td>
                                <span>Names</span>
                            </td>
                            <td>
                                <span>Group-Leader </span>
                            </td>
                             <td>
                                <span>Project</span>
                            </td>
                             <td>
                                <span>LaunchData</span>
                            </td>
                              <td>
                                <span>TimeStamp</span>
                            </td>
                               <td>
                                <span>Description</span>
                            </td>
                            </tr>
                        
                        <tr>
                            <td>
                                <asp:TextBox runat="server" ID="txtNames"  placeholder="Person's Names" required  CssClass="form-control"/>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="txtLeader"  placeholder="Leader" required CssClass="form-control"/>
                            </td>
                            <td>
                                <asp:TextBox runat="server" ID="txtProject"  placeholder="Project" required  CssClass="form-control"/>
                            </td>
                            <td>
                                 <asp:TextBox runat="server" ID="txtDate"  placeholder="----" required  CssClass="form-control"/>
                              
                            </td>
                             <td>
                                <asp:TextBox runat="server" ID="txtDate1"  placeholder="yyyy/MM/dd" required  CssClass="form-control"/>
                            </td>
                             <td>
                                <asp:TextBox runat="server" ID="txtDescription"  placeholder="Description" required  CssClass="form-control"/>
                            </td>
                             </tr>
                        
                                <asp:checkbox text="Accept" runat="server" ID="chkStatus" />
                                  <asp:Button Text="Add Group" runat="server" ID="btnAdd" 
                                    class="btn btn-sm btn-primary" OnClick="btnAdd_Click" />
                              
                            
                          
                        
                    </table>
                </div>
            </div>
            <br />
            <br />
          <asp:GridView ID="GridView1" runat="server" 
                CssClass="table table-responsive table-striped" AutoGenerateColumns="False" 
                DataKeyNames="UserId" DataSourceID="LibraryDb">
              <Columns>
                 
                  <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" />
                 
                  <asp:BoundField DataField="UserId" HeaderText="Id" 
                      SortExpression="Id" ReadOnly="True" InsertVisible="False"  />
                  <asp:BoundField DataField="UserName" HeaderText="Names" 
                      SortExpression="UserName" />
                    <asp:BoundField DataField="Group-Leader" HeaderText="Leader" 
                      SortExpression="Group-Leader" />
                   <asp:BoundField DataField="Project" HeaderText="Project" 
                      SortExpression="Project" />
                  <asp:BoundField DataField="LaunchDate" HeaderText="LaunchDate" 
                      SortExpression="LaunchDate" />
                  <asp:BoundField DataField="timestamp" HeaderText="timestamp" 
                      SortExpression="timestamp" />                  
                  <asp:BoundField DataField="Description" HeaderText="Description" 
                      SortExpression="Description" />
                  <asp:CheckBoxField DataField="status" HeaderText="status" 
                      SortExpression="status" />
                  </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="LibraryDb" runat="server" 
                ConnectionString="<%$ ConnectionStrings:VacationConnectionString %>" 
                SelectCommand="SELECT * FROM [Group_Table]" 
                DeleteCommand="DELETE FROM [Group_Table] WHERE [UserId] = @UserId" 
                InsertCommand="INSERT INTO [Group_Table] ([UserName], [Group-Leader], [Project], [LaunchDate], [timestamp], [Description], [status]) VALUES (@UserName, @Group-Leader, @Project, @timestamp, @Description, @status,)" 
                UpdateCommand="UPDATE [Group_Table] SET [UserName] = @UserName, [Group-Leader] = @Group-Leader, [Project] = @Project, [LaunchDate] = @LaunchDate, [timestamp] = @timestamp, [LaunchDate] = @LaunchDate, [Description] = @Description, [status] = @status,  WHERE [UserId] = @UserId" >
                <DeleteParameters>
                    <asp:Parameter Name="UserId" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Group-Leader" Type="Int32" />
                    <asp:Parameter Name="Project" Type="DateTime" />
                    <asp:Parameter Name="LaunchDate" Type="String" />
                    <asp:Parameter Name="timestamp" Type="String" />                    
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="status" Type="Boolean" />
                    </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="UserName" Type="String" />
                    <asp:Parameter Name="Group-Leader" Type="Int32" />
                    <asp:Parameter Name="Project" Type="DateTime" />
                    <asp:Parameter Name="LaunchDate" Type="String" />
                    <asp:Parameter Name="timestamp" Type="String" />
                    <asp:Parameter Name="Description" Type="String" />
                    <asp:Parameter Name="status" Type="Boolean" />
                    <asp:Parameter Name="UserId" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </div>
    </center>

</asp:Content>
