<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Mail;

class MailController extends Controller
{
    public function sendMail() {
        Mail::to('samoun.camdoc@gmail.com')->send(new \App\Mail\SendMail());
        return "Email is already send";
    }
}
