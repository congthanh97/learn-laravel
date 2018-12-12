<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
	
	public function home(){
		return view('welcome')->withTitle('welcome');
	}
	
	public function about(){
		return view('welcome', [
			'title' => 'about'
		]);
	}
	
	public function contact(){
		return view('welcome', [
			'title' => 'contact'
		]);
	}
}
