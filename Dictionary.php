<?php

require_once 'Posting.php';
require_once 'Token.php';
require_once 'Post.php';

class Dictionary{
r
    private static $rootNode;
    private $value;
    private $child;
    
    function __construct($property){
        if($property == 'rootNode'){
            $this->rootNode = new Dictionary('');
        }
        else{
            $this->rootNode->value = 'ROOT';
        }
    }
    
    function indexTokenStream($tokenArray){
        foreach ($tokenArray as & $token)
        {
            $this->addWord($token);
        }
    }
    
    function addWord($token){
        
        $word = $token->getTerm();
        $wordArray = str_split($word);
        $this->addSuffix($wordArray,$token);
            
        for($i = 1; $i <strlen($word) ; $i++){
            $suffix = substr($word, $i);
            $suffixArray = str_split($suffix);
            $this->addSuffix($suffixArray,false);
        }
           
    }
    
    function addSuffix($suffix,$tokenPassed){
        $currentNode = $this->rootNode;
        foreach ($suffix as & $char){
            $i=0;
            $matchfound = false;
            foreach ($currentNode->child as & $node){
                $i++;
                if ($char == $node->value){
                    $currentNode = $node;
                    $matchfound = true;
                    if(($char == '$') && ($tokenPassed != false)){
                        $currentNode->child->addPosting($tokenPassed->getPost(), $tokenPassed->getTermFrequency());
                    }
                    break;
                }
            }
            if ($matchfound == false){
                $currentNode->child[$i] = new Dictionary('');
                $currentNode->child[$i]->value = $char;
                $currentNode = $currentNode->child[$i];
                
                if(($char == '$') && ($tokenPassed != false)){
                        $currentNode->child = new Posting($tokenPassed->getPost(), $tokenPassed->getTermFrequency());
                }
            }
         }
    }
}

?>
