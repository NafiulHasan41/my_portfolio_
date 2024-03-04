<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateEdu.aspx.cs" Inherits="Portfolio.UpdateEdu" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Education</title>
     <link href="adminAsset/adminDashboard.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">


        <section class="education">
            <h1>Education section Update</h1>

            <div class="edu-container">
                <!-- to insert into the table -->


                <div class="edu-input">

                    <asp:Panel ID="inputSection" runat="server">
                        <h2>Update Section</h2>

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
                            <asp:Button ID="btnAdd" CssClass="btn" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
