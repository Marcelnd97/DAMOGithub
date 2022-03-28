<?php

class Model
{
	private $con;
	private $table = 'etudaint';

	/**
	*Model constructor.
	*/

	public function _construct()
	{
      $this->con = db_connexion();
	}

	/**
	*
	@return array|bool
	*/
	public function index()
	{
		$result = mysqli_query($this->con, 'SELECT * FROM ' . $this->table);
        $data = array();
        if ($result) {
        	while ($row = mysqli_fetch_assoc($result)) {
        		$data[] = $row;
        	}
        	return $data;
        }
        return null;
	}
	/**
	*
      @param $data
      @return arrat|bool
	*
	*/
	public function insert($data)
	{
		if ($data) {
			$query = 'INSERT INTO' . $this->table . '(nom, prenom, filiere, identite)VALUES ("'.$data['nom']. '","' .$data['prenom'].'","'.$data['filiere'].'","' .$data['identite'].'")';
			$res = mysqli_query($this->con, $query);
			if ($res) {
				return $this->get(mysqli_insert_id($this->$con));
			}
			return false;
		}
	}
	/**
	*
      @param $data
      @return arrat|bool
	*
	*/
	public function update($data)
	{
       if ($data) {
       	$query = 'UPDATE'. $this->table. 'SET nom="' .$data['nom'].
       	    '",prenom="'.$data['prenom'].'",identite="'.$data['identite'].
       	    
       	    '",filiere="' .$data['filiere'].'", filiere="' .$data['filiere'].'"WHERE id=' .$data['id'];
       	    $res = mysqli_query($this->con, $query);

       	    if ($res)
       	    	return true;
       	    return false;
       }
	}
    /**
	*
      @param $id
      @return arrat|null
	*
	*/
	public function get($id)
	{
        $result = mysqli_query($this->con, 'SELECT * FROM' .$this->table .'WHERE id=' .$id);
        if ($result) {
        	return mysqli_fetch_assoc($result);
        }
        return null;
	}
	/**
	*
      @param $id
      @return bool
	*
	*/
	public function delete($id)
	{
		$res = mysqli_query($this->con, 'DELETE FROM' . $this->table . 'WHERE id=' .$id);
		return $res ? true : false;
	}
}
?>
