﻿Imports Prosegur.Genesis.Comon
Imports System.Xml
Imports System.Xml.Serialization

Namespace GenesisSaldos.Contenedores.ConsultarInventarioContenedor

    ''' <summary>
    ''' Classe Peticion
    ''' </summary>
    <XmlType(Namespace:="urn:ConsultarInventarioContenedor")> _
    <XmlRoot(Namespace:="urn:ConsultarInventarioContenedor")> _
    <Serializable()> _
    Public Class SectorRespuesta

#Region "[PROPRIEDADES]"

        Public Property codSector As String
        Public Property codDelegacion As String
        Public Property codPlanta As String
        Public Property codPosicion As String

#End Region

    End Class

End Namespace