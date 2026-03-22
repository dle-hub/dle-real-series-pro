<div class="flex flex-col gap-6 relative">
    
    <div class="absolute top-4 right-4 flex flex-col gap-2 z-20 pointer-events-none">
        [new]<span class="bg-emerald-600 text-white text-[10px] font-black px-3 py-1 rounded-full shadow-2xl">YENİ</span>[/new]
        [updated]<span class="bg-orange-500 text-white text-[10px] font-black px-3 py-1 rounded-full shadow-2xl">GÜNCELLENDİ</span>[/updated]
    </div>

    <div class="relative bg-slate-900 rounded-3xl overflow-hidden shadow-2xl border border-slate-800 flex flex-col">
        <div class="aspect-video w-full bg-black relative">
            [xfvalue_player]
        </div>
        
        <div class="flex flex-wrap items-center justify-between p-4 bg-slate-900 border-t border-slate-800 gap-4 relative z-10 shadow-[0_-10px_20px_rgba(0,0,0,0.5)]">
            <div class="flex items-center gap-3 text-sm font-medium">
                <a href="{season_link}" class="bg-teal-600 text-white px-4 py-1.5 rounded-lg shadow-inner flex items-center gap-2 hover:bg-teal-700 transition-colors">
                    <i class="fa-solid fa-layer-group text-teal-200"></i> {season_number}. Sezon
                </a>
                <span class="bg-emerald-600 text-white px-4 py-1.5 rounded-lg shadow-inner flex items-center gap-2">
                    <i class="fa-solid fa-play text-emerald-200"></i> {episode_number}. Bölüm
                </span>
            </div>
            
            [series_nav]
            <div class="flex items-center gap-2">
                {series_navigation}
            </div>
            [/series_nav]
        </div>
    </div>

    <div class="grid grid-cols-1 lg:grid-cols-3 gap-6">
        
        <div class="lg:col-span-2 flex flex-col gap-6">
            <div class="bg-white p-6 md:p-8 rounded-3xl border border-slate-200 shadow-sm relative overflow-hidden">
                <div class="absolute top-0 right-0 p-8 opacity-[0.03] pointer-events-none text-9xl">
                    <i class="fa-solid fa-clapperboard"></i>
                </div>
                
                <div class="flex justify-between items-start relative z-10">
                    <h1 class="text-2xl md:text-3xl font-black text-slate-800 leading-tight mb-2">
                        {title}
                    </h1>
                    [edit]<span class="text-slate-400 hover:text-teal-600"><i class="fa-solid fa-pen-to-square"></i></span>[/edit]
                </div>
                
                <h2 class="text-lg text-teal-600 font-bold mb-6 relative z-10 flex items-center gap-2">
                    <i class="fa-solid fa-quote-left text-teal-300"></i>
                    [xfgiven_episode_name][xfvalue_episode_name][/xfgiven_episode_name]
                    [xfnotgiven_episode_name]Bölüm Özeti[/xfnotgiven_episode_name]
                </h2>
                
                <div class="flex flex-wrap items-center gap-5 text-sm font-medium text-slate-600 mb-6 pb-6 border-b border-slate-100 relative z-10">
                    [xfgiven_episode_vote]
                    <span class="flex items-center gap-2 bg-slate-50 px-3 py-1.5 rounded-lg border border-slate-100">
                        <i class="fa-solid fa-star text-yellow-400 text-lg"></i> [xfvalue_episode_vote] TMDB
                        [xfgiven_ep_vote_count]<span class="text-slate-400 text-xs">([xfvalue_ep_vote_count] oy)</span>[/xfgiven_ep_vote_count]
                    </span>
                    [/xfgiven_episode_vote]

                    [rating]
                    <span class="flex items-center gap-2 bg-slate-50 px-3 py-1.5 rounded-lg border border-slate-100">
                        <i class="fa-solid fa-heart text-red-400 text-lg"></i>
                        [rating-type-1]{rating}[/rating-type-1]
                        [rating-type-2]{likes}[/rating-type-2]
                        [rating-type-3]{ratingscore}[/rating-type-3]
                        [rating-type-4]{ratingscore}[/rating-type-4]
                    </span>
                    <span class="text-[10px] text-slate-400 uppercase font-bold">({vote-num} Oy)</span>
                    [/rating]
                    
                    [xfgiven_episode_year]
                    <span class="flex items-center gap-2 bg-slate-50 px-3 py-1.5 rounded-lg border border-slate-100">
                        <i class="fa-regular fa-calendar text-slate-400 text-lg"></i> [xfvalue_episode_year]
                    </span>
                    [/xfgiven_episode_year]
                </div>
                
                <div class="text-slate-600 leading-relaxed relative z-10 text-[15px] prose max-w-none">
                    {full-story}
                </div>

                [xfgiven_ep_guest_stars]
                <div class="mt-6 p-4 bg-slate-50 rounded-2xl border border-slate-100 relative z-10">
                    <h4 class="text-sm font-black text-slate-800 uppercase mb-2"><i class="fa-solid fa-users text-teal-600"></i> Misafir Oyuncular</h4>
                    <p class="text-sm text-slate-600 font-medium">[xfvalue_ep_guest_stars]</p>
                </div>
                [/xfgiven_ep_guest_stars]

                [xfgiven_ep_crew]
                <div class="mt-4 p-4 bg-slate-50 rounded-2xl border border-slate-100 relative z-10">
                    <h4 class="text-sm font-black text-slate-800 uppercase mb-2"><i class="fa-solid fa-video text-teal-600"></i> Bölüm Ekibi</h4>
                    <p class="text-sm text-slate-600 font-medium">[xfvalue_ep_crew]</p>
                </div>
                [/xfgiven_ep_crew]

                [rating]
                <div class="mt-8 pt-6 border-t border-slate-100 flex items-center justify-end gap-6 relative z-10">
                    <span class="text-xs font-black text-slate-400 uppercase tracking-widest">Bölümü Oyla:</span>
                    <div class="flex items-center gap-4">
                        [rating-plus]
                            <div class="flex items-center gap-2 text-green-500 cursor-pointer font-bold">
                                <i class="fa-solid fa-thumbs-up text-xl"></i> [rating-type-2]{likes}[/rating-type-2][rating-type-3]{likes}[/rating-type-3][rating-type-4]{likes}[/rating-type-4]
                            </div>
                        [/rating-plus]

                        [rating-minus]
                            <div class="flex items-center gap-2 text-red-400 cursor-pointer font-bold">
                                <i class="fa-solid fa-thumbs-down text-xl"></i> [rating-type-3]{dislikes}[/rating-type-3][rating-type-4]{dislikes}[/rating-type-4]
                            </div>
                        [/rating-minus]
                        
                        [rating-type-1]<div class="text-teal-600 font-bold">{rating}</div>[/rating-type-1]
                    </div>
                </div>
                [/rating]
            </div>

            <section class="bg-white p-6 md:p-8 rounded-3xl border border-slate-200 shadow-sm">
                <div class="flex items-center justify-between mb-8">
                    <h3 class="font-black text-xl text-slate-800 uppercase tracking-tight">Yorumlar</h3>
                    <span class="bg-teal-600 text-white px-3 py-1 rounded-full text-xs font-bold shadow-lg shadow-teal-500/30">
                        {comments-num} [declination={comments-num}]yorum|||[/declination]
                    </span>
                </div>
                <div class="space-y-6">
                    {addcomments}
                    {comments}
                    {navigation}
                </div>
            </section>
        </div>

        <div class="flex flex-col gap-6">
            
            [xfgiven_episode_image]
            <div class="bg-white rounded-3xl p-2 border border-slate-200 shadow-sm relative group overflow-hidden">
                <img src="[xfvalue_episode_image]" alt="[xfvalue_episode_name]" class="w-full h-auto rounded-2xl object-cover aspect-video shadow-inner">
            </div>
            [/xfgiven_episode_image]
            
            <div class="bg-gradient-to-br from-slate-50 to-teal-50/30 p-6 rounded-3xl border border-slate-200 shadow-sm">
                <h3 class="text-lg font-bold text-slate-800 mb-5 flex items-center gap-2">
                    <i class="fa-solid fa-circle-info text-teal-600"></i> Bölüm Bilgisi
                </h3>
                <ul class="space-y-4 text-sm text-slate-600">
                    <li class="flex justify-between items-center border-b border-slate-200/60 pb-3">
                        <span class="font-medium flex items-center gap-2"><i class="fa-solid fa-tv text-slate-400"></i> Dizi Adı</span>
                        <span class="font-bold text-slate-800 truncate max-w-[120px]">{title}</span>
                    </li>
                    <li class="flex justify-between items-center border-b border-slate-200/60 pb-3">
                        <span class="font-medium flex items-center gap-2"><i class="fa-solid fa-folder-open text-slate-400"></i> Sezon</span>
                        <span class="bg-white px-2.5 py-1 rounded-md shadow-sm border border-slate-100 text-slate-800 font-bold">{season_number}</span>
                    </li>
                    <li class="flex justify-between items-center border-b border-slate-200/60 pb-3">
                        <span class="font-medium flex items-center gap-2"><i class="fa-solid fa-hashtag text-slate-400"></i> Bölüm</span>
                        <span class="bg-white px-2.5 py-1 rounded-md shadow-sm border border-slate-100 text-slate-800 font-bold">{episode_number}</span>
                    </li>
                    [xfgiven_ep_runtime]
                    <li class="flex justify-between items-center border-b border-slate-200/60 pb-3">
                        <span class="font-medium flex items-center gap-2"><i class="fa-solid fa-clock text-slate-400"></i> Süre</span>
                        <span class="text-slate-800 font-bold">[xfvalue_ep_runtime] dk</span>
                    </li>
                    [/xfgiven_ep_runtime]
                    [xfgiven_kalite]
                    <li class="flex justify-between items-center border-b border-slate-200/60 pb-3">
                        <span class="font-medium flex items-center gap-2"><i class="fa-solid fa-gem text-slate-400"></i> Kalite</span>
                        <span class="text-slate-800 font-bold">[xfvalue_kalite]</span>
                    </li>
                    [/xfgiven_kalite]
                    [xfgiven_watch_providers_tr]
                    <li class="flex justify-between items-center border-b border-slate-200/60 pb-3">
                        <span class="font-medium flex items-center gap-2"><i class="fa-solid fa-play-circle text-slate-400"></i> Platform</span>
                        <span class="text-slate-800 font-bold text-right truncate max-w-[120px]">[xfvalue_watch_providers_tr]</span>
                    </li>
                    [/xfgiven_watch_providers_tr]
                    [xfgiven_ep_production_code]
                    <li class="flex justify-between items-center pb-3">
                        <span class="font-medium flex items-center gap-2"><i class="fa-solid fa-barcode text-slate-400"></i> Yapım Kodu</span>
                        <span class="text-slate-800 font-bold">[xfvalue_ep_production_code]</span>
                    </li>
                    [/xfgiven_ep_production_code]
                </ul>

                <div class="mt-6 pt-6 border-t border-slate-200/60 flex flex-col gap-3">
                    [add-favorites]
                        <div class="flex items-center justify-center gap-2 w-full py-3 bg-white border border-slate-200 rounded-xl text-slate-600 font-bold text-sm hover:bg-teal-50 hover:text-teal-600 hover:border-teal-200 shadow-sm cursor-pointer group">
                            <i class="fa-regular fa-bookmark"></i> Listeme Ekle
                        </div>
                    [/add-favorites]
                    
                    [del-favorites]
                        <div class="flex items-center justify-center gap-2 w-full py-3 bg-teal-600 rounded-xl text-white font-bold text-sm hover:bg-red-500 shadow-lg shadow-teal-500/20 cursor-pointer group">
                            <i class="fa-solid fa-bookmark"></i> Listemden Çıkar
                        </div>
                    [/del-favorites]
                    
                    <div class="text-[10px] text-slate-400 text-center uppercase font-black tracking-widest">
                         Bu içerik {favorite-count} kişinin listesinde
                    </div>
                </div>
            </div>

            [related-news]
            <div class="bg-white p-6 rounded-3xl border border-slate-200 shadow-sm overflow-hidden">
                <h4 class="text-sm font-black text-slate-400 uppercase tracking-widest mb-4">Diğer Bölümler</h4>
                <div class="flex flex-row overflow-x-auto gap-4 pb-4 scrollbar-hide snap-x">
                    {related-news}
                </div>
            </div>

            <style>
            /* Kaydırma çubuğunu gizlemek ama kaydırmayı tutmak için */
            .scrollbar-hide::-webkit-scrollbar { display: none; }
            .scrollbar-hide { -ms-overflow-style: none; scrollbar-width: none; }
            </style>
            [/related-news]
            
        </div>
    </div>
</div>
