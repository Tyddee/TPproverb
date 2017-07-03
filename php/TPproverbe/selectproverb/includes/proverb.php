<?php
include_once "connexiontp_db.php";

function getProverbList() {
    $db = connect();
    $db->exec("set names utf8");//permet d'encoder pour ç de français et les accents
    $query = $db->prepare('SELECT id,catégorie FROM proverbes');
    $query->execute();
    return $query->fetchAll();//tableau associatif
}

function getProverbCategoryList() {
    $db = connect();
    $db->exec("set names utf8");//permet d'encoder pour ç de français et les accents
    $query = $db->prepare('SELECT distinct(catégorie) FROM proverbes');
    $query->execute();
    return $query->fetchAll();//tableau associatif
}

function getProverbById($id) {
	$db = connect();
    $db->exec("set names utf8");
    $query = $db->prepare('SELECT * FROM proverbes WHERE id=:id');
    $query->bindParam(':id', $id);
    $query->execute();
    return $query->fetch();//tableau associatif	
}

function getProverbByCateg($categ) {
    $db = connect();
    $db->exec("set names utf8");
    $query = $db->prepare('SELECT * FROM proverbes WHERE catégorie=:categ order by rand()');
    $query->bindParam(':categ', $categ);
    $query->execute();
    return $query->fetch();//tableau associatif 
}
?>