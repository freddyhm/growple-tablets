<?php

// CRUD + Validation + Check functions - FHM
class Utility{
    
    // takes in object and extra values if present and spits out an array - FHM
    public static function obj_to_array($obj, $extra = null){
        
        $obj_arr = $obj->to_array();
        
        if($extra){
            
            foreach ($extra as $key => $value) {
                $obj_arr[$key] = $value;
            }    
        }
        
        return $obj_arr;
    }
}
?>
