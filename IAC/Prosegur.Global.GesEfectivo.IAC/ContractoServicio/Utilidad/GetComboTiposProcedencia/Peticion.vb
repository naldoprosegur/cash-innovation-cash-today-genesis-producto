﻿Imports System.Xml.Serialization
Imports System.Xml

Namespace Utilidad.GetComboTiposProcedencia

    ''' <summary>
    ''' Classe peticion
    ''' </summary>
    ''' <remarks></remarks>
    ''' <history>
    ''' [pda] 25/02/2009 Criado
    ''' </history>
    <XmlType(Namespace:="urn:GetComboTiposProcedencia")> _
    <XmlRoot(Namespace:="urn:GetComboTiposProcedencia")> _
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