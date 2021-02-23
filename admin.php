<!DOCTYPE html>
<html lang="en">
<head>
         <meta charset="UTF-8">
         <meta http-equiv="X-UA-Compatible" content="IE=edge">
         <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <title>Document</title>
         <link rel="stylesheet" href="css/style.css">
         <script src="https://kit.fontawesome.com/465a813102.js" crossorigin="anonymous"></script>
</head>
<body>
         <div class="all__panel">
                  <ul class="btn_panel">
                           <li><i class="fas fa-plus"></i></li>
                           <li><i class="fas fa-minus"></i></li>
                           <li><i class="fas fa-chevron-up"></i></li>
                           <li><i class="fas fa-angle-down"></i></li>
                           <li><i class="far fa-save"></i></li>
                           <li><i class="fas fa-redo-alt"></i></li>
                  </ul>
                  <table >
                           <thead >
                              
                                    <th>Выбор</th>
                                    <th>Статус</th>
                                    <th>Имя файла</th>
                                    <th>Время</th>
                                    <th>Комментарий</th>  
                                    <th>№</th>     
                           </thead>
                           
                           
                                    <?php
                                    $pdo = new PDO('mysql:host=localhost;dbname=videobase','root','root') or die("не подключились ");
                                    $pdoQuery = $pdo->query('SELECT * FROM `video`');
                                    $i = 0;
                                    while($row = $pdoQuery->fetch(PDO::FETCH_OBJ)){
                                        $i++;
                                             echo"<tr class='row'>
                                            
                                             
                                            
                                             
                                    <td><input type='radio' name='element'></td>
                                    ";
                                    if($row->статус == "1")
                                    {
                                             echo " <td><input type='checkbox'  name='scales${i}'
                                             checked></td>";
                                    }
                                    else
                                    {
                                             echo " <td><input type='checkbox'   name='scales${i}'
                                             ></td>";
                                    }
                                    echo "
                                    
                                    <td> <input type='text' name='nameVideo${i}'  value = $row->Video > </td>
                                    <td><input type='text'  name='timeVideo${i}'readonly  value = $row->Время> </td>
                                    <td><input type='text'  name='commVideo${i}' value =$row->Описание></td>
                                    <td><input type='text'  name='idVideo${i}' readonly value =$row->id></td>
                                   
                                    </tr>";
                                    }
                                    ?>
                                    
                           
                  </table>
         </div>
         <form  action="add.php" method="POST" name="add" enctype="multipart/form-data">
                 <label >Файл: <input type="file" id="filesId" name="addFiles"></label><br>
                  <label >Комментарий: <textarea required minlength="8" name="comment"></textarea></label><br>
                  <label ><input type="submit"></label>
                  
         </form>
</body>
<script src="admin.js">
</script>

</html>