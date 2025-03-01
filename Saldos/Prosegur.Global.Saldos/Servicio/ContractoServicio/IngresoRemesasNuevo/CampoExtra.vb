﻿Namespace IngresoRemesasNuevo

    <Serializable()> _
    Public Class CampoExtra

#Region "[VARIÁVEIS]"

        Private _Nombre As String
        Private _Valor As String

#End Region

#Region "PROPRIEDADES"

        Public Property Nombre() As String
            Get
                Return _Nombre
            End Get
            Set(Value As String)
                _Nombre = Value
            End Set
        End Property

        Public Property Valor() As String
            Get
                Return _Valor
            End Get
            Set(Value As String)
                _Valor = Value
            End Set
        End Property

#End Region

        Public Overrides Function ToString() As String
            Return Me.Nombre & "=" & Me.Valor
        End Function

    End Class

End Namespace