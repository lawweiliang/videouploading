<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">

  <title>Uploader</title>

  @include('uploader.includes.header')
</head>

<body class="gray-bg">
  @include('uploader.includes.navbar')
  @yield('content')
  @include('uploader.includes.footer')
  @include('uploader.includes.scripts')
</body>

</html>