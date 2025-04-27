@extends('app')

@section('content')

<div class="bg-white p-6 rounded-lg shadow-lg">
    <h1 class="text-3xl font-bold text-gray-800">{{ $sport->name }}</h1>
    <p class="mt-2 text-gray-600">{{ $sport->description }}</p>
</div>

@if($sport->mainCategories->count() > 0)
<div class="relative mt-6 w-full overflow-hidden">

    <!-- Left Button -->
    <button id="prevBtn" 
        class="absolute left-4 top-1/2 transform -translate-y-1/2 bg-gray-800 text-white w-10 h-10 flex items-center justify-center rounded-full shadow-lg hover:bg-gray-900 transition z-10">
        &#10094;
    </button>

    <!-- Carousel Wrapper -->
    <div class="w-full overflow-hidden px-14">
        <div id="carouselContainer" class="w-full overflow-hidden">
            <div id="carousel" class="flex transition-transform duration-500 ease-in-out space-x-4">
                
                @foreach($sport->mainCategories as $mcat)
                    <a href="{{ route('sports_main_categories', $mcat->slug) }}" class="carousel-item block w-1/4 flex-shrink-0">
                        <div class="relative overflow-hidden rounded-lg shadow-md group">
                            <img src="{{ asset('uploads/featured_photos/' . $mcat->photo) }}" 
                                class="w-full h-64 object-cover transition-transform duration-300 group-hover:scale-105">
                        </div>
                    </a>
                @endforeach

            </div>
        </div>
    </div>

    <!-- Right Button -->
    <button id="nextBtn" 
        class="absolute right-4 top-1/2 transform -translate-y-1/2 bg-gray-800 text-white w-10 h-10 flex items-center justify-center rounded-full shadow-lg hover:bg-gray-900 transition z-10">
        &#10095;
    </button>

</div>

<script>
    document.addEventListener("DOMContentLoaded", function () {
        const carousel = document.getElementById("carousel");
        const prevBtn = document.getElementById("prevBtn");
        const nextBtn = document.getElementById("nextBtn");
        const items = document.querySelectorAll(".carousel-item");

        let index = 0;
        const visibleItems = 4; // Adjust if necessary
        const totalItems = items.length;
        const itemWidth = items[0].offsetWidth + 16; // Adjust for margin
        const maxIndex = totalItems - visibleItems;

        function updateCarousel() {
            carousel.style.transform = `translateX(${-index * itemWidth}px)`;
        }

        nextBtn.addEventListener("click", function () {
            if (index < maxIndex) {
                index++;
            } else {
                index = 0; // Loop back to start
            }
            updateCarousel();
        });

        prevBtn.addEventListener("click", function () {
            if (index > 0) {
                index--;
            } else {
                index = maxIndex; // Loop back to end
            }
            updateCarousel();
        });
    });
</script>
@endif

@endsection
