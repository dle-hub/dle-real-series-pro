<div class="group bg-slate-50 rounded-xl border border-slate-200 overflow-hidden hover:bg-white hover:border-teal-400 hover:shadow-lg mb-3">
    <a href="{full-link}" class="flex items-center p-3 gap-4">
        <div class="relative w-20 h-14 shrink-0 rounded-lg overflow-hidden bg-slate-200 shadow-inner">
            [xfgiven_episode_image]
            <img src="[xfvalue_episode_image]" alt="{title}" class="w-full h-full object-cover">
            [/xfgiven_episode_image]
            <div class="absolute inset-0 flex items-center justify-center bg-black/20 group-hover:bg-transparent">
                <span class="text-white font-black text-xs drop-shadow-md">{episode_number}</span>
            </div>
        </div>
        
        <div class="flex-grow min-w-0">
            <h4 class="text-sm font-bold text-slate-800 group-hover:text-teal-600 truncate">
                {episode_number}. Bölüm
            </h4>
            [xfgiven_episode_name]
            <p class="text-[11px] text-slate-400 truncate mt-0.5">[xfvalue_episode_name]</p>
            [/xfgiven_episode_name]
        </div>
    </a>
</div>
