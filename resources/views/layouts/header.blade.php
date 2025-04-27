<header class="bg-white text-gray-900 py-2 shadow-md">
    <div class="container mx-auto">
        <!-- First Row -->
        <div class="flex justify-between items-center py-2">
            <!-- Left: Logo & Sports List -->
            <div class="flex items-center">
                <a href="{{ url('/') }}" class="ml-6">
                    <img src="{{ asset('uploads/site_photos/logo.png') }}" alt="Swift Sports Logo" class="h-12 w-auto">
                </a>

                <!-- Sports List (After Logo, Smaller Font) -->
                <nav class="ml-6 text-sm text-gray-700">
                    <ul class="flex space-x-4">
                        @foreach (\App\Http\Controllers\SportsController::getSports() as $sport)
                            <li>
                                <a href="{{ url('/sports/' . $sport->slug) }}" class="hover:text-blue-600">
                                    {{ $sport->name }}
                                </a>
                            </li>
                        @endforeach
                    </ul>
                </nav>
            </div>

            <!-- Right: Dropdowns -->
            <div class="flex space-x-6 mr-6">
                <!-- Watch Dropdown -->
                <div class="relative group">
                    <button class="flex items-center text-gray-700 hover:text-blue-600">
                        <img src="{{ asset('uploads/site_photos/watch_icon.png') }}" class="w-5 h-5 mr-1">
                        Watch
                        <svg class="w-4 h-4 ml-1 transform group-hover:rotate-180 transition" fill="currentColor" viewBox="0 0 20 20">
                            <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"/>
                        </svg>
                    </button>
                    <ul class="absolute right-0 mt-2 w-40 bg-white border rounded-lg shadow-lg hidden group-hover:block">
                        <li><a href="#" class="block px-4 py-2 hover:bg-gray-200">Live Matches</a></li>
                        <li><a href="#" class="block px-4 py-2 hover:bg-gray-200">Highlights</a></li>
                    </ul>
                </div>

                <!-- More Dropdown -->
                <div class="relative group">
                    <button class="flex items-center text-gray-700 hover:text-blue-600">
                        More
                        <svg class="w-4 h-4 ml-1 transform group-hover:rotate-180 transition" fill="currentColor" viewBox="0 0 20 20">
                            <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"/>
                        </svg>
                    </button>
                    <ul class="absolute right-0 mt-2 w-40 bg-white border rounded-lg shadow-lg hidden group-hover:block">
                        <li><a href="#" class="block px-4 py-2 hover:bg-gray-200">Stats</a></li>
                        <li><a href="#" class="block px-4 py-2 hover:bg-gray-200">Standings</a></li>
                    </ul>
                </div>

                <!-- News Dropdown -->
                <div class="relative group">
                    <button class="flex items-center text-gray-700 hover:text-blue-600">
                        <img src="{{ asset('uploads/site_photos/news_icon.png') }}" class="w-5 h-5 mr-1">
                        News
                        <svg class="w-4 h-4 ml-1 transform group-hover:rotate-180 transition" fill="currentColor" viewBox="0 0 20 20">
                            <path fill-rule="evenodd" d="M5.293 7.293a1 1 0 011.414 0L10 10.586l3.293-3.293a1 1 0 011.414 1.414l-4 4a1 1 0 01-1.414 0l-4-4a1 1 0 010-1.414z" clip-rule="evenodd"/>
                        </svg>
                    </button>
                    <ul class="absolute right-0 mt-2 w-40 bg-white border rounded-lg shadow-lg hidden group-hover:block">
                        <li><a href="#" class="block px-4 py-2 hover:bg-gray-200">Latest News</a></li>
                        <li><a href="#" class="block px-4 py-2 hover:bg-gray-200">Trending</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <!-- Second Row: Static List -->
        <nav class="flex justify-start border-t border-gray-300 pt-2">
            <ul class="flex space-x-4 text-base font-semibold ml-6">
                <li><a href="/" class="text-gray-500 hover:text-blue-400">NFL</a></li>
                <li><a href="/" class="text-gray-500 hover:text-blue-400">NBA</a></li>
                <li><a href="/" class="text-gray-500 hover:text-blue-400">NHL</a></li>
                <li><a href="/" class="text-gray-500 hover:text-blue-400">NCAAB</a></li>
                <li><a href="/" class="text-gray-500 hover:text-blue-400">NCAAW</a></li>
                <li><a href="/" class="text-gray-500 hover:text-blue-400">MLB</a></li>
                <li><a href="" class="text-gray-700">|</a></li>
                <li><a href="/" class="text-green-600 hover:text-blue-400">Daily Draw</a></li>
                <li><a href="/" class="text-purple-800 hover:text-blue-400">Fantasy Sports</a></li>
                <li>
                    <a href="/" class="text-purple-800 hover:text-blue-400 flex items-center">
                        <img src="{{ asset('uploads/site_photos/soccer_logo.jpg') }}" alt="icon" class="w-6 h-6">
                        <span class="font-bold italic text-lg">Soccer</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
</header>
