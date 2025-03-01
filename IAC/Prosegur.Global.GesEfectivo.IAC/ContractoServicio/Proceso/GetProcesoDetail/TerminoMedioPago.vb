﻿Namespace Proceso.GetProcesoDetail

    <Serializable()> _
    Public Class TerminoMedioPago

#Region "[VARIÁVEIS]"

        Private _codigo As String
        Private _descripcion As String
        Private _esobligatorioTerminoMedioPago As Boolean

#End Region

#Region "[PROPRIEDADES]"

        Public Property Codigo() As String
            Get
                Return _codigo
            End Get
            Set(value As String)
                _codigo = value
            End Set
        End Property

        Public Property Descripcion() As String
            Get
                Return _descripcion
            End Get
            Set(value As String)
                _descripcion = value
            End Set
        End Property

        Public Property EsObligatorioTerminoMedioPago() As Boolean
            Get
                Return _esobligatorioTerminoMedioPago
            End Get
            Set(value As Boolean)
                _esobligatorioTerminoMedioPago = value
            End Set
        End Property

#End Region

    End Class

End Namespace