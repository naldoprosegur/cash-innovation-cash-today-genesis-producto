﻿Imports System.Xml.Serialization
Imports System.Xml

Namespace Divisa.VerificarCodigoDenominacion

    ''' <summary>
    ''' Classe peticion
    ''' </summary>
    ''' <remarks></remarks>
    ''' <history>
    ''' [octavio.piramo] 27/01/2009 Criado
    ''' </history>
    <XmlType(Namespace:="urn:VerificarCodigoDenominacion")> _
    <XmlRoot(Namespace:="urn:VerificarCodigoDenominacion")> _
    <Serializable()> _
    Public Class Peticion

#Region "[Variáveis]"

        Private _Codigo As String

#End Region

#Region "[Propriedades]"

        Public Property Codigo() As String
            Get
                Return _Codigo
            End Get
            Set(value As String)
                _Codigo = value
            End Set
        End Property

#End Region

    End Class

End Namespace