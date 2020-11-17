<?php
// Check for empty fields
if(empty($_POST['name'])      ||
   empty($_POST['email'])     ||
   empty($_POST['phone'])     ||
   empty($_POST['message'])   ||
   !filter_var($_POST['email'],FILTER_VALIDATE_EMAIL))
   {
   echo "No arguments Provided!";
   return false;
   }
   
$name = strip_tags(htmlspecialchars($_POST['name']));
$email_address = strip_tags(htmlspecialchars($_POST['email']));
$phone = strip_tags(htmlspecialchars($_POST['phone']));
$message = strip_tags(htmlspecialchars($_POST['message']));
   
// Create the email and send the message
$to = 'ventas@botesparabasura.com'; // Add your email address in between the '' replacing yourname@yourdomain.com - This is where the form will send a message to.
$email_subject = "Mensaje de contacto enviado por $name";
$email_body = "Has recibido un mensaje desde el formulario de tu web botesparabasura.com. \n\n"."Detalles del mensaje:\n\nNombre: $name\n\nEmail: $email_address\n\nTelefono: $phone\n\nMensaje:\n$message";
$headers = "De: ventas@botesparabasura.com\n"; // This is the email address the generated message will be from. We recommend using something like noreply@yourdomain.com.
$headers .= "Responder A: $email_address";   
mail($to,$email_subject,$email_body,$headers);

$to_client = $email_address;
$email_subject_client = "Copia de mensaje enviado por $name";
$email_body_client = "Haz enviado un mensaje de contacto en la web botesparabasura.com. \n\n"."Detalles del mensaje:\n\nNombre: $name\n\nEmail: $email_address\n\nTelefono: $phone\n\nMensaje:\n$message\n\nGracias por ponerse en contacto con nosotros. En breve recibirá una respuesta.";
$headers_client = "De: $email_address\n";
mail($to_client,$email_subject_client,$email_body_client,$headers_client);

return true;         
?>