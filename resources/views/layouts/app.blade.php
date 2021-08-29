<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    @if (Auth::check())
    <meta name="api-base-url" content="{{ url('/api') }}" />
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="user-role" content="{{ Auth::user()->roles[0]->name }}">
    @endif
    <title>AHP Sparepart - {{ config('app.fullname', '') }}</title>

    <script src="{{ asset('js/app.js') }}" defer></script>

    <link rel="icon" type="image/png" sizes="192x192" href="/favicon/Logo.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon/Logo.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/favicon/Logo.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon/Logo.png">
    <link rel="manifest" href="/favicon/manifest.json">

    @if (Auth::check())
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    @else
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    @endif

    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">
    <link href="{{ asset('css/main.css') }}" rel="stylesheet">
</head>

@if (Auth::check())
<body class="hold-transition sidebar-mini">
@else
<body class="bg-light">
@endif
    <div id="app" class="wrapper">
        @if (Auth::check())
            <nav class="main-header navbar navbar-expand navbar-dark bg-success app-shadow">
                {{-- Left Menu --}}
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
                    </li>

                </ul>

                <a href="{{ url('/') }}" class="brand-link bg-success mx-auto py-0 d-inline-block d-sm-none">
                    <img src="{{ asset('images/home.png') }}" alt="APP Logo" class="brand-image p-1 mt-0 ml-0 bg-white img-circle" style="opacity: .8">
                    <span class="brand-text font-weight-bold h3">{{ config('app.name', 'Laravel') }}</span>
                </a>

                {{-- Right Menu --}}
                <ul class="navbar-nav ml-sm-auto">
                    <li class="nav-item">
                        <button class="btn btn-success btn-block" onclick="event.preventDefault();document.getElementById('logout-form').submit();">
                            <i class="fas fa-sign-out-alt mr-1"></i> Logout
                        </button>
                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                            @csrf
                        </form>
                    </li>
                </ul>
            </nav>

            <aside class="main-sidebar sidebar-light-success elevation-4" style="overflow-x: hidden;">
                <a href="{{ url('/') }}" class="brand-link bg-success">
                    <img src="{{ asset('images/home.png') }}" alt="APP Logo" class="brand-image p-1 bg-white img-circle" style="opacity: .8">
                    <span class="brand-text font-weight-bold">{{ config('app.name', 'Laravel') }}</span>
                </a>

                <div class="sidebar">
                    <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                        <div class="image">
                            <img src="{{ asset('images/user.png') }}" class="img-circle" alt="User Image">
                        </div>
                        <div class="success">
                            <a href="#" class="d-block">{{ Auth::user()->name }}</a>
                            <span class="badge bg-success">{{ Auth::user()->roles[0]->display_name }}</span>
                        </div>
                    </div>

                    <nav class="mt-2">
                        @if (Auth::user()->roles[0]->name == 'admin')
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <li class="nav-header"><b>DATA</b></li>

                            <li class="nav-item">
                                <router-link :to="{ name: 'home' }" class="nav-link">
                                    <p>Home</p>
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'admin.criterias' }" class="nav-link">
                                    <p>Data Kriteria</p>
                                </router-link>
                            </li>

                            <li class="nav-item">
                                <router-link :to="{ name: 'admin.alternatives' }" class="nav-link">
                                    <p>Data Alternatif</p>
                                </router-link>
                            </li>

                            <li class="nav-header"><b>Perhitungan</b></li>

                            <li class="nav-item">
                                <router-link :to="{ name: 'analysis.criteria' }" class="nav-link">
                                    <p>Hitung Kriteria</p>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'analysis.alternative' }" class="nav-link">
                                    <p>Hitung Alternatif Sparepart</p>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'analysis.result' }" class="nav-link">
                                    <p>Rekomendasi Sparepart</p>
                            </li>
                        </ul>
                        @else
                        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                            <li class="nav-header"><b>DATA MASTER</b></li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'home' }" class="nav-link">
                                    <p>Home</p>
                                </router-link>
                            </li>
                            <li class="nav-item">
                                <router-link :to="{ name: 'admin.alternatives' }" class="nav-link">
                                    <p>Data Sparepart</p>
                                </router-link>
                            </li>

                            <li class="nav-header"><b>ANALISIS</b></li>

                            <li class="nav-item">
                                <router-link :to="{ name: 'analysis.result' }" class="nav-link">
                                    <p>Rekomendasi Sparepart</p>
                            </li>
                        </ul>
                        @endif
                    </nav>
                </div>
            </aside>
        @else
            <nav class="navbar navbar-expand-lg navbar-dark bg-success shadow-sm">
                <div class="container">
                    <a class="navbar-brand d-none d-md-block" href="{{ route('landing_page') }}">Sistem Pendukung Keputusan</a>
                    <a class="navbar-brand d-md-none" href="{{ route('landing_page') }}">SPK</a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>

                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item">
                                <a class="nav-link {{ (request()->is('analysis/result')) ? 'active' : '' }}" href="{{ url('analysis/result') }}">Rekomendasi Sparepart</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link {{ (request()->is('analysis/alternatives')) ? 'active' : '' }}" href="{{ url('analysis/alternatives') }}">Perhitungan Alternatif</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link {{ Route::is('login') ? 'active' : '' }}" href="{{ route('login') }}">Login</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link {{ Route::is('register') ? 'active' : '' }}" href="{{ route('register') }}">Register</a>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
        @endif

        @if (Auth::check())
        <div class="content-wrapper pb-5">
        @else
        <div class="container">
        @endif
            @yield('content')
        </div>

        @if (Auth::check())
            <nav class="navbar fixed-bottom footbar bg-white p-0 d-flex d-sm-none" style="border-top: 1px solid #84cc90">
                <div class="col text-center">
                    <router-link :to="{ name: 'home' }" class="navbar-brand text-secondary">
                        <i class="fas fa-home"></i>
                        <small class="d-block">Home</small>
                    </router-link>
                </div>
                <div class="col text-center">
                    <router-link :to="{ name: 'analysis.criteria' }" class="navbar-brand text-secondary">
                        <i class="fas fa-table"></i>
                        <small class="d-block">Kriteria</small>
                    </router-link>
                </div>
                <div class="col text-center">
                    <router-link :to="{ name: 'analysis.alternative' }" class="navbar-brand text-secondary">
                        <i class="fas fa-table"></i>
                        <small class="d-block">Alternatif</small>
                    </router-link>
                </div>
                <div class="col text-center">
                    <router-link :to="{ name: 'analysis.result' }" class="navbar-brand text-secondary">
                        <i class="fas fa-poll"></i>
                        <small class="d-block">Hasil</small>
                    </router-link>
                </div>
            </nav>

            <aside class="control-sidebar control-sidebar-light">
                <div class="p-3">
                    <img src="{{ asset('images/user.png') }}" class="img-fluid mx-auto d-block rounded-circle" style="width: 75px">
                    <div class="pt-2 text-center">
                        <h5 class="mb-0">{{ auth()->user()->name }}</h5>
                    </div>
                    <hr class="mt-0">

                </div>
            </aside>
        @else
            <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
        @endif
        {{-- @include('layouts.footer') --}}
    </div>
</body>

</html>
