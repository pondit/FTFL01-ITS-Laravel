<!doctype html>
<html>

    <head>
        <title>Course Selection Output</title>
    
    </head>

    <body>
    
        <div>
           
             <?php

                $student_name = $_REQUEST['students_name'];
                
                

                mysql_connect('localhost','root','laravel');
                mysql_select_db('ftfl_db');


                
                // $result = mysql_query("INSERT into students(students_name) values ('$student_name')");
                

                $student_query =mysql_query( "SELECT students_id from students where students_name = '$student_name'");
                
               
                $student_id = mysql_fetch_array($student_query);
                $student_id_selected = $student_id['students_id'];
                
                
                
                foreach ($_REQUEST['courses_title'] as $map_course_title){
                $course_query =  mysql_query("SELECT courses_id from courses where courses_title = '$map_course_title' ");
                
                $course_id = mysql_fetch_array($course_query);
                
                $course_id_selected = $course_id['courses_id'];

                $data = mysql_query("INSERT into `student's_courses` (students_id,courses_id) values ('$student_id_selected','$course_id_selected')");
                
                
                
                }
                
                //$data = mysql_query("INSERT into `student's_courses` (students_id,courses_id) values ('$input_student_id','$input_course_id')");

                //var_dump($data);

                if ($data)
                {
                echo "Data inserted";
                }	
                else
                {
                echo "Error";
                }

                ?>
            
        </div>

    </body>

</html>