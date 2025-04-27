@extends('app')

@section('content')

<div class="bg-white p-6 rounded-lg shadow-lg">
    <h1 class="text-3xl font-bold text-gray-800">{{ $mcat->name }}</h1>
    <p class="mt-2 text-gray-600">{{ $mcat->description }}</p>
</div>

@if($mcat->subCategories->count() > 0)
<div class="container mx-auto mt-6">
    <div class="grid grid-cols-1 sm:grid-cols-2 md:grid-cols-3 lg:grid-cols-4 gap-6">
        @foreach($mcat->subCategories as $subcat)
        <a href="{{ url('subcategory/'.$subcat->slug) }}" class="block">
            <div class="bg-white rounded-lg shadow-md overflow-hidden group">

                {{-- Square Image Section --}}
                <div class="relative w-full h-full overflow-hidden">
                    <img src="{{ asset('uploads/sub_category_photos/' . $subcat->photo) }}"
                         alt="{{ $subcat->name }}"
                         class="w-full h-full object-cover transition-transform duration-300 group-hover:scale-105">
                </div>

                {{-- Text Section Below the Image --}}
                <div class="p-4 text-center">
                    <h2 class="text-lg font-semibold text-gray-800">{{ $subcat->name }}</h2>
                    <p class="text-gray-600 text-sm mt-1">{{ Str::limit($subcat->description, 30) }}</p>
                </div>

            </div>
        </a>
        @endforeach
    </div>
</div>
@else
<div class="text-center text-gray-500 mt-6">No subcategories available.</div>
@endif

@endsection
