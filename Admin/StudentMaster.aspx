<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="StudentMaster.aspx.cs" Inherits="Admin_StudentMaster" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div id="CreateSection" class="col-md-12 grid-margin stretch-card ">
        <div class="card">
            <div class="card-header">
                <h4 class="card-title" style="justify-content: center;">Student Registration</h4>
            </div>
            <div class="card-body">
                <p class="card-description">Personal Information</p>
                <div class="">
                    <asp:FormView ID="FormView1" runat="server" DataSourceID="SqlDataSourceFVStudentMaster" Width="100%" DataKeyNames="StudentID" DefaultMode="Insert">
                        <EditItemTemplate>
                            StudentID:
                            <asp:Label ID="StudentIDLabel1" runat="server" Text='<%# Eval("StudentID") %>' />
                            <br />
                            Title:
                            <asp:TextBox ID="TitleTextBox" runat="server" Text='<%# Bind("Title") %>' />
                            <br />
                            FirstName:
                            <asp:TextBox ID="FirstNameTextBox" runat="server" Text='<%# Bind("FirstName") %>' />
                            <br />
                            MiddleName:
                            <asp:TextBox ID="MiddleNameTextBox" runat="server" Text='<%# Bind("MiddleName") %>' />
                            <br />
                            LastName:
                            <asp:TextBox ID="LastNameTextBox" runat="server" Text='<%# Bind("LastName") %>' />
                            <br />
                            EmailID:
                            <asp:TextBox ID="EmailIDTextBox" runat="server" Text='<%# Bind("EmailID") %>' />
                            <br />
                            MobileNo:
                            <asp:TextBox ID="MobileNoTextBox" runat="server" Text='<%# Bind("MobileNo") %>' />
                            <br />
                            DepartmentID:
                            <asp:TextBox ID="DepartmentIDTextBox" runat="server" Text='<%# Bind("DepartmentID") %>' />
                            <br />
                            SemesterID:
                            <asp:TextBox ID="SemesterIDTextBox" runat="server" Text='<%# Bind("SemesterID") %>' />
                            <br />
                            DivisionID:
                            <asp:TextBox ID="DivisionIDTextBox" runat="server" Text='<%# Bind("DivisionID") %>' />
                            <br />
                            AcademicID:
                            <asp:TextBox ID="AcademicIDTextBox" runat="server" Text='<%# Bind("AcademicID") %>' />
                            <br />
                            UniqueNo:
                            <asp:TextBox ID="UniqueNoTextBox" runat="server" Text='<%# Bind("UniqueNo") %>' />
                            <br />
                            MeritNo:
                            <asp:TextBox ID="MeritNoTextBox" runat="server" Text='<%# Bind("MeritNo") %>' />
                            <br />
                            LastSchoolName:
                            <asp:TextBox ID="LastSchoolNameTextBox" runat="server" Text='<%# Bind("LastSchoolName") %>' />
                            <br />
                            EligibileForScholarship:
                            <asp:CheckBox ID="EligibileForScholarshipCheckBox" runat="server" Checked='<%# Bind("EligibileForScholarship") %>' />
                            <br />
                            ImagePath:
                            <asp:TextBox ID="ImagePathTextBox" runat="server" Text='<%# Bind("ImagePath") %>' />
                            <br />
                            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </EditItemTemplate>
                        <InsertItemTemplate>
                            <div class="form-group ">
                                <div class="row">
                                    <div class="col-lg-4"></div>
                                    <div class="col-lg-4"></div>

                                    <div class="col-lg-4">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-12 col-form-label mt-2 mx-5">Student Photo</h4>

                                        <div class="">
                                            <asp:Image ID="Image1" Height="150px" Width="163px" CssClass="img-thumbnail mx-4" runat="server" ImageUrl='<%# Eval("ImagePath") %>' />
                                            <asp:FileUpload CssClass="mt-2 mx-5" Style="width: 114px; max-width: 100%; color: #444; padding: 5px; background: #fff; border-radius: 5px; border: 1px solid #555;"
                                                ID="FileUpload1" runat="server" />
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-2">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-4 col-form-label">Title</h4>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="TitleTextBox" CssClass="form-control" runat="server" Text='<%# Bind("Title") %>' placeholder="Mr/Mrs/Miss" />
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-6 col-form-label">First Name</h4>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="FirstNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("FirstName") %>' placeholder="First Name" />
                                        </div>

                                    </div>
                                    <div class="col-lg-3">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-6 col-form-label">Middle Name</h4>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="MiddleNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("MiddleName") %>' placeholder="Middle Name" />
                                        </div>

                                    </div>
                                    <div class="col-lg-3">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-6 col-form-label">Last Name</h4>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="LastNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("LastName") %>' placeholder="Last Name" />
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-3 col-form-label">Email ID</h4>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="EmailIDTextBox" CssClass="form-control col-md-12" runat="server" Text='<%# Bind("EmailID") %>' placeholder="EmailID" />
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-5 col-form-label">Mobile No.</h4>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="MobileNoTextBox" runat="server" CssClass="form-control" Text='<%# Bind("MobileNo") %>' placeholder="Mobile No." />
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-6 col-form-label">Department</h4>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="DropDownList2" CssClass="btn btn-white dropdown-toggle" runat="server" DataSourceID="SqlDataSourceDDDepartment" DataTextField="DepartmentName" DataValueField="DepartmentID" SelectedValue='<%# Bind("DepartmentID") %>'>
                                                 <asp:ListItem class="" Value="-1">--Select Department--</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceDDDepartment" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="ListAllDepartment" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                                        </div>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-5 col-form-label">Semester</h4>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="DropDownList3" CssClass="btn btn-white dropdown-toggle" runat="server" DataSourceID="SqlDataSourceDDSemester" DataTextField="SemesterNo" DataValueField="SemesterID" SelectedValue='<%# Bind("SemesterID") %>'>
                                                 <asp:ListItem class="" Value="-1">--Select Semester--</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceDDSemester" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="ListAllSemester" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="0" Name="DepartmentID" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-6 col-form-label">Division</h4>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="DropDownList4" CssClass="btn btn-white dropdown-toggle" runat="server" DataSourceID="SqlDataSourceDDDivision" DataTextField="DivisionID" DataValueField="DivisionID" SelectedValue='<%# Bind("DivisionID") %>'>
                                                 <asp:ListItem class="dropdown-item" Value="-1">--Select Division--</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:SqlDataSource ID="SqlDataSourceDDDivision" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" SelectCommand="ListAllDivision" SelectCommandType="StoredProcedure">
                                                <SelectParameters>
                                                    <asp:Parameter DefaultValue="0" Name="DepartmentID" Type="Int32" />
                                                </SelectParameters>
                                            </asp:SqlDataSource>
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-6 col-form-label">Academic</h4>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="AcademicIDTextBox" runat="server" CssClass="form-control" Text='<%# Bind("AcademicID") %>' placeholder="Academic " />
                                        </div>
                                    </div>

                                </div>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-12 col-form-label">Student Unique No.</h4>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="UniqueNoTextBox" runat="server" CssClass="form-control" Text='<%# Bind("UniqueNo") %>' placeholder="Unique No." />
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-12 col-form-label">Student Merit No.</h4>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="MeritNoTextBox" CssClass="form-control" runat="server" Text='<%# Bind("MeritNo") %>' placeholder="Merit Number" />
                                        </div>
                                    </div>
                                    <div class="col-lg-4">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-12 col-form-label">Last School Name</h4>
                                        <div class="col-md-12">
                                            <asp:TextBox ID="LastSchoolNameTextBox" CssClass="form-control" runat="server" Text='<%# Bind("LastSchoolName") %>' placeholder="Last School Name" />
                                        </div>
                                    </div>

                                </div>
                                <br />
                                <div class="row">
                                    <div class="col-lg-6">
                                        <h4 class=" font-weight-500 text-lg-start col-sm-12 col-form-label">EligibileForScholarship                                        </h4>
                                        <div class="col-md-12">
                                            <asp:DropDownList ID="DropDownList1" CssClass="btn btn-white dropdown-toggle" Style="" runat="server" SelectedValue='<%# Bind("EligibileForScholarship") %>'>
                                                <asp:ListItem class="" Value="-1">--Select</asp:ListItem>
                                                <asp:ListItem class="" Value="0">Yes</asp:ListItem>
                                                <asp:ListItem class="" Value="1">No</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                </div>

                            </div>

                            <asp:LinkButton ID="InsertButton" CssClass="btn btn-primary me-2" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                            &nbsp;<asp:LinkButton ID="InsertCancelButton" CssClass="btn btn-light" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                        </InsertItemTemplate>

                    </asp:FormView>
                    <asp:SqlDataSource ID="SqlDataSourceFVStudentMaster" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" InsertCommand="StudentMasterInsert" InsertCommandType="StoredProcedure" SelectCommand="StudentMasterGet" SelectCommandType="StoredProcedure" UpdateCommand="StudentMasterUpdate" UpdateCommandType="StoredProcedure" OnInserting="SqlDataSourceFVStudentMaster_Inserting">
                        <InsertParameters>
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="MiddleName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter Name="EmailID" Type="String" />
                            <asp:Parameter Name="MobileNo" Type="String" />
                            <asp:Parameter Name="DepartmentID" Type="Int32" />
                            <asp:Parameter Name="SemesterID" Type="Int32" />
                            <asp:Parameter Name="DivisionID" Type="Int32" />
                            <asp:Parameter Name="AcademicID" Type="Int32" />
                            <asp:Parameter Name="UniqueNo" Type="String" />
                            <asp:Parameter Name="MeritNo" Type="String" />
                            <asp:Parameter Name="LastSchoolName" Type="String" />
                            <asp:Parameter Name="EligibileForScholarship" Type="Boolean" />
                            <asp:Parameter Name="ImagePath" Type="String" />
                        </InsertParameters>
                        <SelectParameters>
                            <asp:ControlParameter ControlID="GridView1" Name="StudentID" PropertyName="SelectedValue" Type="Int32" />
                        </SelectParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="StudentID" Type="Int32" />
                            <asp:Parameter Name="Title" Type="String" />
                            <asp:Parameter Name="FirstName" Type="String" />
                            <asp:Parameter Name="MiddleName" Type="String" />
                            <asp:Parameter Name="LastName" Type="String" />
                            <asp:Parameter Name="EmailID" Type="String" />
                            <asp:Parameter Name="MobileNo" Type="String" />
                            <asp:Parameter Name="DepartmentID" Type="Int32" />
                            <asp:Parameter Name="SemesterID" Type="Int32" />
                            <asp:Parameter Name="DivisionID" Type="Int32" />
                            <asp:Parameter Name="AcademicID" Type="Int32" />
                            <asp:Parameter Name="UniqueNo" Type="String" />
                            <asp:Parameter Name="MeritNo" Type="String" />
                            <asp:Parameter Name="LastSchoolName" Type="String" />
                            <asp:Parameter Name="EligibileForScholarship" Type="Boolean" />
                            <asp:Parameter Name="ImagePath" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
    <section>
        <div class="col-lg-12 grid-margin stretch-card">
            <div class="card">
                <div class="card-body">

                    <div class="table-responsive">
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="StudentID" DataSourceID="SqlDataSourceGVStudentMaster">
                            <Columns>
                                <asp:BoundField DataField="StudentID" HeaderText="StudentID" InsertVisible="False" ReadOnly="True" SortExpression="StudentID" />
                                <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                <asp:BoundField DataField="MiddleName" HeaderText="MiddleName" SortExpression="MiddleName" />
                                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                <asp:BoundField DataField="EmailID" HeaderText="EmailID" SortExpression="EmailID" />
                                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                                <asp:BoundField DataField="DepartmentID" HeaderText="DepartmentID" SortExpression="DepartmentID" />
                                <asp:BoundField DataField="SemesterID" HeaderText="SemesterID" SortExpression="SemesterID" />
                                <asp:BoundField DataField="DivisionID" HeaderText="DivisionID" SortExpression="DivisionID" />
                                <asp:BoundField DataField="AcademicID" HeaderText="AcademicID" SortExpression="AcademicID" />
                                <asp:BoundField DataField="UniqueNo" HeaderText="UniqueNo" SortExpression="UniqueNo" />
                                <asp:BoundField DataField="MeritNo" HeaderText="MeritNo" SortExpression="MeritNo" />
                                <asp:BoundField DataField="LastSchoolName" HeaderText="LastSchoolName" SortExpression="LastSchoolName" />
                                <asp:CheckBoxField DataField="EligibileForScholarship" HeaderText="EligibileForScholarship" SortExpression="EligibileForScholarship" />
                                <asp:BoundField DataField="ImagePath" HeaderText="ImagePath" SortExpression="ImagePath" />
                                <asp:TemplateField HeaderText="Actions">
                                    <ItemTemplate>
                                        <asp:Button ID="btnEdit" runat="server" CommandName="Select" Text="Edit" />
                                        <asp:Button ID="btnDelete" runat="server" CommandName="Delete" Text="Delete" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSourceGVStudentMaster" runat="server" ConnectionString="<%$ ConnectionStrings:CMSConnectionString %>" DeleteCommand="StudentMasterDelete" DeleteCommandType="StoredProcedure" SelectCommand="StudentMasterGet" SelectCommandType="StoredProcedure">
                            <DeleteParameters>
                                <asp:Parameter Name="StudentID" Type="Int32" />
                            </DeleteParameters>
                            <SelectParameters>
                                <asp:Parameter DefaultValue="0" Name="StudentID" Type="Int32" />
                            </SelectParameters>
                        </asp:SqlDataSource>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

