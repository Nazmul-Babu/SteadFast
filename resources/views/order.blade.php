@extends('includes.app')
@section('content')
    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
            <h1 class="h2">Order</h1>
            <div class="btn-toolbar mb-2 mb-md-0">
                <div class="btn-group me-2">
                    <button type="button" class="btn btn-sm btn-outline-secondary">Share</button>
                    <button type="button" class="btn btn-sm btn-outline-secondary">Export</button>
                </div>
            </div>
        </div>
        <div class="col-md-12">
            <div class="row">
                <div class="col-md-3">
                    <label for="" class="form-label">Enter Gross Amount</label>
                    <input type="number" step="any" min="1" name="gross_amount" id="gross_amount"
                        onchange="calculate_vat()" class="form-control" placeholder="Enter Enter Gross Amount">
                </div>
                <div class="col-md-3">
                    <label for="" class="form-label">Enter Vat Percentage</label>
                    <input type="number" step="any" min="1" name="vat" id="vat" value="15"
                        class="form-control" placeholder="Enter Vat Percentage">
                </div>
                <div class="col-md-3">
                    <label for="" class="form-label">Vat Amount</label>
                    <input type="number" step="any" name="vat_amount" readonly id="vat_amount" class="form-control"
                        placeholder=" Vat Amount">
                </div>
                <div class="col-md-3">
                    <label for="" class="form-label"> Net Amount</label>
                    <input type="number" step="any" min="1" readonly name="net_amount" id="net_amount"
                        class="form-control" placeholder="Net Amount">
                </div>
            </div>
        </div>
    </main>
@endsection
@push('js')
    <script>
        $(document).on('change', '#vat', function() {
            calculate_vat();
        });

        function calculate_vat() {
            var gross_amount = parseFloat($('#gross_amount').val());
            var vat_percentage = parseFloat($('#vat').val());
            if (gross_amount == '' || gross_amount == undefined || isNaN(gross_amount)) alert('Invalid Gross Amount');
            if (vat_percentage == '' || vat_percentage == undefined || isNaN(vat_percentage)) alert('Invalid Vat Percentage');
            var vat = parseFloat(vat_percentage / 100) + 1;
            var vat_amount = parseFloat((gross_amount / vat) - gross_amount) * -1;
            var rounded_vat_amount = Math.round(vat_amount);
            $("#vat_amount").val(rounded_vat_amount);
            var net_amount = gross_amount + rounded_vat_amount;
            $('#net_amount').val(net_amount);

        }
    </script>
@endpush
