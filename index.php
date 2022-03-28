<?php

header('Access-Controle-Allow-Origin: *');
require 'BDEtude.php';
require 'etudModel.php';

$model = new Model();

if (isset($_GET['action']) && $_GET['action']=='list'){
	$data = $model->index();

	echo json_encode(array('success' =>true, 'data' => $data));
}


if (isset($_GET['action']) && $_GET['action'] == 'update') {
	$inputJSON = file_get_contents('php://input');
    $postData = json_decode($inputJSON, TRUE);
    $result = $model->update($postData);
    echo json_encode(array('success' => $result));
}

if (isset($_GET['action']) && $_GET['action'] == 'create') {
     $inputJSON = file_get_contents('php://input');
     $postData = json_decode($inputJSON, TRUE);
     $result = $model->insert($postData);
     echo json_encode(array('success' => true, 'data' => $data));
}


if (isset($_GET['action']) && $_GET['action'] == 'detail') {
	$data = $model->get($_GET['id']);

	echo json_encode(array('success' => true, 'data' => $data));
}


if (isset($_GET['action']) && $_GET['action'] == 'delete') {
	 $result = $model->delete($_GET['id']);

	 echo json_encode(array('success' => $result));
}
?>