<?php

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Token{
    
    private $term; 
    private $post; //pointer to post
    private $termfrequency; //no. of times the term occurred in the post
    
    function __construct($term,$post,$termFrequency) {
        
        $this->term = $term;
        $this->post = $post;
        $this->termfrequency = $termFrequency;
        
   }
   
    function getTerm(){
       return $this->term;
   }
   
    function getPost(){
       return $this->post;
   }
   
    function getTermFrequency(){
       return $this->termfrequency;
   }
   
   
   
    function tokenize($postText, $post){
        
        $postText = strtolower($postText);
        $no_of_terms = substr_count($postText, ' ') + 1;
        $term = explode(" ", $postText);
        sort($term);
        
        for($i=0; $i<$no_of_terms; $i++){
            if($term[$i] == $term[$i+1]){
                $term[$i] = "null"; 
            }
        }
       
        $j = 0;
        $termFrequency = 1;
        
        for($i=0; $i<$no_of_terms; $i++){
            
            if(($term[$i] != "null")){
                if($post != "query"){
                    $term[$i] = $term[$i] . "$";
                }
                $tokens[$j] = new Token($term[$i], $post, $termFrequency);
                $j = $j + 1;
                $termFrequency = 1;
            }else{
                $termFrequency++;
            }
        }
        
        return $tokens;
    }
}
?>
