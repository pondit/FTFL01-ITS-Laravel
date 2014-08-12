<!doctype html>
<html>

    <head>
        <title>Courses Entry Output</title>
    
    </head>

    <body>
    
        <div>
            <?php
                $id = $_REQUEST['courses_id'];
                $title = $_REQUEST['courses_title'];
                $code = $_REQUEST['courses_code'];
                $modification = $_REQUEST['courses_modified'];
                $creation = $_REQUEST['courses_created'];

                $connect = mysql_connect('localhost','root','laravel');
                $db = mysql_select_db('ftfl_db',$connect);


                $insert_query = "insert into courses values ('$id','$title','$code','$modification','$creation')";
                $result = mysql_query($insert_query);
                
                
                if($result)
                {
                    echo  "New Course ID $id New Course Title $title New Course Code $code";
                }
            ?>
        </div>

    </body>

</html>