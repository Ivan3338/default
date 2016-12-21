<?php

system("bash scriptinfo.sh");
echo "Load Average: ";
readfile("LA.txt");
echo "<br/>";
$df = file_get_contents('DF.txt');
echo "<br/>Информация о дисках: <br/>";
echo "<table>$df</table>";
echo "--------------------------------------------------------------------------";
$dfi = file_get_contents('DFI.txt');
echo "<table>$dfi</table>";
echo "<br/> Информация iostat: ";
$iostat = file_get_contents('IOSTAT.txt');
echo "<table>$iostat</table>";
echo "<br/> CPU: ";
$mpstat = file_get_contents('MPSTAT.txt');
echo "<table>$mpstat</table><br/>";
echo "Слушающие сокеты: <br/>";
$listcp = file_get_contents('listcpsockets.txt');
echo "<table>$listcp</table><br/>";
$lisudp = file_get_contents('lisudpsockets.txt');
echo "<table>$lisudp</table><br/>";
echo "Число TCP соединений: <br/>";
$tcpcon = fopen('tcpconnections.txt', 'r');
while(!feof($tcpcon)){
	echo fgets($tcpcon);
	echo "<br/>";
}
fclose($tcpcon);
echo "<br/>Загрузка сети: </br>";
$enp0s3 = fopen('enp0s3.txt', 'r');
while(!feof($enp0s3)){
	echo fgets($enp0s3);
	echo "<br/>";
}
fclose($enp0s3);

//echo "Top talkers: <br/>";
//$dump = fopen("dump.txt", "r");
//$dumpsum = 0; $dtcp = 0; $dudp = 0; $dicmp = 0;
//while(!feof($dump)){
	//echo fgets($dump);
	//$dumpsum = $dumpsum + fgets($dump);
//}
//fclose($dump);
//echo $dumpsum;
//$dump = fopen("tcpbytes.txt", "r");
//while(!feof($dump)){
//	$dtcp = $dtcp + fgets($dump);
//}
//fclose($dump);
//echo "<br/>$dtcp<br/>";

?>
