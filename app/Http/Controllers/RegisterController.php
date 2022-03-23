<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;

class RegisterController extends Controller
{
    public function index()
    {
        return view('login.register', [
            'title' => 'Register',
            'active' => 'Register'
        ]);
    }

    public function store(Request $request)
    {
        $validasi = $request->validate([
            'name' => 'required|string|min:3',
            'email' => ['required', 'email:dns', 'unique:users'],
            'username' => 'required:min:3',
            'password' => 'required|min:5'
        ]);

        $validasi['password'] = bcrypt($request->password);

        User::create($validasi);

        // $request->session()->flash('success', 'berhasil');

        return redirect('login')->with('success', 'Register Successfull, please login');
    }
}
