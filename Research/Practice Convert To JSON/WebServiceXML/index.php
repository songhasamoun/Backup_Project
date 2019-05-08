
<?php
$xml=simplexml_load_file("http://kratie.pnc.lan/laura.hennequin/ssl/web.service/all_students_xml.php") or die("Error: Cannot create object");
echo $xml->name . "<br>";
echo $xml->sex . "<br>";
echo $xml->birth . "<br>";
echo $xml->body . "<br>";
echo $xml->city;
?>