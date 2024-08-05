﻿Imports System.Xml.Serialization
Imports System.Xml

Namespace Parametro.GetAgrupaciones

    <XmlType(Namespace:="urn:GetAgrupaciones")> _
    <XmlRoot(Namespace:="urn:GetAgrupaciones")> _
    <Serializable()> _
    Public Class Respuesta
        Inherits RespuestaGenerico

#Region "Variáveis"
        Private _Agrupaciones As AgrupacionColeccion
#End Region

#Region "Propriedades"
        Public Property Agrupaciones As AgrupacionColeccion
            Get
                Return _Agrupaciones
            End Get
            Set(value As AgrupacionColeccion)
                _Agrupaciones = value
            End Set
        End Property
#End Region

    End Class
End Namespace