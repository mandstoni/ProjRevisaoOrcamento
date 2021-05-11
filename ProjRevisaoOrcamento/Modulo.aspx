<%@ Page Title="Modulo" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Modulo.aspx.cs" Inherits="ProjRevisaoOrcamento.Modulo" %>
<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h3><b style="color:darkslateblue; padding:10px">Módulos</b></h3>
    <asp:HiddenField ID="IdH" runat="server" />
    <br />
    <label style="color:black; padding: 5px">Ambiente: </label>
    <asp:DropDownList ID="DdlAmbiente" runat="server" DataSourceID="Ambiente" DataTextField="descricao" DataValueField="descricao"></asp:DropDownList>
    <asp:SqlDataSource ID="Ambiente" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionSQLServer %>" SelectCommand="SELECT [descricao] FROM [TB_AMBIENTE]"></asp:SqlDataSource>
    <br />
    <label style="color:black; padding: 5px">Squad: </label>
    <asp:DropDownList ID="DdlSquad" runat="server" DataSourceID="Squad" DataTextField="nome" DataValueField="nome"></asp:DropDownList>
    <asp:SqlDataSource ID="Squad" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionSQLServer %>" SelectCommand="SELECT [nome] FROM [TB_SQUAD]"></asp:SqlDataSource>
    <br />
    <asp:Label ID="LblMsg" runat="server"></asp:Label>
    <br />
    <asp:Button ID="BtnSalvar" runat="server" OnClick="BtnSalvar_Click" Text="Salvar" Width="68px"   style= "color:green"/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnNovo" runat="server" OnClick="btnNovo_Click" Text="Novo" Width="68px"  style= "color:blue" />
    <br />
    <br />

    <asp:GridView ID="GVModulo" runat="server" GridLines="Vertical" AutoGenerateColumns="False" OnRowCommand="GVModulo_RowCommand" class="table table-striped">
        <Columns>
            <asp:BoundField DataField="id" HeaderText="Id" />
            <asp:BoundField DataField="ambiente" HeaderText="Ambiente" />
            <asp:BoundField DataField="squad" HeaderText="Squad" />
            <asp:ButtonField ButtonType="Button" CommandName="Editar" Text="Alterar" />
            <asp:ButtonField ButtonType="Button" CommandName="Excluir" ShowHeader="True" Text="Excluir" />
        </Columns>
    </asp:GridView>
</asp:Content>
