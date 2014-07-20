<?php
class Shop {
    private $code;
    private $name;
    private $product_list;
    
    
    public function __construct($code, $name) {
        $this->name = $name;
        $this->code = $code;
        $this->product_list = array();
    }
    
  
    
    public function add_product($a_product){
        
            foreach ($this->product_list as $product) {
                
                   if($a_product->get_product_id() == $product->get_product_id()){ 
                
                    $update = $product->get_quantity();
                        $product->set_quantity($update + $a_product->get_quantity());
                    
                    
                    return 'Product Updated';
                   }
                
            }
            
            $this->product_list[] = $a_product;
            return 'Product Added';
        
        
    }
    
            
    public function get_name()
    {
        return $this->name;
    }
    
    public function get_code()
    {
        return $this->code;
    }

    
    
    public function get_all_products()
    {
        return $this->product_list;
    }

    
    
    
}
?>
