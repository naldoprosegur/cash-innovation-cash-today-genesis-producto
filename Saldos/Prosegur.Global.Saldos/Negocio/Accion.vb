<Serializable()> _
Public Class Accion

#Region "[VARIÁVEIS]"

    Private _Id As Integer
    Private _Descripcion As String
    Private _Codigo As String

#End Region

#Region "[PROPRIEDADES]"

    Public Property Codigo() As String
        Get
            Return _Codigo
        End Get
        Set(Value As String)
            _Codigo = Value
        End Set
    End Property

    Public Property Descripcion() As String
        Get
            Return _Descripcion
        End Get
        Set(Value As String)
            _Descripcion = Value
        End Set
    End Property

    Public Property Id() As Integer
        Get
            Return _Id
        End Get
        Set(Value As Integer)
            _Id = Value
        End Set
    End Property

#End Region

End Class