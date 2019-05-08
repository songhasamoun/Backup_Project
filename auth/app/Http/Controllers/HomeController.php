<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        // $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function upload() {
        return view('upload');
    }
    public function store(Request $request) {
        $filenameWithExt = $request->file('upload');
        $filename = pathinfo($filenameWithExt, PATHINFO_FILENAME);
        // $extension = $request->file('upload')->getClientOriginalExtention();
        $fileNameToStore = $filename;
        $path = $request->file('upload')->storeAs('public/files', $fileNameToStore);
        if($path) {
            $result = "Success Full";
        } else {
            $result = "Unsuccus";
        }
        return $result;
    }
}
