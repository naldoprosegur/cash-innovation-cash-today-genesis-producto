﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BusquedaOperario.aspx.vb"
    Inherits="Prosegur.Global.GesEfectivo.Reportes.Web.BusquedaOperario" EnableEventValidation="false" %>

<%@ Register Assembly="Prosegur.Web" Namespace="Prosegur.Web" TagPrefix="pro" %>
<%@ Register Src="Controles/Erro.ascx" TagName="Erro" TagPrefix="uc1" %>
<%@ Register Src="Controles/Cabecalho.ascx" TagName="Cabecalho" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Reportes - Busqueda Puesto</title>
    <link href="Css/css.css" rel="stylesheet" type="text/css" />
    <%--<HTTP-EQUIV="PRAGMA" content="NO-CACHE"></HTTP-EQUIV> --%>
    <style type="text/css">
        .style4
        {
            width: 178px;
        }
        .style5
        {
            width: 121px;
        }
        .style6
        {
            width: 110px;
        }
    </style>
    <script src="JS/Funcoes.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table width="768" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF">
                <tr>
                    <td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <uc3:Cabecalho ID="Cabecalho1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <uc1:Erro ID="ControleErro" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="titulo02">
                        <table cellpadding="0" cellspacing="4" border="0">
                            <tr>
                                <td>
                                    <img src="imagenes/ico01.jpg" alt="" width="16" height="18" />
                                </td>
                                <td>
                                    <asp:Label ID="lblSubTitulosCriteriosBusqueda" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width: 768px;" cellspacing="0" cellpadding="3" border="0">
                            <tr>
                                <td class="espaco_inicial">
                                    &nbsp;
                                </td>
                                <td align="right" class="espaco_inicial">
                                    <asp:Label ID="lblDelegacion" runat="server" CssClass="Lbl2"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDelegacion" runat="server" ReadOnly="true" CssClass="Text02" MaxLength="20"></asp:TextBox>
                                </td>

                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td align="right">
                                    <asp:Label ID="lblNombre" runat="server" CssClass="Lbl2"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtNombre" runat="server" MaxLength="50" CssClass="Text02" 
                                        Columns="50"></asp:TextBox>
                                </td>

                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td align="right">
                                    <asp:Label ID="lblApellido" runat="server" CssClass="Lbl2"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtApellido" runat="server" MaxLength="50" CssClass="Text02" 
                                        Columns="50"></asp:TextBox>
                                </td>

                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td align="right">
                                    <asp:Label ID="lblLogin" runat="server" CssClass="Lbl2"></asp:Label>
                                </td>
                                <td align="left">
                                    <asp:TextBox ID="txtLogin" runat="server" CssClass="Text02" MaxLength="50" 
                                        Columns="50"></asp:TextBox>
                                </td>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td colspan="3" align="right">
                                    <table>
                                        <tr>
                                            <td>
                                                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Conditional">
                                                    <ContentTemplate>
                                                        <pro:Botao ID="btnBuscar" runat="server" EstiloIcone="EstiloIcone" Habilitado="True"
                                                            Tipo="Consultar" Titulo="btnBuscar">
                                                        </pro:Botao>
                                                    </ContentTemplate>
                                                </asp:UpdatePanel>
                                            </td>
                                            <td>
                                                <pro:Botao ID="btnLimpar" runat="server" EstiloIcone="EstiloIcone" Habilitado="True"
                                                    Tipo="Cancelar" Titulo="btnLimpiar">
                                                </pro:Botao>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                                <td width="20px">
                                    &nbsp;
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width: 768px;" cellspacing="0" cellpadding="3" border="0">
                            <tr>
                                <td class="titulo02">
                                    <table cellpadding="0" cellspacing="4" border="0">
                                        <tr>
                                            <td>
                                                <img src="imagenes/ico01.jpg" alt="" width="16" height="18" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblSubTitulosOperario" runat="server"></asp:Label>
                                            </td>
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td align="center" width="100%">
                                    <pro:ProsegurGridView ID="ProsegurGridView" runat="server" AllowPaging="True" AllowSorting="True"
                                        ColunasSelecao="Login" EstiloDestaque="GridLinhaDestaque"
                                        GridPadrao="False" PageSize="10" AutoGenerateColumns="False" Ajax="True" GerenciarControleManualmente="True"
                                        ExibirCabecalhoQuandoVazio="false" NumeroRegistros="0" OrdenacaoAutomatica="True"
                                        PaginaAtual="0" PaginacaoAutomatica="True" Width="95%">
                                        <Pager ID="objPager_ProsegurGridView1">
                                            <FirstPageButton Visible="True">
                                            </FirstPageButton>
                                            <LastPageButton Visible="True">
                                            </LastPageButton>
                                            <Summary Text="Página {0} de {1} ({2} itens)" />
                                            <SummaryStyle>
                                            </SummaryStyle>
                                        </Pager>
                                        <HeaderStyle CssClass="GridTitulo" Font-Bold="True" />
                                        <AlternatingRowStyle CssClass="GridLinhaAlternada" />
                                        <RowStyle CssClass="GridLinhaPadrao" />
                                        <TextBox ID="objTextoProsegurGridView1" AutoPostBack="True" MaxLength="10" Width="30px">                                                
                                        </TextBox>
                                        <Columns>
                                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" SortExpression="Nombre" />
                                            <asp:BoundField DataField="Apellido1" HeaderText="Apellido" SortExpression="Apellido1" />
                                            <asp:BoundField DataField="Login" HeaderText="Login" SortExpression="Login" />
                                        </Columns>
                                    </pro:ProsegurGridView>
                                </td>
                            </tr>
                            <asp:Panel ID="pnlSemRegistro" runat="server" Visible="false">
                                <tr>
                                    <td align="center" colspan="4">
                                        <table border="1" cellpadding="3" cellspacing="0" class="SemRegistro">
                                            <tr>
                                                <td style="border-width: 0;">
                                                    <asp:Image ID="imgErro" runat="server" src="Imagenes/info.jpg" />
                                                </td>
                                                <td style="border-width: 0;">
                                                    <asp:Label ID="lblSemRegistro" runat="server" Text="Label" CssClass="Lbl2">Não existem dados a serem exibidos.</asp:Label>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </asp:Panel>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td align="center">
                        <table border="0" cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 25%; text-align: center">
                                    <pro:Botao ID="btnAceptar" runat="server" Habilitado="True" Tipo="Confirmar" Titulo="btnAceptar"
                                        ExibirLabelBtn="True" ExecutaValidacaoCliente="True">
                                    </pro:Botao>
                                </td>
                                <td style="width: 25%; text-align: center">
                                    <pro:Botao ID="btnCancelar" runat="server" EstiloIcone="EstiloIcone" Habilitado="True"
                                        Tipo="Sair" Titulo="btnCancelar">
                                    </pro:Botao>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                <ProgressTemplate>
                    <div id="AlertDivAll" align="center" style="filter: alpha(opacity=50); /* ie */ -moz-opacity: .5;
                        /* mozilla */ background: #FFFFFF; position: absolute; left: 0px; top: 0px; width: 100%;
                        height: 100%; z-index: 1000;">
                        <img src="Imagenes/loader1.gif" style="position: absolute; left: 50%; top: 50%;" />
                    </div>
                </ProgressTemplate>
            </asp:UpdateProgress>
            <script type="text/javascript">
                //Script necessário para evitar que dê erro ao clicar duas vezes em algum controle que esteja dentro do updatepanel.
                var prm = Sys.WebForms.PageRequestManager.getInstance();
                prm.add_initializeRequest(initializeRequest);

                function initializeRequest(sender, args) {
                    if (prm.get_isInAsyncPostBack()) {

                        args.set_cancel(true);

                    }
                }
            </script>
        </ContentTemplate>
    </asp:UpdatePanel>
    </form>
</body>
</html>
