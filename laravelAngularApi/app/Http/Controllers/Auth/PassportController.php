<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
Use Illuminate\Support\Facades\Auth;

class PassportController extends Controller
{
    
    public function register(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|min:3',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:5',
        ]);
        
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password)
        ]);

        //return $request->get('name');
 
        $token = $user->createToken('TutsForWeb')->accessToken;
 
        return response()->json(['token' => $token], 200);
    }

    public function login(Request $request)
    {
        $credentials = [
            'email' => $request->email,
            'password' => $request->password
        ];
 
        if (auth()->attempt($credentials)) {
            $token = auth()->user()->createToken('TutsForWeb')->accessToken;
            return response()->json(['token' => $token], 200);
        } else {
            return response()->json(['error' => 'Invalido Email o Password. Por favor corrija'], 401);
        }
    }

    public function details()
    {
        return response()->json(['user'=>auth()->user()],200);
    }

    public function logout(Request $request)
    {
        $request->user()->token()->revoke();

        return response()->json(['user'=>"Marcos Gonzalez", 'loggedout'=>true],200);
    }
  
}
