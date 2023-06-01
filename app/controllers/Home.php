<?php

class Home extends BaseController
{
    public function index()
    {

        $data = [
            'title' => 'Toets P4'
        ];

        $this->view('home/index', $data);
    }
}