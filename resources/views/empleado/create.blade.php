@extends('layouts.app')

@section('content')
<div class="container">

<h1>Crear empleado</h1>

<form action="{{ url('/empleado') }}" method="post" enctype="multipart/form-data">
@csrf

@include('empleado.form');
</form>
</div>
@endsection