﻿Imports System.Data.SqlClient
Partial Class Admin_EmployeeDetails
    Inherits System.Web.UI.Page
    Public con As New SqlConnection

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        con.ConnectionString = Application("str")
        con.Open()
        Dim cmd As New SqlCommand("select EmpId,PhName,PhotoURL,Name,Address,Desg,Dept from Employee where Empid='" & Application("empid") & "'", con)
        Dim rs As SqlDataReader
        Dim path As String
        rs = cmd.ExecuteReader
        rs.Read()
        EmpID.Text = rs(0)
        Name.Text = rs("Name")
        Addr.Text = rs("Address")
        Desg.Text = rs("Desg")
        Dept.Text = rs("Dept")
        Label6.Text = rs("Name")
        path = "../Upload/Employeephotos/" + CStr(rs(0).ToString) + "/" + CStr(rs(1).ToString)
        Image1.ImageUrl = path
        rs.Close()
    End Sub
End Class
