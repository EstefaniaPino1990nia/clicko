<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    public function topDomains()
    {
        $result = DB::table('users')
            ->select(DB::raw("SUBSTRING_INDEX(email, '@', -1) as domain, COUNT(*) as count"))
            ->groupBy('domain')
            ->orderByDesc('count')
            ->limit(3)
            ->get();

        return response()->json($result);
    }
}