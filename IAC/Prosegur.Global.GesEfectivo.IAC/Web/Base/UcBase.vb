﻿
Public Class UcBase
    Inherits UserControl

    Protected _DecimalSeparador As String = Globalization.CultureInfo.CurrentCulture.NumberFormat.CurrencyDecimalSeparator
    Protected _MilharSeparador As String = Globalization.CultureInfo.CurrentCulture.NumberFormat.CurrencyGroupSeparator

    Public Event Erro As EventHandler(Of ErroEventArgs)
    Public Event ControleAtualizado As EventHandler

    Protected Overridable Sub OnErro(e As ErroEventArgs)
        RaiseEvent Erro(Me, e)
    End Sub

    Protected Overridable Sub OnControleAtualizado(e As EventArgs)
        RaiseEvent ControleAtualizado(Me, e)
    End Sub

    Protected Sub NotificarErro(erro As Exception)
        OnErro(New ErroEventArgs(erro))
    End Sub

    Protected Sub NotificarControleAtualizado()
        OnControleAtualizado(New EventArgs())
    End Sub

    ''' <summary>
    ''' Método que permite o desenvolvedor traduzir os controles da tela.
    ''' </summary>
    ''' <remarks></remarks>
    Protected Overridable Sub TraduzirControles()
    End Sub

    ''' <summary>
    ''' Método chamado no load da base.
    ''' </summary>
    ''' <remarks></remarks>
    Protected Overridable Sub Inicializar()
    End Sub

    ''' <summary>
    ''' Método que permite o desenvolvedor adicionar scripts para controles da tela.
    ''' </summary>
    ''' <remarks></remarks>
    Protected Overridable Sub AdicionarScripts()
    End Sub

    ' ''' <summary>
    ' ''' Método que permite o desenvolvedor configurar os tab index dos controles da tela.
    ' ''' </summary>
    ' ''' <remarks></remarks>
    'Public Overridable Sub ConfigurarTabIndexControle()
    'End Sub

    'Public Overrides Sub Focus()
    '    MyBase.Focus()

    '    Me.SetarFoco(Me.Controls)
    'End Sub

    'Private controleWeb As WebControl
    'Private Sub SetarFoco(controles As ControlCollection)
    '    For Each controle As Control In controles
    '        If (controle.HasControls()) Then
    '            Me.SetarFoco(controle.Controls)
    '        End If

    '        If (TypeOf (controle) Is WebControl) Then
    '            If (DirectCast(controle, WebControl).TabIndex <> 0 AndAlso DirectCast(controle, WebControl).Enabled AndAlso DirectCast(controle, WebControl).Visible) Then
    '                If (controleWeb Is Nothing) Then
    '                    controleWeb = DirectCast(controle, WebControl)
    '                End If

    '                If (DirectCast(controle, WebControl).TabIndex <= controleWeb.TabIndex) Then
    '                    controleWeb = DirectCast(controle, WebControl)
    '                    controleWeb.Focus()
    '                End If
    '            End If
    '        End If
    '    Next
    'End Sub

    ''' <summary>
    ''' Método que valida os campos obrigatorios do controle
    ''' </summary>
    ''' <returns></returns>
    ''' <remarks></remarks>
    Public Overridable Function ValidarControl() As List(Of String)
        Return New List(Of String)
    End Function

    Private Sub Page_Load(sender As Object, e As System.EventArgs) Handles Me.Load

        Try

            ' inicializar página filha
            Inicializar()
            ' traduzir controles da tela
            TraduzirControles()
            ' adicionar scripts
            AdicionarScripts()

            Response.Cache.SetCacheability(HttpCacheability.NoCache)

        Catch ex As Exception

            NotificarErro(ex)

        End Try

    End Sub

End Class
