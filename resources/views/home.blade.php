@extends('template.user')

@section('title')
    Profile
@endsection

@section('style')
  <link rel="stylesheet" href="{{asset('css/home.css')}}">
@endsection

@section('content')
<br><br><br>
@if (Session::has('success'))
        <div class="alert alert-success">
            {{Session::get('success')}}
        </div>
    
    @endif
    @if (Session::has('error'))
        <div class="alert alert-danger">
            {{Session::get('error')}}
        </div>
    
    @endif
<div class="container">
  <!-- Success Message -->
  
<div class="row justify-content-center">
  <div class="col-md-4">
      <img class="img-profile" src="{{asset('/images/user.png')}}" alt="no-image">
      
    </div>
  
  <div class="offset-md-2 col-md-6">
      <div class="content">
        <!-- Data User -->
      <label for="">Name</label>
      <p>{{Auth::user()->name}}</p>
      <label for="">Email</label>
      <p>{{Auth::user()->email}}</p>
      <label for="">Address</label>
      <p>{{Auth::user()->address}}</p>
      <label for="">Phone</label>
      <p>{{Auth::user()->phone}}</p>
      {{-- tambahan --}}
      {{-- <label for="">Profesi</label>
      <p>{{Auth::user()->profesi}}</p>
      <label for="">Rekening </label><a href="/add-rek/{{Auth::user()->id}}"> | Edit Rekening</a>
      <p><b>{{Auth::user()->no_rek}}</b> - <b>{{Auth::user()->bank_name}}</b> - a.n <b>{{Auth::user()->rek_name}}</b></p> --}}
      
    </div>
      </div>
</div>
</div>

@endsection
