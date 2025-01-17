<?php

use App\Http\Controllers\Api\LeadController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "api" middleware group. Make something great!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});

Route::get('/leads',[LeadController::class,'index']);
Route::get('/leads/data', [LeadController::class, 'getLeadsData'])->name('leads.data');
Route::get('/leads/export-pdf', [LeadController::class, 'exportPdf'])->name('leads.exportPdf');
