<?php
// $i = "timeVideo";
// $i1 = "timeVideo2";
// $i0 = "timeVideo3";
// $ar =[];
// Array_push($ar,Array_keys($_POST)); 
// echo  
header('Location: /Показ/admin.php');
$countPost =  round(Count(Array_keys($_POST))/5);
 function dispatch ($num,$countPost)
         {
                  for($i = 1;  $i <= $countPost ; $i++ )
                  {
                           // $check = 0;

                           if($_POST["scales$num" ] == 'on')
                                    {
                                                      $check = 1;
                                    }
                           else
                                    {
                                                      $check = 0; 
                                    };  


                  }
                  //    echo $check;                        

                 $pdo = new PDO('mysql:host=localhost;dbname=videobase','root','root') or die("не подключились ");
         
                  // $pdoQuery = $pdo->prepare("INSERT INTO `video` (`id`, `Video`, `Описание`, `Время`, `статус`) VALUES (NULL, :namevideo , :commitvideo, :timevideo");
                  $pdoQuery = $pdo->prepare("UPDATE `video` SET `Video`= :namevideo,`Описание`= :commitvideo,`Время`= :timevideo,`статус`= :afk  WHERE `id` = :id");
                  // UPDATE `video` SET `id`=[value-1],`Video`=[value-2],`Описание`=[value-3],`Время`=[value-4],`статус`=[value-5] WHERE 1
                  
                  $pdoQuery->execute(
                           [        'id'          =>   $_POST["idVideo$num"],
                                    'namevideo'   =>   $_POST["nameVideo$num"],
                                    'commitvideo' =>   $_POST["commVideo$num"],
                                    'timevideo'   =>   $_POST["timeVideo$num"],
                                    'afk'         =>   $check
                                   

                           ]
                  );
         }
// echo $_POST[$i0] . "<br>";
// echo $_POST[$i1] . "<br>";
// echo  CURLOPT_VERBOSE;
// $pdo = new PDO('mysql:host=localhost;dbname=videobase','root','root') or die("не подключились ");
if(isset($_POST["buttonSave"]))
{

         for($i = 1 ; $i <= $countPost ; $i++ )
         {
                  // echo $_POST["nameVideo$i"] ;
                  // echo $_POST["commVideo$i" ] . "<br>";
                  // echo $_POST["timeVideo$i"] . "<br>";
                  dispatch($i,$countPost);
                  // echo $_POST["idVideo$i"];
                  
                  
         }
       
                
}
    

// $clear = $pdo->query("TRUNCATE TABLE `video`");
                                  
// ?>