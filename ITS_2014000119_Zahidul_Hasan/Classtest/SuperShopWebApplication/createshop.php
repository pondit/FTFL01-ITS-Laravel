<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        
        <style>
            table{
                
                background-color: #6666ff;
            }
            
            h1{
                
                color: #0000ff;
            }
            
                
                a{
                    background-color: #ccccff;
                    
                }
                
                body{
                
                background-color: #66ff66;
                background-image: url('laravel1.jpg');
                background-position: center;
                background-size: 100px; 
                
                
            }
            
                
        </style>
        
        
    </head>
    
    <body>
        <h1>Create A Shop </h1>
        
        <form method ="POST">
            <table>
                
                <tr>
            <td> Code : <input type ="text" name ="codeText"><br/> </td>
                </tr>
            <tr>    
            <td> Name : <input type ="text" name ="nameText"><br/></td>
            </tr>
            <tr>
                <td><input type="submit" value ="Create" name = "createText"></td>
            </tr>
            </table>
        </form>
       
         <?php
        {
            require 'shop.php';
            session_start();
            if (isset($_POST["createText"]))
            {
                $shop = new Shop($_POST["codeText"], $_POST["nameText"]);
                $_SESSION['shop'] = $shop;
                echo 'Shop created';
            }
        }
        ?>
        
            <br/> <br/> <a href ="index.php"> Back </a>
    </body>
    
</html>
