﻿Imports System.Web.SessionState
Imports Prosegur.Genesis.Web.Login

Public Class Global_asax
    Inherits System.Web.HttpApplication

    Sub Application_Start(sender As Object, e As EventArgs)

        Parametros.URLServicio = ConfigurationManager.AppSettings("UrlServicio")
        Parametros.URLServicioTokenLogin = ConfigurationManager.AppSettings("UsuarioWSLogin")
        Parametros.URLServicioTokenSenha = ConfigurationManager.AppSettings("PasswordWSLogin")
        Parametros.PathXmlError = ConfigurationManager.AppSettings("PathXmlError")

    End Sub

    Sub Session_Start(sender As Object, e As EventArgs)
        ' Fires when the session is started
    End Sub

    Sub Application_BeginRequest(sender As Object, e As EventArgs)
        ' Fires at the beginning of each request
    End Sub

    Sub Application_AuthenticateRequest(sender As Object, e As EventArgs)
        ' Fires upon attempting to authenticate the use
    End Sub

    Sub Application_Error(sender As Object, e As EventArgs)
        ' Fires when an error occurs
    End Sub

    Sub Session_End(sender As Object, e As EventArgs)
        ' Fires when the session ends
    End Sub

    Sub Application_End(sender As Object, e As EventArgs)
        ' Fires when the application ends
    End Sub

    Sub Application_PreRequestHandlerExecute(sender As Object, e As EventArgs)
        HelperBugsnag.BeforeNotify()
    End Sub

End Class