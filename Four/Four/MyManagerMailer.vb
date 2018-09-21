Imports System.Net
Imports System.Net.Mail

Public Class MyManagerMailer
    'cerner_2^5_2018
    Sub SendSickLeaveMailToMyManager()

        Dim mail As New MailMessage With {
                .From = New MailAddress("my.name@cerner.com"),
                .Subject = "Sick leave",
                .Body = "I do not feel very well, honestly!"
                }
        mail.[To].Add("my.manager@cerner.com")

        Dim smtpClient As New SmtpClient("<my Office365 host>", 365) With {
                .Credentials = New NetworkCredential("my.userName", "my.password", "my.domain")
                }

        Try
            smtpClient.Send(mail)
        Catch exception As Exception
            Console.WriteLine(exception)
        End Try

    End Sub
End Class