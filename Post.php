<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Post{
    
    private $postReference;
    private $termFrequency;
    
    public function getPostReference(){
        return $this->postReference;
    }
    
    public function getTermFrequency(){
        return $this->termFrequency;
    }

    function __construct($postReference, $termFrequency) {
        $this->postReference = $postReference;
        $this->termFrequency = $termFrequency;
    }
}
?>
