<div class="flex flex-col gap-8 relative">

    <div class="absolute top-4 right-4 flex flex-col gap-2 z-20">
        [new]<span class="bg-emerald-500 text-white text-[10px] font-black px-3 py-1 rounded-full shadow-xl">YENİ SEZON</span>[/new]
        [updated]<span class="bg-orange-500 text-white text-[10px] font-black px-3 py-1 rounded-full shadow-xl">GÜNCELLENDİ</span>[/updated]
    </div>
    
    <div class="relative bg-slate-900 rounded-3xl overflow-hidden shadow-2xl border border-slate-800 flex flex-col md:flex-row items-center md:items-stretch min-h-[350px]">
        
        [xfgiven_season_poster]
        <div class="absolute inset-0 opacity-20 pointer-events-none">
            <img src="[xfvalue_season_poster]" class="w-full h-full object-cover blur-xl scale-110">
            <div class="absolute inset-0 bg-gradient-to-r from-slate-900 via-slate-900/90 to-transparent"></div>
        </div>
        [/xfgiven_season_poster]

        <div class="relative p-6 md:p-8 shrink-0 flex items-center justify-center z-10 w-full md:w-auto">
            <div class="relative group">
                [xfgiven_season_poster]
                <img src="[xfvalue_season_poster]" alt="{title}" class="w-48 md:w-56 rounded-2xl shadow-[0_15px_30px_rgba(0,0,0,0.6)] border-4 border-slate-800/50">
                [/xfgiven_season_poster]
                [xfnotgiven_season_poster]
                <div class="w-48 md:w-56 aspect-[2/3] bg-slate-800 rounded-2xl flex items-center justify-center border-4 border-slate-800/50">
                    <i class="fa-solid fa-image text-5xl text-slate-600"></i>
                </div>
                [/xfnotgiven_season_poster]

                [rating]
                <div class="absolute -bottom-4 -right-4 bg-yellow-400 text-slate-900 font-black text-sm w-12 h-12 rounded-full flex items-center justify-center shadow-2xl border-4 border-slate-900">
                    {ratingscore}
                </div>
                [/rating]
            </div>
        </div>

        <div class="relative p-6 md:p-8 md:pl-0 flex flex-col justify-center flex-grow z-10 w-full text-center md:text-left">
            
            <div class="inline-flex items-center justify-center md:justify-start gap-3 mb-4 flex-wrap">
                <span class="bg-teal-600 text-white text-xs font-black px-3 py-1 rounded-lg shadow-inner tracking-wider">
                    {category}
                </span>
                
                [xfgiven_season_year]
                <span class="bg-slate-800/80 backdrop-blur-sm text-slate-300 text-xs font-bold px-3 py-1 rounded-lg border border-slate-700 flex items-center gap-2">
                    <i class="fa-regular fa-calendar text-teal-400"></i> [xfvalue_season_year]
                </span>
                [/xfgiven_season_year]

                [xfgiven_season_vote_average]
                <span class="bg-slate-800/80 backdrop-blur-sm text-yellow-300 text-xs font-bold px-3 py-1 rounded-lg border border-slate-700 flex items-center gap-2">
                    <i class="fa-solid fa-star text-yellow-400"></i> [xfvalue_season_vote_average]
                </span>
                [/xfgiven_season_vote_average]

                [xfgiven_season_episode_count]
                <span class="bg-slate-800/80 backdrop-blur-sm text-slate-300 text-xs font-bold px-3 py-1 rounded-lg border border-slate-700 flex items-center gap-2">
                    <i class="fa-solid fa-clapperboard text-teal-400"></i> [xfvalue_season_episode_count] Bölüm
                </span>
                [/xfgiven_season_episode_count]

                <span class="bg-slate-800/80 backdrop-blur-sm text-slate-400 text-xs font-bold px-3 py-1 rounded-lg border border-slate-700 flex items-center gap-2">
                    <i class="fa-solid fa-eye text-teal-400"></i> {views} İzlenme
                </span>

                [edit]<span class="text-white/30 hover:text-white cursor-pointer ml-auto"><i class="fa-solid fa-pen-to-square"></i></span>[/edit]
            </div>

            <!-- Dizi Ana Köprüsü -->
            <a href="{series_link}" class="inline-flex items-center gap-2 text-teal-400 hover:text-teal-300 transition-colors text-sm font-bold mb-3 uppercase tracking-wider bg-teal-900/40 px-3 py-1.5 rounded-lg border border-teal-800/50 w-fit">
                <i class="fa-solid fa-arrow-left"></i> {series_title} 
            </a>

            <h1 class="text-3xl md:text-5xl font-black text-white mb-4 leading-tight tracking-tighter">
                {title}
            </h1>

            <!-- Sezonlar Arası Navigasyon -->
            [season_nav]
            <div class="mb-6 border-b border-slate-700/50 pb-4">
                {season_navigation}
            </div>
            [/season_nav]

            <div class="text-slate-300 text-sm md:text-[15px] leading-relaxed bg-slate-800/40 p-4 md:p-0 md:bg-transparent rounded-xl border border-slate-700 md:border-none prose prose-invert max-w-none">
                [xfgiven_season_overview][xfvalue_season_overview][/xfgiven_season_overview]
                [xfnotgiven_season_overview]{full-story}[/xfnotgiven_season_overview]
                [pages]<div class="mt-4 text-teal-400 font-bold">Sayfalar: {pages}</div>[/pages]
            </div>

            <div class="mt-6 flex flex-wrap justify-center md:justify-start gap-4">
                <div class="bg-white/5 backdrop-blur-md p-2 px-4 rounded-xl border border-white/10 flex gap-4 items-center">
                    [rating-plus]<i class="fa-solid fa-thumbs-up text-green-400 cursor-pointer"></i>[/rating-plus]
                    <span class="text-white/20">|</span>
                    [rating-minus]<i class="fa-solid fa-thumbs-down text-red-400 cursor-pointer"></i>[/rating-minus]
                </div>
                {favorites}
            </div>
        </div>
    </div>

    [series_list]
    <div class="bg-white rounded-3xl p-6 md:p-8 shadow-sm border border-slate-200 relative overflow-hidden">
        <div class="absolute -right-6 -top-6 text-slate-50 text-9xl pointer-events-none">
            <i class="fa-solid fa-list-ul"></i>
        </div>

        <div class="flex items-center justify-between mb-6 pb-4 border-b border-slate-100 relative z-10">
            <h3 class="text-xl md:text-2xl font-black text-slate-800 flex items-center gap-3">
                <div class="w-12 h-12 rounded-xl bg-teal-50 text-teal-600 flex items-center justify-center shadow-inner">
                    <i class="fa-solid fa-play"></i>
                </div>
                Bölüm Rehberi
            </h3>
            <span class="hidden md:inline-block bg-slate-100 text-slate-500 text-xs font-bold px-3 py-1.5 rounded-lg border border-slate-200 shadow-sm">
                S{season_number} SEZON BÖLÜMLERİ
            </span>
        </div>
        
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-4 relative z-10">
            {series_list}
        </div>
    </div>
    [/series_list]

    [edit-date]
    <div class="bg-teal-50 p-4 rounded-2xl border border-teal-100 text-[11px] text-teal-800 italic">
        <i class="fa-solid fa-circle-info mr-2"></i> Bu sezon en son <b>{edit-date}</b> tarihinde <b>{editor}</b> tarafından güncellendi. 
        [edit-reason]Neden: {edit-reason}[/edit-reason]
    </div>
    [/edit-date]

    [tags]
    <div class="flex flex-wrap gap-2 text-slate-400 text-xs py-2">
        <i class="fa-solid fa-tags mr-1"></i> {tags}
    </div>
    [/tags]

    [related-news]
<div class="mt-10 pt-10 border-t border-slate-100 overflow-hidden">
    <h3 class="text-xl font-black text-slate-800 mb-6 flex items-center gap-3">
        <span class="w-1.5 h-6 bg-teal-600 rounded-full"></span>
        BENZER İÇERİKLER
    </h3>
    
    <div class="flex flex-row overflow-x-auto gap-4 pb-6 snap-x scrollbar-hide">
        {related-news}
    </div>
</div>

<style>
/* Kaydırma çubuğunu gizle ama fonksiyonu koru */
.scrollbar-hide::-webkit-scrollbar { display: none; }
.scrollbar-hide { -ms-overflow-style: none; scrollbar-width: none; }
</style>
[/related-news]


    <section class="bg-white p-8 rounded-3xl shadow-sm border border-slate-200">
        <div class="flex items-center justify-between mb-10">
            <h3 class="text-2xl font-black text-slate-800">Yorumlar</h3>
            <span class="bg-teal-600 text-white px-4 py-1 rounded-full text-xs font-black">
                {comments-num} [declination={comments-num}]yorum|||[/declination]
            </span>
        </div>
        <div class="space-y-8">
            {addcomments}
            {comments}
            {navigation}
        </div>
    </section>

</div>
