<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="api-base-url" content="{{ url('/api') }}" />

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>AHP Sparepart - {{ config('app.fullname', '') }}</title>

    <!-- Scripts -->
    <script src="{{ asset('js/app.js') }}" defer></script>


    <link rel="icon" type="image/png" sizes="192x192" href="/favicon/Logo.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon/Logo.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/favicon/Logo.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon/Logo.png">
    <link rel="manifest" href="/favicon/manifest.json">

    <!-- Fonts -->
    <link rel="dns-prefetch" href="//fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css?family=Nunito" rel="stylesheet" type="text/css">

    <!-- Styles -->
    <link href="{{ asset('css/app.css') }}" rel="stylesheet">
</head>

<body>
    <div id="app">
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

        <main class="py-4">
            @yield('content')
        </main>
    </div>
</body>

</html>
