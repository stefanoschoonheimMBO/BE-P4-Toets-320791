<?php

class Exames extends BaseController
{

    private $ExamesInfo;

    public function __construct()
    {
        $this->ExamesInfo = $this->model('ExameModel');
    }

    public function index()
    {
        $Exame = $this->ExamesInfo->getExames();

        $rows = '';
        foreach ($Exame as $result) {
            $rows .= "<tr>
                        <td>$result->StudentId</td>
                        <td>$result->Rijschool</td>
                        <td>$result->Stad</td>
                        <td>$result->Rijbewijscategorie</td>
                        <td>$result->Datum</td>
                        <td>$result->Uitslag</td>
                        <td>
                        </td>
                    </tr>";
        }

        $data = [
            'title' => 'Overzicht Afgenomen Examens Examinatoren',
            'aantal_exames' => 'Aantal Examelocaties: 7',
            'records' => 'info uit de database',
            'rows' => $rows
        ];

        $this->view('exames/index', $data);
    }
}