﻿Namespace RecuperarDatosDocumento

    Public Class Destino

#Region "[VARIÁVEIS]"

        Private _Id As Integer
        Private _Descripcion As String

#End Region

#Region "[PROPRIEDADES]"

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

End Namespace