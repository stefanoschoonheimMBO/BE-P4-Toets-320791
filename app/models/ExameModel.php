<?php

class ExameModel
{
    private $db;

    public function __construct()
    {
        $this->db = new Database();
    }

    public function getExames()
    {
        $sql = "SELECT Id
                       ,StudentId
                       ,Rijschool
                       ,Stad
                       ,Rijbewijscategorie
                       ,Datum
                       ,Uitslag
                FROM   Examen ORDER BY StudentId DESC";

        $this->db->query($sql);
        return $this->db->resultSet();
    }

    public function getExamenById($Id)
    {
        $sql = "SELECT * FROM Examen WHERE Id = $Id";

        $this->db->query($sql);
        return $this->db->resultSet();
    }
}
