<Serializable()> _
Public Class SelFormularios

#Region "[VARI�VEIS]"

    Private _CentroProceso As CentroProceso

#End Region

#Region "[PROPRIEDADES]"

    Public Property CentroProceso() As CentroProceso
        Get
            If _CentroProceso Is Nothing Then
                _CentroProceso = New CentroProceso()
            End If
            CentroProceso = _CentroProceso
        End Get
        Set(Value As CentroProceso)
            _CentroProceso = Value
        End Set
    End Property

#End Region

#Region "[M�TODOS]"

    Public Function Realizar(ByRef conexion As Object) As Short

    End Function

#End Region

End Class