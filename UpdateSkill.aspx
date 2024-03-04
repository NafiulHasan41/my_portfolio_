<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UpdateSkill.aspx.cs" Inherits="Portfolio.UpdateSkill" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Skill Exprience</title>

     <link href="adminAsset/adminDashboard.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
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
                            <asp:Button ID="sBtnAdd" CssClass="btn" runat="server" Text="Update" OnClick="sbtnUpdate_Click" />
                        </div>
                    </asp:Panel>
                </div>


            </div>


        </section>
    </form>
</body>
</html>
