<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
        
        <style>
            
            table
            {
                
                background-color: #6666ff;
            }
            
            h1
            {
                
                color: #0000ff;
            }
            
                
            a
            {
                    background-color: #ccccff;
                    
            }
                
            body
            {
                
                background-color: #66ff66;
                background-image: url('laravel1.jpg');
                background-position: center;
                background-size: 100px; 
                
                
                
            }
            
        </style>
        
        
    </head>
    
    <body>
        <h1>Add/Update Product</h1>
        
        <form method ="POST">
            <table>
                
                <tr>
            <td> Product Id : <input type ="text" name ="productIdText"><br/> </td>
                </tr>
            <tr>    
            <td> Quantity : <input type ="text" name ="quantityText"><br/></td>
            </tr>
            <tr>
                <td><input type="submit" value ="Add/Update" name = "addUpdateText"></td>
            </tr>
            </table>
        </form>
        
        <?php
        {   
            require_once 'shop.php';
            require_once  'product.php';
            
            session_start();
            if (isset($_POST["addUpdateText"]))
            {
                 $product = new Product($_POST['productIdText'], $_POST['quantityText']);
                
                 
                 /* @var $shop Shop */
                 $shop = $_SESSION['shop'];
                 
                 echo $shop->add_product($product);
                 $_SESSION['shop']= $shop;
            }
        }
        ?>
        
            <br/> <br/> <a href ="index.php"> Back </a>
    </body>
    
</html>
