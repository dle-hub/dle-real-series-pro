<div class="bg-white rounded-2xl shadow-sm border border-slate-200 p-5 mb-4 flex flex-col md:flex-row gap-5 hover:border-teal-300 group">
    <div class="w-32 h-44 shrink-0 overflow-hidden rounded-xl shadow-md bg-slate-100">
        [xfgiven_poster_path]
        <img src="[xfvalue_poster_path]" alt="{title}" class="w-full h-full object-cover">
        [/xfgiven_poster_path]
    </div>
    
    <div class="flex-grow">
        <div class="flex justify-between items-start">
            <h2 class="text-xl font-bold text-slate-800 leading-tight group-hover:text-teal-600">
                <a href="{full-link}">{title}</a>
            </h2>
            [xfgiven_imdb_rating]
            <span class="bg-yellow-400 text-black text-xs font-bold px-2 py-1 rounded shadow-sm">IMDb: [xfvalue_imdb_rating]</span>
            [/xfgiven_imdb_rating]
        </div>
        
        <p class="text-slate-500 text-sm mt-2 line-clamp-2 leading-relaxed">{short-story}</p>
        
        <div class="mt-4 flex flex-wrap gap-2">
        </div>
    </div>
</div>
