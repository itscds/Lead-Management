@extends('layouts.app')

@section('content')
<div class="container">
    <h1>Leads Management</h1>
    <button onclick="exportPDF()" class="btn btn-primary mb-3">Export to PDF</button>

    <div class="mb-3">
        <label for="start_date">Start Date:</label>
        <input type="date" id="start_date" class="form-control d-inline-block" style="width: auto;">
        <label for="end_date">End Date:</label>
        <input type="date" id="end_date" class="form-control d-inline-block" style="width: auto;">
        <button id="filter" class="btn btn-secondary">Filter</button>
    </div>

    <table id="leads-table" class="display responsive nowrap" style="width:100%">
        <thead>
            <tr>
                <th>Lead ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Status</th>
                <th>Created At</th>
            </tr>
        </thead>
    </table>
</div>
@endsection

@push('scripts')
<script>
    $(document).ready(function() {
        var table = $('#leads-table').DataTable({
            "processing": true,
            "serverSide": true,
            "ajax": {
                "url": "{{ route('leads.data') }}",
                "data": function (d) {
                    d.start_date = $('#start_date').val();
                    d.end_date = $('#end_date').val();
                }
            },
            "columns": [
                { "data": "lead_id" },
                { "data": "name" },
                { "data": "email" },
                { "data": "phone" },
                { "data": "status" },
                { 
                    "data": "created_at",
                    "render": function(data) {
                        return moment(data).format('YYYY-MM-DD'); 
                    }
                }
            ],
            "paging": true,
            "searching": true,
            "ordering": true
        });

     
        $('#filter').click(function() {
            table.draw(); 
        });
    });

    function exportPDF() {
        var table = $('#leads-table').DataTable();
        var status = table.column(4).search(); 
        var search = table.search(); 
        var startDate = $('#start_date').val();
        var endDate = $('#end_date').val();

        
        window.location.href = "{{ route('leads.exportPdf') }}?status=" + status + "&search=" + search + "&start_date=" + startDate + "&end_date=" + endDate;
    }
</script>
@endpush
