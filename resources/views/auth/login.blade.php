@extends('layouts.auth')

@section('content')
<div class="login-box">
    <div class="card">
        <div class="card-body login-card-body">
            <h3 class="login-box-msg font-weight-bold text-secondary" Login>
                Login
                <form method="POST" action="{{ route('login') }}">
                    @csrf
                    <div class="form-group mt-3">
                        <input type="text" class="form-control{{ $errors->has('email') ? ' is-invalid' : '' }}" name="email" value="{{ old('email') }}" placeholder="Username or Email..." required autofocus>
                        @if ($errors->has('email'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('email') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group">
                        <input type="password" class="form-control{{ $errors->has('password') ? ' is-invalid' : '' }}" name="password" placeholder="Password.." required>
                        @if ($errors->has('password'))
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $errors->first('password') }}</strong>
                        </span>
                        @endif
                    </div>
                    <div class="form-group mb-0">
                        <button type="submit" class="btn btn-info btn-block">
                            <i class="fas fa-sign-in-alt mr-1"></i> {{ __('Login') }}
                        </button>
                    </div>
                </form>

        </div>
    </div>
</div>
@endsection
