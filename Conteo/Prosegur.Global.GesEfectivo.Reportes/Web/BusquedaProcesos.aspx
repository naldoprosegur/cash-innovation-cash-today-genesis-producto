﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="BusquedaProcesos.aspx.vb" Inherits="Prosegur.Global.GesEfectivo.Reportes.Web.BusquedaProcesos" EnableEventValidation="false" %>

<%@ Register assembly="Prosegur.Web" namespace="Prosegur.Web" tagprefix="pro" %>
<%@ Register src="Controles/Erro.ascx" tagname="Erro" tagprefix="uc1" %>
<%@ Register src="Controles/Cabecalho.ascx" tagname="Cabecalho" tagprefix="uc3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reportes - Búsqueda Procesos</title>
    <HTTP-EQUIV="PRAGMA" content="NO-CACHE"></HTTP-EQUIV>    
    <link href="Css/css.css" rel="stylesheet" type="text/css" />
        <style type="text/css"> 
                
            .style4
            {
                width: 178px;
            }
            .style5
            {
                width: 140px;
            }
            .style6
            {
                width: 238px;
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
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
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
                                <td><img src="imagenes/ico01.jpg" alt="" width="16" height="18" /></td>
                                <td><asp:Label  ID="lblTituloBusqueda" runat="server"></asp:Label></td>
                            </tr>
                        </table>               
	                </td>
                  </tr>
                  <tr>
                    <td>&nbsp;</td>
                  </tr>
                  <tr>
                    <td>
                        <table style="width:768px;" cellspacing="0" cellpadding="3" border="0">
                            <tr class="TrImpar">
                                <td class="style5" align="left" style="font-size:medium;font-family:Arial">
                                    <asp:Label ID="lblDelegacion" runat="server" CssClass="Lbl2"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtDelegacion" runat="server" Width="258px" MaxLength="15" ReadOnly="true" CssClass="Text01"></asp:TextBox>
                                </td>
                                <td class="style5" align="left" style="font-size:medium;font-family:Arial">
                                    <asp:Label ID="lblCliente" runat="server" CssClass="Lbl2"></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:TextBox ID="txtCliente" runat="server" Width="258px" MaxLength="68" ReadOnly="true" CssClass="Text01"></asp:TextBox>                                    
                                </td>
                            </tr>
                            <tr class="TrPar">
                                <td class="style5" align="left" style="font-size:medium;font-family:Arial">
                                    <asp:Label ID="lblSubCliente" runat="server" CssClass="Lbl2" ></asp:Label>
                                </td>
                                <td class="style6">
                                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                        <ContentTemplate>
                                    <asp:DropDownList ID="ddlSubCliente" runat="server" Width="266px" 
                                        CssClass="Text01" AutoPostBack="True">
                                    </asp:DropDownList>             
                                        </ContentTemplate>                                        
                                    </asp:UpdatePanel>
                                    
                                </td>
                                <td class="style5" align="left" style="font-size:medium;font-family:Arial">
                                    <asp:Label ID="lblPuntoServicio" runat="server" CssClass="Lbl2"></asp:Label>
                                </td>
                                <td class="style6">  
                                    <asp:DropDownList ID="ddlPuntoServicio" runat="server" Width="266px" CssClass="Text01">
                                    </asp:DropDownList>                                                                       
                                </td>
                            </tr>
                            <tr class="TrImpar">
                                <td class="style5" align="left" style="font-size:medium;font-family:Arial">
                                    <asp:Label ID="lblCanal" runat="server" CssClass="Lbl2" ></asp:Label>
                                </td>
                                <td class="style6">    
                                <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                                        <ContentTemplate>    
                                    <asp:DropDownList ID="ddlCanal" runat="server" Width="266px" CssClass="Text01" AutoPostBack="True">
                                    </asp:DropDownList>
                                    </ContentTemplate>
                                </asp:UpdatePanel>
                                </td>
                                <td class="style5" align="left" style="font-size:medium;font-family:Arial">
                                    <asp:Label ID="lblSubCanal" runat="server" CssClass="Lbl2"></asp:Label>
                                </td>
                                <td class="style6">  
                                    <asp:DropDownList ID="ddlSubCanal" runat="server" Width="266px" CssClass="Text01">
                                    </asp:DropDownList>
                                </td>
                            </tr>
                            <tr>
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
                            <tr>
                                <td class="titulo02" colspan="4">                    
                                    <table cellpadding="0" cellspacing="4" border="0">
                                        <tr>
                                            <td>
                                                <img src="imagenes/ico01.jpg" alt="" width="16" height="18" />
                                            </td>
                                            <td>
                                                <asp:Label ID="lblTituloProcesos" runat="server"></asp:Label>
                                            </td>
                                        </tr>                        
                                    </table>                
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">&nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" width="100%" colspan="4">
                                    <pro:ProsegurGridView ID="ProsegurGridView" runat="server" AllowPaging="False" AllowSorting="True"
                                    ColunasSelecao="IdentificadorProceso" EstiloDestaque="GridLinhaDestaque" 
                                    GridPadrao="False" AutoGenerateColumns="False" Ajax="True" GerenciarControleManualmente="True"
                                    NumeroRegistros="0" OrdenacaoAutomatica="True" PaginaAtual="0" PaginacaoAutomatica="False"
                                    Width="95%" Height="100%" ExibirCabecalhoQuandoVazio="False" DataKeyNames="IdentificadorProceso">                                        
                                        <HeaderStyle CssClass="GridTitulo" Font-Bold="True" />
                                        <AlternatingRowStyle CssClass="GridLinhaAlternada" />
                                        <RowStyle CssClass="GridLinhaPadrao" />
                                        <TextBox ID="objTextoProsegurGridView1" AutoPostBack="True" MaxLength="10" Width="30px">&nbsp;</TextBox>
                                            <Columns>
                                                <asp:TemplateField HeaderText="Selecionar?">
                                                    <ItemTemplate>
                                                        <asp:CheckBox ID="chkItem" runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="DescripcionCliente" HeaderText="DescripcionCliente" 
                                                    SortExpression="DescripcionCliente" />
                                                <asp:BoundField DataField="DescripcionSubcliente" 
                                                    HeaderText="DescripcionSubcliente" SortExpression="DescripcionSubcliente" />
                                                <asp:BoundField DataField="DescripcionPuntoServicio" 
                                                    HeaderText="DescripcionPuntoServicio" 
                                                    SortExpression="DescripcionPuntoServicio" />
                                                <asp:BoundField DataField="DescripcionCanal" HeaderText="DescripcionCanal" 
                                                    SortExpression="DescripcionCanal" />
                                                <asp:BoundField DataField="DescripcionSubcanal" 
                                                    HeaderText="DescripcionSubcanal" SortExpression="DescripcionSubcanal" />                                                
                                                <asp:BoundField DataField="DescripcionProceso" HeaderText="DescripcionProceso" 
                                                    SortExpression="DescripcionProceso" />
                                                <asp:BoundField DataField="CodigoDelegacion" HeaderText="CodigoDelegacion" 
                                                    SortExpression="CodigoDelegacion" Visible="False"/>
                                                <asp:TemplateField HeaderText="Vigente" SortExpression="vigente">
                                                    <ItemTemplate>
                                                        <asp:Image ID="imgVigente" runat="server" />
                                                    </ItemTemplate>
                                                </asp:TemplateField>
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
                                <td style="width:25%;text-align:center">                    
                                        <pro:Botao ID="btnAceptar" runat="server" 
                                            Habilitado="True" Tipo="Confirmar" Titulo="btnAceptar" 
                                            ExibirLabelBtn="True" ExecutaValidacaoCliente="True"></pro:Botao></td>
                                            
                                    <td style="width:25%;text-align:center"><pro:Botao ID="btnCancelar" runat="server" 
                                            EstiloIcone="EstiloIcone" Habilitado="True" Tipo="Sair" 
                                            Titulo="btnCancelar"></pro:Botao></td>                                                                                          
                            </tr>        
                        </table>          
                    </td>
                  </tr>
                </table>
                <asp:UpdateProgress ID="UpdateProgress1" runat="server">
                    <ProgressTemplate>
                        <div id="AlertDivAll" align="center" style="filter: alpha(opacity=50); /* ie */ -moz-opacity: .5; /* mozilla */ background:#FFFFFF; position:absolute; left:0px; top:0px; width:100%; height:100%; z-index: 1000; ">
                            <img src="Imagenes/loader1.gif" style="position:absolute; left:50%; top:50%;"/>
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
