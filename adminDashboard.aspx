<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminDashboard.aspx.cs" Inherits="Portfolio.adminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Pannel</title>

     <!--
   - custom css link
 -->
 <link href="adminAsset/adminDashboard.css" rel="stylesheet" />
 

</head>
<body>
    <form id="form1" runat="server">


        <header>
            <div>
                <h1>Admin Pannel</h1>
            </div>
        </header>


        <main>


              <!-- Education Section Ok! -->

            <section class="education">
                <h1>Education section</h1>

                <div class="edu-container">
                    <!-- to insert into the table -->


                    <div class="edu-input">

                        <asp:Panel ID="inputSection" runat="server">
                            <h2>Input Section</h2>

                            <div>
                                <asp:Label ID="lblId" runat="server" AssociatedControlID="txtId">ID:</asp:Label>
                                <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label ID="lblSchoolName" runat="server" AssociatedControlID="txtSchoolName">School/College/Versity Name:</asp:Label>
                                <asp:TextBox ID="txtSchoolName" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label ID="lblStartYear" runat="server" AssociatedControlID="txtStartYear">Start Year:</asp:Label>
                                <asp:TextBox ID="txtStartYear" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label ID="lblEndYear" runat="server" AssociatedControlID="txtEndYear">End Year:</asp:Label>
                                <asp:TextBox ID="txtEndYear" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label ID="lblDescription" runat="server" AssociatedControlID="txtDescription">Description:</asp:Label>
                                <asp:TextBox ID="txtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Button ID="btnAdd" CssClass="btn" runat="server" Text="Add"  OnClick="btnAdd_Click" />
                            </div>
                        </asp:Panel>
                    </div>

                    <!-- to display the table -->

                    <div class="edu-display">

                        <asp:Panel ID="dataSection" runat="server">
                            <h2>Data Section</h2>
                            <asp:GridView ID="educationField" runat="server" AutoGenerateColumns="False" OnRowCommand="schools_RowCommand" >
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" SortExpression="Id" />
                                    <asp:BoundField DataField="SchoolName" HeaderText="Institute Name" SortExpression="SchoolName" />
                                    <asp:BoundField DataField="StartYear" HeaderText="Start Year" SortExpression="StartYear" />
                                    <asp:BoundField DataField="EndYear" HeaderText="End Year" SortExpression="EndYear" />
                                    <asp:BoundField DataField="Description" HeaderText="Description" SortExpression="Description" />
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:Button CssClass="btn" ID="btnUpdate" runat="server" Text="Update" CommandName="Update" CommandArgument='<%# Eval("id") %>' />
                                            <asp:Button CssClass="btn" ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" CommandArgument='<%# Eval("id") %>' OnClientClick="return confirm('Delete this record?');" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </div>
                </div>


            </section>

            
              <!-- Education Section Ok! -->



              <!-- Exprience Section Ok! -->

            <section class="education">
                <h1>Exprience section</h1>

                <div class="edu-container">
                    <!-- to insert into the table -->


                    <div class="edu-input">

                        <asp:Panel ID="InputSectionExprience" runat="server">
                            <h2>Input Exprience Section</h2>

                            <div>
                                <asp:Label ID="eLbId" runat="server" AssociatedControlID="etxtId">ID:</asp:Label>
                                <asp:TextBox ID="etxtId" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label ID="eLbTitle" runat="server" AssociatedControlID="etxtTitle">Job Title:</asp:Label>
                                <asp:TextBox ID="etxtTitle" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label ID="eLbDuration" runat="server" AssociatedControlID="etxtDuration">Duration:</asp:Label>
                                <asp:TextBox ID="etxtDuration" runat="server"></asp:TextBox>
                            </div>
            
                            <div>
                                <asp:Label ID="eLbDescription" runat="server" AssociatedControlID="etxtDescription">Description:</asp:Label>
                                <asp:TextBox ID="etxtDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Button ID="eBtnAdd" CssClass="btn" runat="server" Text="ADD"  OnClick="ebtnAdd_Click" />
                            </div>
                        </asp:Panel>
                    </div>

                    <!-- to display the table -->

                    <div class="edu-display">

                        <asp:Panel ID="edataSection" runat="server">
                            <h2>Exprience  Data Section</h2>
                            <asp:GridView ID="eeducationField" runat="server" AutoGenerateColumns="False" OnRowCommand="exprience_RowCommand" >
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" SortExpression="Id" />
                                    <asp:BoundField DataField="Title" HeaderText="Institute Title" SortExpression="Title" />
                                    <asp:BoundField DataField="Duration" HeaderText="Duration" SortExpression="Duration" />
                                    <asp:BoundField DataField="Description" HeaderText="Exprience Description" SortExpression="Description" />
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:Button CssClass="btn" ID="ebtnUpdate" runat="server" Text="eUpdate" CommandName="eUpdate" CommandArgument='<%# Eval("id") %>' />
                                            <asp:Button CssClass="btn" ID="ebtnDelete" runat="server" Text="eDelete" CommandName="eDelete" CommandArgument='<%# Eval("id") %>' OnClientClick="return confirm('Delete this record?');" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </div>
                </div>


            </section>



               <!-- Exprience Section Ok! -->



                <!-- Skill Section Ok! -->

            <section class="education">
                <h1>Skill section</h1>

                <div class="edu-container">
                    <!-- to insert into the table -->


                    <div class="edu-input">

                        <asp:Panel ID="InputSectionSkill" runat="server">
                            <h2>Input Skill Section</h2>

                            <div>
                                <asp:Label ID="sLbId" runat="server" AssociatedControlID="stxtId">ID:</asp:Label>
                                <asp:TextBox ID="stxtId" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label ID="sLbSkillName" runat="server" AssociatedControlID="stxtSkillName"> SKILL Name :</asp:Label>
                                <asp:TextBox ID="stxtSkillName" runat="server"></asp:TextBox>
                            </div>
                            <div>
                                <asp:Label ID="sLBSkillPer" runat="server" AssociatedControlID="stxtSkillPer">SkillPercentage:</asp:Label>
                                <asp:TextBox ID="stxtSkillPer" runat="server"></asp:TextBox>
                            </div>

                       
                            <div>
                                <asp:Button ID="sBtnAdd" CssClass="btn" runat="server" Text="ADD" OnClick="sbtnAdd_Click" />
                            </div>
                        </asp:Panel>
                    </div>

                    <!-- to display the table -->

                    <div class="edu-display">

                        <asp:Panel ID="sdataSection" runat="server">
                            <h2>Skill  Data Section</h2>
                            <asp:GridView ID="seducationField" runat="server" AutoGenerateColumns="False" OnRowCommand="skill_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" SortExpression="Id" />
                                    <asp:BoundField DataField="SkillName" HeaderText="Skill Name" SortExpression="Skill" />
                                    <asp:BoundField DataField="SkillPercentage" HeaderText="SkillPercentage" SortExpression="SkillPercentage" />
                                    <asp:TemplateField HeaderText="Action">
                                        <ItemTemplate>
                                            <asp:Button CssClass="btn" ID="sbtnUpdate" runat="server" Text="sUpdate" CommandName="sUpdate" CommandArgument='<%# Eval("id") %>' />
                                            <asp:Button CssClass="btn" ID="sbtnDelete" runat="server" Text="sDelete" CommandName="sDelete" CommandArgument='<%# Eval("id") %>' OnClientClick="return confirm('Delete this record?');" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </div>
                </div>


            </section>



            <!-- Skill Section Ok! -->



             <!-- form Section Ok! -->



            <section class="FormUser">
                <h1>Contact Message section</h1>
                <!-- to insert into the table -->

                <div class="contact-show">

                    <asp:GridView ID="gvContacts" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:BoundField DataField="FullName" HeaderText="Full Name" SortExpression="FullName" />
                            <asp:BoundField DataField="emailUser" HeaderText="Email" SortExpression="Email" />
                            <asp:BoundField DataField="MessageUser" HeaderText="Message" SortExpression="Message" />
                        </Columns>
                    </asp:GridView>
                </div>
            </section>



        </main>





    </form>


  



</body>
</html>
