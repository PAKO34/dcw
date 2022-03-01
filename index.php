<html>
<head>
<title>CANAL+ On Hotbird in CYFRA</title>
</head>
<body>
<?php

$dosya1_adi = "/var/www/html/ecmler";
if ($dosya1 = (fopen ($dosya1_adi , 'r') ) )
 while ( ! feof ($dosya1) ) {
  $satir1 = fgets($dosya1,1024);
  print ("<br>$satir1");
        }
fclose ($dosya1);
?>

</body>

</html>
