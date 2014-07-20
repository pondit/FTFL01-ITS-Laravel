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
                
                    background-color: #ff6666;
                
                
            }
            
                
        </style>
        
    </head>
    <body>
        
        <h1>Shop Details</h1>
        <?php
            require_once 'shop.php';
            require_once 'product.php';            
            
            session_start();
            /* @var $shop Shop */
            $shop = $_SESSION['shop'];
            echo '<br/>'.'<br>';
            echo 'Shop Code: '.$shop->get_code(). '<br/>';
            echo 'Shop Name: '.$shop->get_name(). '<br/>';
            
            echo '<br/>';
            echo 'Product Id  Quantity'. '<br/>';
            foreach ($shop->get_all_products() as $a_product) {
                echo $a_product->get_product_id(). '  '. $a_product->get_quantity().'<br/>';
            }
            echo '<br/>';       
        ?>
        
        <a href ="index.php"> Back </a>
    </body>
</html>
