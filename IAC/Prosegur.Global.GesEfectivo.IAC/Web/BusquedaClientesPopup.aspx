﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BusquedaClientesPopup.aspx.vb"
    Inherits="Prosegur.Global.GesEfectivo.IAC.Web.BusquedaClientesPopup" EnableEventValidation="false" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ Register Assembly="Prosegur.Web" Namespace="Prosegur.Web" TagPrefix="pro" %>
<%@ Register Src="Controles/Erro.ascx" TagName="Erro" TagPrefix="uc1" %>
<%@ Register Src="Controles/Cabecalho.ascx" TagName="Cabecalho" TagPrefix="uc3" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>IAC - Mantenimiento de Subcanales</title>
     
    <script src="JS/Funcoes.js" type="text/javascript"></script>
</head>
<body class="barraBody">
    <div style="width: 785px; margin-left: 2px; margin-right: 2px;">
        <form id="form1" runat="server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table style="border-collapse:collapse; background-color: #FFFFFF; width:100%; margin:0px;">
                <tr>
                    <td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <uc3:Cabecalho ID="Cabecalho1" runat="server" />
                    </td>
                </tr>
                <tr id="trTituloBusqueda" runat="server">
                    <td class="titulo02">
                        <table cellpadding="0" cellspacing="4" border="0">
                            <tr>
                                <td>
                                    <img src="imagenes/ico01.jpg" alt="" width="16" height="18" />
                                </td>
                                <td>
                                    <asp:Label ID="lblTituloClientes" runat="server"></asp:Label>
                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <uc1:Erro ID="ControleErro" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <table style="width: 768px;"   border="0">
                            <tr id="trCamposBusqueda" runat="server">
                                <td align="right" style="width: 121px; font-size: medium; font-family: Arial;">
                                    <asp:Label ID="lblCodigo" runat="server" CssClass="Lbl2"></asp:Label>
                                </td>
                                <td style="width: 178px;">
                                    <asp:TextBox ID="txtCodigo" runat="server" MaxLength="15"></asp:TextBox>
                                </td>
                                <td align="right" style="width: 110px; font-size: medium; font-family: Arial;">
                                    <asp:Label ID="lblDescricao" runat="server" CssClass="Lbl2"></asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="txtDescricao" runat="server" Width="260px" MaxLength="36"></asp:TextBox>
                                </td>
                            </tr>
                            <tr id="trBotoesBusqueda" runat="server">
                                <td colspan="4" align="right">
                                    <table>
                                        <tr>
                                            <td>
                                                <pro:Botao ID="btnBuscar" runat="server" EstiloIcone="EstiloIcone" Habilitado="True"
                                                    Tipo="Consultar" Titulo="btnBuscar">
                                                </pro:Botao>
                                            </td>
                                            <td>
                                                <pro:Botao ID="btnLimpar" runat="server" EstiloIcone="EstiloIcone" Habilitado="True"
                                                    Tipo="Cancelar" Titulo="btnLimpiar">
                                                </pro:Botao>
                                            </td>
                                        </tr>
                                    </table>
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
                <tr id="tr1" runat="server">
                    <td class="titulo02">
                        <table cellpadding="0" cellspacing="4" border="0">
                            <tr>
                                <td>
                                    <img src="imagenes/ico01.jpg" alt="" width="16" height="18" />
                                </td>
                                <td>
                                    <asp:Label ID="lblSubTitulosClientes" runat="server"></asp:Label>
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
                        <table style="width: 768px;"   border="0">
                            <tr>
                                <td align="center" width="100%">
                                    <pro:ProsegurGridView ID="ProsegurGridView" runat="server" AllowPaging="True" AllowSorting="True"
                                        ColunasSelecao="Codigo" EstiloDestaque="GridLinhaDestaque" GridPadrao="False"
                                        AutoGenerateColumns="False" Ajax="True" GerenciarControleManualmente="True" NumeroRegistros="0"
                                        OrdenacaoAutomatica="True" PaginaAtual="0" PaginacaoAutomatica="True" Width="95%"
                                        Height="100%" ExibirCabecalhoQuandoVazio="False">
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
                                            &nbsp;            
                                        </TextBox>
                                        <Columns>                                            
                                            <asp:TemplateField HeaderText="">
                                                <ItemTemplate><asp:CheckBox ID="chkSelecionadoNormal" runat="server" /></ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Codigo" HeaderText="Codigo" SortExpression="Codigo" />
                                            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion" />
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
                    <td>
                        &nbsp;
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
                        <asp:HiddenField ID="hdnSelecionados" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td>
                        &nbsp;
                    </td>
                </tr>
            </table>
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
    <div id="AlertDivAll" class="AlertLoading" style="visibility: hidden;"></div>
    </form>

    </div>
</body>
</html>
