<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;

class AcController extends Controller
{
    public function index ()
    {
        return view('ac');
    }
}
