﻿Imports System.Xml.Serialization

Namespace Contractos.Integracion.AltaMovimientosMoveOut
    <XmlType(Namespace:="urn:AltaMovimientosMoveOut.Entrada")>
    <XmlRoot(Namespace:="urn:AltaMovimientosMoveOut.Entrada")>
    <Serializable()>
    Public Class Peticion
        Public Property Configuracion As Entrada.Configuracion
        Public Property CodigoPais As String
        Public Property Movimientos As List(Of Entrada.MovimientoMoveOut)
    End Class
End Namespace