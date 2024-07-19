<%@ Page Title="Login" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ControlEscolar.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .login-container {
            max-width: 400px;
            margin: 50px auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            background-color: #f9f9f9;
        }
        .login-container h2 {
            text-align: center;
            color: #333;
        }
        .login-container .form-group {
            margin-bottom: 15px;
        }
        .login-container .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .login-container .form-group input,
        .login-container .form-group select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-container .form-group button {
            width: 100%;
            padding: 10px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .login-container .form-group button:hover {
            background-color: #0056b3;
        }
        .login-container .error-message {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }
    </style>

    <div class="login-container">
        <h2>Inicio de Sesión</h2>
        <asp:Label ID="lblMessage" runat="server" CssClass="error-message" Text=""></asp:Label>
        <div class="form-group">
            <asp:Label ID="lblUsername" runat="server" AssociatedControlID="txtUsername">Usuario</asp:Label>
            <asp:TextBox ID="txtUsername" runat="server" Placeholder="Usuario" CssClass="form-control" OnTextChanged="txtUsername_TextChanged"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lblPassword" runat="server" AssociatedControlID="txtPassword">Contraseña</asp:Label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Placeholder="Contraseña" CssClass="form-control"></asp:TextBox>
        </div>
        <div class="form-group">
            <asp:Label ID="lblRole" runat="server" AssociatedControlID="ddlRole">Rol</asp:Label>
            <asp:DropDownList ID="ddlRole" runat="server" CssClass="form-control">
                <asp:ListItem Text="Seleccionar Rol" Value=""></asp:ListItem>
                <asp:ListItem Text="Directivo" Value="Directivo"></asp:ListItem>
                <asp:ListItem Text="Maestro" Value="Maestro"></asp:ListItem>
                <asp:ListItem Text="Alumno" Value="Alumno"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="form-group">
            <asp:Button ID="btnLogin" runat="server" Text="Iniciar Sesión" CssClass="btn btn-primary" OnClick="btnLogin_Click" />
        </div>
    </div>
</asp:Content>

