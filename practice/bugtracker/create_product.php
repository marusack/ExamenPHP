<?php

require_once "bootstrap.php";
//if($get['name']){
//    
//    
//}
$newProductName = $argv[1];
$product = new Product();
$product-> setName($newProductName);

$entityManager->persist($product);
$entityManager->flush();
echo "]Create Product with ID ".$product->getId().".... \n";

//tira en consola el comando    php create_product.php argumentos
