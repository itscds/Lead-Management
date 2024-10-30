<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Models\Lead;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\Pdf;

class LeadController extends Controller
{


    public function index(Request $request)
    {
        $query = Lead::query();
        
        if ($request->has('status')) {
            $query->where('status', $request->status);
        }
        
        return response()->json($query->get());
    }

    public function getLeadsData(Request $request)
    {
        $query = Lead::query();
    
        
        if ($request->has('search') && $request->search['value'] != '') {
            $searchValue = $request->search['value'];
            $query->where(function($q) use ($searchValue) {
                $q->where('name', 'LIKE', "%{$searchValue}%")
                  ->orWhere('email', 'LIKE', "%{$searchValue}%")
                  ->orWhere('phone', 'LIKE', "%{$searchValue}%")
                  ->orWhere('status', 'LIKE', "%{$searchValue}%");
            });
        }
    
        
        if ($request->has('start_date') && $request->start_date != '') {
            $query->whereDate('created_at', '>=', $request->start_date);
        }
    
        if ($request->has('end_date') && $request->end_date != '') {
            $query->whereDate('created_at', '<=', $request->end_date);
        }
    
       
        if ($request->has('order')) {
            $columns = ['lead_id', 'name', 'email', 'phone', 'status', 'created_at'];
            $orderColumn = $columns[$request->order[0]['column']];
            $orderDirection = $request->order[0]['dir'];
            $query->orderBy($orderColumn, $orderDirection);
        }
    
       
        $totalData = $query->count();
    
        
        $leads = $query->offset($request->start)
                    ->limit($request->length)
                    ->get(['lead_id', 'name', 'email', 'phone', 'status', 'created_at']);
    
        return response()->json([
            "data" => $leads,
            "recordsTotal" => $totalData,
            "recordsFiltered" => $totalData,
        ]);
    }


    public function exportPdf(Request $request)
    {
        
        $status = $request->input('status');
        $search = $request->input('search');
        $startDate = $request->input('start_date');
        $endDate = $request->input('end_date');
    
       
        $query = Lead::query();
    
      
        if ($status) {
            $query->where('status', $status);
        }
    
        if ($search) {
            $query->where(function($q) use ($search) {
                $q->where('name', 'like', "%{$search}%")
                  ->orWhere('email', 'like', "%{$search}%")
                  ->orWhere('phone', 'like', "%{$search}%");
            });
        }
    
        if ($startDate) {
            $query->whereDate('created_at', '>=', $startDate);
        }
    
        if ($endDate) {
            $query->whereDate('created_at', '<=', $endDate);
        }
    
      
        $leads = $query->get();
    
        
        $pdf = PDF::loadView('leads.pdf', ['leads' => $leads]);
    
       
        return $pdf->download('leads.pdf');
    }
    
}
