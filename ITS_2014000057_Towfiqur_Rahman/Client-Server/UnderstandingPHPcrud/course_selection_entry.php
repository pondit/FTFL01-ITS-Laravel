<!DOCTYPE html>

<html>

    <head>
        <title>Course Selection Entry</title>
    </head>
    
    
    <body>
    
        <form action="course_selection.php" method="POST">
        <fieldset>
            <legend>Course Selection</legend>
                <label>
                <span>Student Name</span>
                
                    <select  name="students_name">
                        
                        
                        
                            <?php
                          
                        
                            $connect = mysql_connect('localhost','root','laravel');
                            $db = mysql_select_db('ftfl_db',$connect);
                            $query = "select students_name from students";
                            
                            $result_students_name = mysql_query($query);
            
                            while($row = mysql_fetch_array($result_students_name))
                                {
                                    echo "<option>".$row['students_name']."</option>";
                                }
                                        
                                mysql_close($connect);    
                                
                            ?>
                        
                    </select>
                
                </label>
                <br/>
                <br/>
                
                <label>
                <span>Course Title</span>
                
                    <select multiple="multiple" name="courses_title[]">
                        
                        
                        
                            <?php
                          
                        
                            $connect = mysql_connect('localhost','root','laravel');
                            $db = mysql_select_db('ftfl_db',$connect);
                            $query = "select courses_title from courses";
                            
                            $result_courses_title = mysql_query($query);
            
                            while($row = mysql_fetch_array($result_courses_title))
                                {
                                    echo "<option>".$row['courses_title']."</option>";
                                }
                                        
                                mysql_close($connect);    
                                
                            ?>
                        
                    </select>
                
                </label>
                <br/>
                <br/>
            
              
  
                <label>
                <input type="submit" value="Submit"/>
                </label>
        </fieldset>
    </form>

    </body>

</html>