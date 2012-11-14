<?php

require_once ('Post.php');

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

class Posting{
    
    private $postFrequency; # of posts containing the term
    private $occurrence;

    function __construct($post, $termFrequency){
        $this->postFrequency = 1;
        $this->occurrence[0] = new Post($post, $termFrequency);
    }
    
    function addPosting($post, $termFrequency){
        $this->occurrence[$this->postFrequency] = new Post($post,$termFrequency);
        $this->postFrequency ++;
    }
}
?>
