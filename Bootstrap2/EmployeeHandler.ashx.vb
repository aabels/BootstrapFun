Imports System.Web
Imports System.Web.Services
Imports System.Data
Imports System.Data.SqlClient
Imports System.Configuration
Imports System.Web.Script.Serialization


Public Class EmployeeHandler
    Implements System.Web.IHttpHandler

    Sub ProcessRequest(ByVal context As HttpContext) Implements IHttpHandler.ProcessRequest

        'URI endpoint ...localhost/EmployeeHandler.ashx?term='somevalue'  or localhost/EmployeeHandler.ashx - returns ALL
        Dim term As String = context.Request(If("term", ""))

        'Array of strings to read in values from SQLDataReader
        Dim listEmpNames As New List(Of String)()

        'ConnectionString Instance
        Dim cs = ConfigurationManager.ConnectionStrings("AxisMIS").ConnectionString
        Using conn As New SqlConnection(cs)

            'For regular Query SELECT statement
            'Dim cmd = New SqlCommand("SELECT [FN] FROM dbo_CompanyEmployee", conn)

            'For sProc
            Dim cmd = New SqlCommand("spGetEmpNames", conn) With {
                .CommandType = CommandType.StoredProcedure,
                .CommandText = "spGetEmpNames"
            }

            cmd.Parameters.Add(New SqlParameter(parameterName:="@term", value:=term))
            conn.Open()
            'Debug.Print(term.ToString)
            Using rdr As SqlDataReader = cmd.ExecuteReader()
                While rdr.Read()
                    'listEmpNames.Add(rdr("FN").ToString)
                    listEmpNames.Add(rdr("fullN").ToString)
                End While
            End Using
        End Using

        'Serialize the data into JSON for endpoint consumption
        Dim js = New JavaScriptSerializer()
        context.Response.Write(js.Serialize(listEmpNames))


    End Sub

    ReadOnly Property IsReusable() As Boolean Implements IHttpHandler.IsReusable
        Get
            Return False
        End Get
    End Property

End Class