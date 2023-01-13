<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="DepartmentMaster.aspx.cs" Inherits="Admin_DepartmentMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section id="CreateSection" class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title" style="justify-content: center;">Manage Department</h4>
            </div>
            <div class="card-body">

                <div class="forms-sample">
                
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSourceFVDepartment" DataKeyNames="DepartmentID" DefaultMode="Insert" Width="100%" OnItemInserted="FormView1_ItemInserted" OnItemUpdated="FormView1_ItemUpdated">
                        <EditItemTemplate>
                            <div class="forms-sample">
                                <div class="form-group row">
                                    <h4  class=" font-weight-500 text-lg-start col-sm-3 col-form-label">Department Name</h4>
                                    <div class="col-sm-9 mt-2">
                                        <asp:TextBox ID="DepartmentNameTextBox" CssClass="form-control col-md-12" runat="server" Text='<%# Bind("DepartmentName") %>' placeholder="Department Name" />
                                    </div>
                                </div>
                            </div>
                            <asp:LinkButton ID="UpdateButton" CssClass="btn btn-primary me-2" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" CssClass="btn btn-light" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <div class="forms-sample">
                                <div class="form-group row">
                                    <h4  class=" font-weight-500 text-lg-start col-sm-3 col-form-label">Department Name</h4>
                                    <div class="col-sm-9 mt-2">
                                        <asp:TextBox ID="DepartmentNameTextBox" CssClass="form-control col-md-12" runat="server" Text='<%# Bind("DepartmentName") %>' placeholder="Department Name" />
                                    </div>
                                </div>
                            </div>
                            <br />
                            <asp:LinkButton ID="InsertButton" CssClass="btn btn-primary me-2" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-light" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>

                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSourceFVDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" InsertCommand="DepartmentMasterInsert" InsertCommandType="StoredProcedure" SelectCommand="DepartmentMasterGet" SelectCommandType="StoredProcedure" UpdateCommand="DepartmentMasterUpdate" UpdateCommandType="StoredProcedure">
                        <InsertParameters>
                            <asp:Parameter Name="DepartmentName" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" DefaultValue="0" Name="DepartmentID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="DepartmentID" Type="Int32" />
                            <asp:Parameter Name="DepartmentName" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    <%--<button type="submit" class="btn btn-primary me-2">Submit</button>
                    <button class="btn btn-light">Cancel</button>--%>
                </div>
            </div>
        </div>
    </section>
    <section>
        <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">

                    <div class="table-responsive">
                        <asp:GridView ID="GridView1" CssClass="table table-striped table-hover" runat="server" AutoGenerateColumns="False" DataKeyNames="DepartmentID" DataSourceID="SqlDataSourceGVDepartment" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                            <Columns>
                                <asp:BoundField DataField="DepartmentID" HeaderText="Department ID" InsertVisible="False" ReadOnly="True" SortExpression="DepartmentID" />
                                <asp:BoundField DataField="DepartmentName" HeaderText="Department Name" SortExpression="DepartmentName" />
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="btnEdit" runat="server" CommandName="Select" CssClass="btn btn-primary" Text="Edit" />
                                        <asp:Button ID="btnDelete" runat="server" CommandName="Delete" CssClass="btn btn-danger" OnClientClick="return Confirm(this.ctl,event)" Text="Delete" />
                                        
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceGVDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" DeleteCommand="DepartmentMasterDelete" DeleteCommandType="StoredProcedure" SelectCommand="DepartmentMasterGet" SelectCommandType="StoredProcedure">
                            <DeleteParameters>
                                <asp:Parameter Name="DepartmentID" Type="Int32" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:Parameter DefaultValue="0" Name="DepartmentID" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </section>
    
    <script type="text/javascript">
        function Confirm(ctl, event) {
            event.preventDefault();
            swal({
                title: "Confirm Delete?",
                text: "Record will deleted permanently!",
                type: "warning",
                showCancelButton: true,
                closeOnConfirm: true,
                closeOnCancel: true
            });
            
        }
    </script>
</asp:Content>

