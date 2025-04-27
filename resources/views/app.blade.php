<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Swift Sports</title>
    @vite('resources/css/app.css')
</head>
<body class="bg-gray-100">

    @include('layouts.header') <!-- Include Header -->

    <!-- Banner Section -->
    @if(request()->is('/'))
    <section>
        <img src="{{ asset('uploads/site_photos/' . $home_items->banner) }}"
            alt="Banner"
            class="w-full h-auto max-h-[400px] object-cover">
    </section>
    @endif

    <main class="max-w-screen-xl mx-auto px-4 sm:px-6 lg:px-8 py-8">
        @yield('content')

        <!-- Full-width Sections -->
        <section class="w-full text-center my-8">
            <h1 class="text-2xl sm:text-3xl md:text-4xl font-bold text-gray-800">{{ $home_items->heading_1 }}</h1>
            <h3 class="text-lg sm:text-xl text-gray-600 mt-2">{{ $home_items->subheading_1 }}</h3>
        </section>

        <section class="w-full text-center my-8">
            <h1 class="text-2xl sm:text-3xl md:text-4xl font-bold text-gray-800">{{ $home_items->heading_2 }}</h1>
            <h3 class="text-lg sm:text-xl text-gray-600 mt-2">{{ $home_items->subheading_2 }}</h3>
        </section>

        <section class="w-full text-center my-8">
            <h1 class="text-2xl sm:text-3xl md:text-4xl font-bold text-gray-800">{{ $home_items->heading_3 }}</h1>
            <h3 class="text-lg sm:text-xl text-gray-600 mt-2">{{ $home_items->subheading_3 }}</h3>
        </section>
    </main>


    @include('layouts.footer') <!-- Include Footer -->

</body>
</html>
