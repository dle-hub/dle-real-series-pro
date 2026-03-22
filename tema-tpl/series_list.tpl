<div class="group bg-white rounded-xl shadow-sm border border-slate-200 overflow-hidden hover:shadow-md hover:border-teal-300 mb-3">
    <div class="relative aspect-[2/3] overflow-hidden bg-slate-100">
        [xfgiven_poster_path]
        <img src="[xfvalue_poster_path]" alt="{title}" class="w-full h-full object-cover">
        [/xfgiven_poster_path]
        
        <div class="absolute inset-0 bg-gradient-to-t from-black/80 via-transparent to-transparent opacity-0 group-hover:opacity-100 flex flex-col justify-end p-4">
            [xfgiven_number_of_seasons]
            <span class="text-white text-xs font-medium mb-1"><i class="fa-solid fa-layer-group mr-1"></i> [xfvalue_number_of_seasons] Sezon</span>
            [/xfgiven_number_of_seasons]
            
            [xfgiven_status]
            <span class="text-white text-xs font-medium"><i class="fa-solid fa-play mr-1"></i> [xfvalue_status]</span>
            [/xfgiven_status]
        </div>
        
        [xfgiven_imdb_rating]
        <div class="absolute top-2 right-2 bg-yellow-400 text-black text-[10px] font-bold px-2 py-1 rounded shadow-sm">
            [xfvalue_imdb_rating]
        </div>
        [/xfgiven_imdb_rating]
    </div>
    
    <div class="p-3 text-center">
        <h3 class="font-bold text-slate-800 text-sm truncate group-hover:text-teal-600">
            <a href="{full-link}">{title}</a>
        </h3>
    </div>
</div>
