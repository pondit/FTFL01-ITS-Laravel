<!doctype html>
<html>

    <head>
        <title>Student Entry Output</title>
    
    </head>

    <body>
    
        <div>
            <?php
                $id = $_REQUEST['students_id'];
                $name = $_REQUEST['students_name'];
                $modification = $_REQUEST['students_modified'];
                $creation = $_REQUEST['students_created'];

                $connect = mysql_connect('localhost','root','laravel');
                $db = mysql_select_db('ftfl_db',$connect);


                $insert_query = "insert into students values ('$id','$name','$modification','$creation')";
                $result = mysql_query($insert_query);
                
                
                if($result)
                {
                    echo  "New Student ID $id New Student Name $name ";
                }
            ?>
        </div>

    </body>

</html>