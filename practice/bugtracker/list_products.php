<?php

require_once "bootstrap.php";
$productRepository = $entityManager->getRepository('Product');
$products = $productRepository->findAll();
foreach($products as $product){
    echo sprintf("-%s\n", $product->getName());
}

//C:\wamp\www\php-training-master\opp\practice\bugtracker>php list_products.php
//
//-argunment
//-pancho
//-renzo
//-pupo
//-pupurri
//
//C:\wamp\www\php-training-master\opp\practice\bugtracker>