﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Comp229_Assign04._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <table>
        <asp:Repeater ID="modelsRepeater" runat="server" >
<ItemTemplate>
    <tr>
        <td>
            <asp:HyperLink runat="server" NavigateUrl='<%#String.Format("~/SingleModel.aspx?name={0}&faction={1}",Eval("name"),Eval("faction")) %>'>
<asp:Label runat="server"><%#Eval("name") %></asp:Label>
                
            </asp:HyperLink>
        </td>
        <td>
<asp:Label runat="server"><%#Eval("faction") %></asp:Label>
        </td>
    </tr>
</ItemTemplate>


        </asp:Repeater>

    </table>
     
    </asp:Content>