﻿Namespace GetIac

    <Serializable()> _
    Public Class Iac

#Region "Variáveis"

        Private _codigo As String
        Private _descripcion As String
        Private _observaciones As String
        Private _vigente As Boolean
        Private _terminosIac As TerminoIacColeccion


#End Region

#Region "Propriedades"

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

        Public Property Observaciones() As String
            Get
                Return _observaciones
            End Get
            Set(value As String)
                _observaciones = value
            End Set
        End Property

        Public Property Vigente() As Boolean
            Get
                Return _vigente
            End Get
            Set(value As Boolean)
                _vigente = value
            End Set
        End Property

        Public Property TerminosIac() As TerminoIacColeccion
            Get
                Return _terminosIac
            End Get
            Set(value As TerminoIacColeccion)
                _terminosIac = value
            End Set
        End Property


#End Region

    End Class
End Namespace
