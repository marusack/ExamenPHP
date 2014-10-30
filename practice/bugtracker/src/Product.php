<?php

/**
 * @Entity @Table(name="products")
 **/
class Product
{
    /** @Id @Column(type="integer") @GeneratedValue  **/
    protected $id;
    /** @Column(type="string") **/
    protected $name;
    
    public function getId()
    {
        return $this->id;
    }
        
    public function getName() {
        return $this->name;
    }
    public function setName($name) {
        $this->name = $name;
    }

// aca para actualizar la base de datos tiras el comando php vendor/doctrine/orm/bin/doctrine orm:schema-tool:update --force --dump-sql
 
   }

