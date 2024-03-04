<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateExp.aspx.cs" Inherits="Portfolio.UpdateExp" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Update Exprience</title>
      <link href="adminAsset/adminDashboard.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
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
                            <asp:Button ID="eBtnAdd" CssClass="btn" runat="server" Text="Update" OnClick="ebtnUpdate_Click" />
                        </div>
                    </asp:Panel>
                </div>
            </div>


        </section>
    </form>
</body>
</html>
