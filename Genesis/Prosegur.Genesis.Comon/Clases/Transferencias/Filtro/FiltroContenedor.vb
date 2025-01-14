﻿Imports System.Collections.ObjectModel

Namespace Clases.Transferencias

    ''' <summary>
    ''' Classe que representa o Filtro de Remesas
    ''' </summary>
    ''' <remarks></remarks>
    <Serializable()>
    Public Class FiltroContenedor
        Inherits BindableBase

#Region "Variaveis"

        Private _Identificador As String
        Private _Precintos As ObservableCollection(Of String)
        Private _Codigo As String
        Private _TipoContenedor As TipoContenedor
        Private _FechaAltaDesde As Nullable(Of DateTime)
        Private _FechaAltaHasta As Nullable(Of DateTime)

#End Region

#Region "Propriedades"

        Public Property Identificador As String
            Get
                Return _Identificador
            End Get
            Set(value As String)
                SetProperty(_Identificador, value, "Identificador")
            End Set
        End Property

        Public Property Precintos As ObservableCollection(Of String)
            Get
                Return _Precintos
            End Get
            Set(value As ObservableCollection(Of String))
                SetProperty(_Precintos, value, "Precintos")
            End Set
        End Property

        Public Property Codigo As String
            Get
                Return _Codigo
            End Get
            Set(value As String)
                SetProperty(_Codigo, value, "Codigo")
            End Set
        End Property

        Public Property TipoContenedor As TipoContenedor
            Get
                Return _TipoContenedor
            End Get
            Set(value As TipoContenedor)
                SetProperty(_TipoContenedor, value, "TipoContenedor")
            End Set
        End Property

        Public Property FechaAltaDesde As Nullable(Of DateTime)
            Get
                Return _FechaAltaDesde
            End Get
            Set(value As Nullable(Of DateTime))
                SetProperty(_FechaAltaDesde, value, "FechaAltaDesde")
            End Set
        End Property

        Public Property FechaAltaHasta As Nullable(Of DateTime)
            Get
                Return _FechaAltaHasta
            End Get
            Set(value As Nullable(Of DateTime))
                SetProperty(_FechaAltaHasta, value, "FechaAltaHasta")
            End Set
        End Property

#End Region

    End Class

End Namespace
