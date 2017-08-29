@if (count($errors) > 0)
<div class="alert alert-danger" role="alert">
  	@foreach($errors->all() as $error)
  	<li>{{ $error }}</li>
   	@endforeach
</div>
@endif

@if (Session::has('success'))
<div class="alert alert-success" role="alert">
    {{ session('success') }}
</div>
@endif