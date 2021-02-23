<?php
header('Location: /Показ/admin.php');
include('getid3/getid3.php');
// echo $_FILES['addFiles']['size'] . '<br>';
// echo $_FILES['addFiles']['tmp_name'] . '<br>';
// echo $_FILES['addFiles']['type'] . '<br>';
// echo $_FILES['addFiles']['name'] . '<br>';
$name = "video/" . $_FILES['addFiles']['name'] ;

// echo is_uploaded_file($_FILES['addFiles']['tmp_name']);
move_uploaded_file($_FILES['addFiles']['tmp_name'], $name);

$getID3 = new getID3;
$file = $getID3->analyze($name);
$timeVideo = $file['playtime_string'];
// echo("Время: ".$timeVideo );
                  $pdo = new PDO('mysql:host=localhost;dbname=videobase','root','root') or die("не подключились ");
                  $pdoQuery = $pdo->prepare("INSERT INTO `video`(`Video`, `Описание`, `Время`, `статус`) VALUES( :namevideo , :commitvideo, :timevideo , :afk)");
     
                  
                  $pdoQuery->execute(
                           [       
                                    'namevideo'   =>    $name,
                                    'commitvideo' =>   $_POST['comment'],
                                    'timevideo'   =>   $timeVideo ,
                                    'afk'         =>   "1"
                                   

                           ]
                  );

?>
