﻿Imports System.Xml.Serialization
Imports System.Xml

Namespace Setor.GrabarTipoSectorDelegacion

    <XmlType(Namespace:="urn:GrabarTipoSectorDelegacion")> _
    <XmlRoot(Namespace:="urn:GrabarTipoSectorDelegacion")> _
    <Serializable()> _
    Public Class Peticion
        Public Property OidTipoSectorDelegacion As String
        Public Property OidDelegacion As String
        Public Property OidTipoSector As String
        Public Property GmtCreacion As Date
        Public Property DesUsuarioCreacion As String
        Public Property GmtModificacion As Date
        Public Property DesUsuarioModificacion As String
    End Class

End Namespace
