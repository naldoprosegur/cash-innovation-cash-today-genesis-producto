﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated. 
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict On
Option Explicit On


Partial Public Class BusquedaTransaccionesPopup

    '''<summary>
    '''hdnSelecionado control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents hdnSelecionado As Global.System.Web.UI.WebControls.HiddenField

    '''<summary>
    '''UpdatePanelGeral control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents UpdatePanelGeral As Global.System.Web.UI.UpdatePanel

    '''<summary>
    '''lblSubTitulosCriteriosBusqueda control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents lblSubTitulosCriteriosBusqueda As Global.System.Web.UI.WebControls.Label

    '''<summary>
    '''lblFecha control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents lblFecha As Global.System.Web.UI.WebControls.Label

    '''<summary>
    '''txtFecha control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents txtFecha As Global.System.Web.UI.WebControls.TextBox

    '''<summary>
    '''csvFecha control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents csvFecha As Global.System.Web.UI.WebControls.CustomValidator

    '''<summary>
    '''btnBuscar control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents btnBuscar As Global.System.Web.UI.WebControls.Button

    '''<summary>
    '''btnLimpar control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents btnLimpar As Global.System.Web.UI.WebControls.Button

    '''<summary>
    '''gvDatos control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents gvDatos As Global.DevExpress.Web.ASPxGridView.ASPxGridView

    '''<summary>
    '''btnAceptar control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents btnAceptar As Global.System.Web.UI.WebControls.Button

    '''<summary>
    '''btnCancelar control.
    '''</summary>
    '''<remarks>
    '''Auto-generated field.
    '''To modify move field declaration from designer file to code-behind file.
    '''</remarks>
    Protected WithEvents btnCancelar As Global.System.Web.UI.WebControls.Button

    '''<summary>
    '''Master property.
    '''</summary>
    '''<remarks>
    '''Auto-generated property.
    '''</remarks>
    Public Shadows ReadOnly Property Master() As Prosegur.[Global].GesEfectivo.IAC.Web.Master.MasterModal
        Get
            Return CType(MyBase.Master, Prosegur.[Global].GesEfectivo.IAC.Web.Master.MasterModal)
        End Get
    End Property
End Class