﻿'------------------------------------------------------------------------------
' <auto-generated>
'     This code was generated by a tool.
'     Runtime Version:2.0.50727.1433
'
'     Changes to this file may cause incorrect behavior and will be lost if
'     the code is regenerated.
' </auto-generated>
'------------------------------------------------------------------------------

Option Strict Off
Option Explicit On

Imports System
Imports System.ComponentModel
Imports System.Diagnostics
Imports System.Web.Services
Imports System.Web.Services.Protocols
Imports System.Xml.Serialization
Imports Prosegur.Global.Seguridad.ContractoServicio
Imports Microsoft.Web.Services3.Security.Tokens

Namespace LoginGlobal

    '
    'This source code was auto-generated by wsdl, Version=2.0.50727.42.
    '

    '''<remarks/>
    <System.CodeDom.Compiler.GeneratedCodeAttribute("wsdl", "2.0.50727.42"), _
     System.ComponentModel.DesignerCategoryAttribute("code"), _
     System.Web.Services.WebServiceBindingAttribute(Name:="SeguridadSoap", [Namespace]:="http://Prosegur.Global.Seguridad")> _
    Partial Public Class Seguridad
        Inherits Microsoft.Web.Services3.WebServicesClientProtocol

        Private LoginOperationCompleted As System.Threading.SendOrPostCallback

        Private ObtenerUsuariosADOperationCompleted As System.Threading.SendOrPostCallback

        '''<remarks/>
        Public Sub New()

            MyBase.New()

            Me.Url = Prosegur.Genesis.Web.Login.Configuraciones.AppSettings("UrlLoginGlobal")

            Dim token As New UsernameToken(Prosegur.Genesis.Web.Login.Configuraciones.AppSettings("UsuarioWSLogin"), Prosegur.Genesis.Web.Login.Configuraciones.AppSettings("PasswordWSLogin"), PasswordOption.SendPlainText)
            Me.SetClientCredential(token)
            Me.SetPolicy("ClientPolicy")

        End Sub

        ''''<remarks/>
        'Public Event LoginCompleted As LoginCompletedEventHandler

        ''''<remarks/>
        'Public Event ObtenerUsuariosADCompleted As ObtenerUsuariosADCompletedEventHandler

        '''<remarks/>
        <System.Web.Services.Protocols.SoapDocumentMethodAttribute("http://Prosegur.Global.Seguridad/ObtenerDelegaciones", RequestNamespace:="http://Prosegur.Global.Seguridad", ResponseNamespace:="http://Prosegur.Global.Seguridad", Use:=System.Web.Services.Description.SoapBindingUse.Literal, ParameterStyle:=System.Web.Services.Protocols.SoapParameterStyle.Wrapped)> _
        Function ObtenerDelegaciones(Peticion As ObtenerDelegaciones.Peticion) As ObtenerDelegaciones.Respuesta
            Dim results() As Object = Me.Invoke("ObtenerDelegaciones", New Object() {Peticion})
            Return CType(results(0), ObtenerDelegaciones.Respuesta)
        End Function


    End Class


End Namespace