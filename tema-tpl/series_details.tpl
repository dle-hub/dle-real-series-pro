<div class="flex flex-col gap-8 relative">
    
    <div class="absolute top-6 right-6 flex flex-col gap-2 z-30">
        [new]<span class="bg-emerald-500 text-white text-[10px] font-black px-4 py-1.5 rounded-full shadow-2xl">YENİ DİZİ</span>[/new]
        [updated]<span class="bg-orange-500 text-white text-[10px] font-black px-4 py-1.5 rounded-full shadow-2xl">GÜNCELLENDİ</span>[/updated]
    </div>

    <div class="relative w-full h-[450px] md:h-[500px] rounded-[2.5rem] overflow-hidden shadow-2xl border border-white/10">
        [xfgiven_backdrop_path]
        <img src="[xfvalue_backdrop_path]" class="w-full h-full object-cover blur-[1px] brightness-[0.4]" alt="{title}">
        [/xfgiven_backdrop_path]
        [xfnotgiven_backdrop_path]
        <div class="w-full h-full bg-slate-900"></div>
        [/xfnotgiven_backdrop_path]
        
        <div class="absolute inset-0 flex items-end p-6 md:p-12 bg-gradient-to-t from-slate-950 via-slate-900/40 to-transparent">
            <div class="flex flex-col md:flex-row gap-8 items-center md:items-end w-full relative z-10">
                
                <div class="relative shrink-0">
                    [xfgiven_poster_path]
                    <img src="[xfvalue_poster_path]" class="w-40 md:w-52 rounded-3xl shadow-2xl border-4 border-white/20">
                    [/xfgiven_poster_path]
                    [rating]
                    <div class="absolute -top-4 -right-4 bg-yellow-400 text-slate-900 font-black text-sm w-14 h-14 rounded-full flex items-center justify-center shadow-2xl border-4 border-slate-950">
                        {ratingscore}
                    </div>
                    [/rating]
                </div>

                <div class="text-center md:text-left flex-grow pb-2">
                    <div class="flex flex-wrap justify-center md:justify-start items-center gap-3 mb-4">
                        <span class="bg-teal-600 text-white text-[10px] font-black px-3 py-1 rounded-lg uppercase tracking-widest">{category}</span>
                        [xfgiven_genres]<span class="bg-white/10 text-white text-[10px] font-bold px-3 py-1 rounded-lg">[xfvalue_genres]</span>[/xfgiven_genres]
                        [edit]<span class="text-white/40 hover:text-white cursor-pointer text-sm"><i class="fa-solid fa-pen-to-square"></i></span>[/edit]
                    </div>
                    
                    [xfgiven_logo_path]
                    <img src="[xfvalue_logo_path]" class="max-h-16 mb-4 object-contain" alt="{title}">
                    [/xfgiven_logo_path]
                    [xfnotgiven_logo_path]
                    <h1 class="text-4xl md:text-6xl font-black text-white mb-4 tracking-tighter leading-tight">{title}</h1>
                    [/xfnotgiven_logo_path]
                    
                    <div class="flex flex-wrap justify-center md:justify-start gap-5 text-white/90 text-sm font-bold uppercase tracking-wide">
                        [xfgiven_year]<span><i class="fa-solid fa-calendar text-teal-400 mr-2"></i>[xfvalue_year]</span>[/xfgiven_year]
                        [xfgiven_networks]<span><i class="fa-solid fa-tv text-teal-400 mr-2"></i>[xfvalue_networks]</span>[/xfgiven_networks]
                        [xfgiven_tv_type]<span><i class="fa-solid fa-clapperboard text-teal-400 mr-2"></i>[xfvalue_tv_type]</span>[/xfgiven_tv_type]
                        [xfgiven_status]
                        <span class="px-4 py-1.5 bg-white/10 backdrop-blur-md rounded-xl text-xs border border-white/10">[xfvalue_status]</span>
                        [/xfgiven_status]
                    </div>
                </div>

                [rating]
                <div class="flex flex-col gap-4 shrink-0 bg-white/5 backdrop-blur-2xl p-4 rounded-[2rem] border border-white/10">
                    <div class="flex gap-6 justify-center text-2xl">
                        [rating-plus]<i class="fa-solid fa-thumbs-up text-green-400 cursor-pointer"></i>[/rating-plus]
                        <span class="text-white/10 text-xl">|</span>
                        [rating-minus]<i class="fa-solid fa-thumbs-down text-red-400 cursor-pointer"></i>[/rating-minus]
                    </div>
                    <div class="text-[9px] text-white/40 text-center font-black uppercase tracking-widest">{vote-num} TOPLAM OY</div>
                </div>
                [/rating]
            </div>
        </div>
    </div>

    <div class="grid grid-cols-1 lg:grid-cols-3 gap-10">
        
        <div class="lg:col-span-2 space-y-10">
            <section class="bg-white p-8 md:p-10 rounded-[2.5rem] shadow-sm border border-slate-200 relative overflow-hidden">
                <h3 class="text-2xl font-black text-slate-800 mb-6 flex items-center gap-4 text-teal-600">
                    <i class="fa-solid fa-align-left"></i> Dizi Özeti
                </h3>
                <div class="text-slate-600 leading-relaxed text-lg italic border-l-4 border-slate-100 pl-6">
                    {full-story}
                </div>
                [xfgiven_tagline]
                <p class="mt-4 text-slate-400 text-sm italic border-l-4 border-teal-200 pl-4">"[xfvalue_tagline]"</p>
                [/xfgiven_tagline]
            </section>

            [xfgiven_trailer_embed]
            <section class="bg-white p-8 rounded-[2.5rem] shadow-sm border border-slate-200">
                <h3 class="text-xl font-black text-slate-800 mb-6 flex items-center gap-3">
                    <i class="fa-brands fa-youtube text-red-500 text-2xl"></i> Fragman
                </h3>
                <div class="aspect-video rounded-2xl overflow-hidden bg-slate-900">
                    [xfvalue_trailer_embed]
                </div>
            </section>
            [/xfgiven_trailer_embed]

            [series_list]
            <section class="space-y-6">
                <div class="flex items-center justify-between px-2">
                    <h3 class="text-2xl font-black text-slate-800 flex items-center gap-3">
                        <i class="fa-solid fa-layer-group text-teal-600"></i> İçerik Rehberi
                    </h3>
                </div>
                <div class="grid grid-cols-1 gap-4">
                    {series_list} 
                </div>
            </section>
            [/series_list]
        </div>

        <aside class="space-y-8">
            <div class="bg-white p-8 rounded-[2.5rem] shadow-sm border border-slate-200 relative overflow-hidden">
                <div class="absolute -right-6 -bottom-6 text-slate-50 text-9xl opacity-50 pointer-events-none rotate-12"><i class="fa-solid fa-tv"></i></div>
                
                <h4 class="text-xs font-black text-slate-400 uppercase tracking-[0.3em] mb-8 relative z-10">KÜNYE BİLGİLERİ</h4>
                
                <div class="space-y-5 text-sm font-bold text-slate-700 relative z-10">

                    [xfgiven_vote_average]
                    <div class="flex items-center gap-3 pb-3 border-b border-slate-50">
                        <span class="text-yellow-400 text-2xl font-black">[xfvalue_vote_average]</span>
                        <div class="flex flex-col">
                            <span class="text-slate-400 text-[10px] font-black uppercase">TMDB Puanı</span>
                            [xfgiven_vote_count]<span class="text-slate-500 text-xs">[xfvalue_vote_count] oy</span>[/xfgiven_vote_count]
                        </div>
                    </div>
                    [/xfgiven_vote_average]

                    [xfgiven_original_name]
                    <div class="flex flex-col gap-1 pb-3 border-b border-slate-50">
                        <span class="text-slate-400 text-[10px] font-black uppercase">Orijinal İsim</span>
                        <span class="text-slate-900 font-black italic">[xfvalue_original_name]</span>
                    </div>
                    [/xfgiven_original_name]

                    <div class="grid grid-cols-2 gap-4 pb-3 border-b border-slate-50">
                        [xfgiven_first_air_date]
                        <div class="flex flex-col gap-1 text-[11px]">
                            <span class="text-slate-400 font-black uppercase">İlk Yayın</span>
                            <span class="text-slate-900 font-bold">[xfvalue_first_air_date]</span>
                        </div>
                        [/xfgiven_first_air_date]
                        [xfgiven_last_air_date]
                        <div class="flex flex-col gap-1 text-[11px]">
                            <span class="text-slate-400 font-black uppercase">Son Yayın</span>
                            <span class="text-slate-900 font-bold">[xfvalue_last_air_date]</span>
                        </div>
                        [/xfgiven_last_air_date]
                    </div>

                    <div class="grid grid-cols-2 gap-4 pb-3 border-b border-slate-50">
                        [xfgiven_spoken_languages]
                        <div class="flex flex-col gap-1 text-[11px]">
                            <span class="text-slate-400 font-black uppercase">Dil</span>
                            <span class="text-slate-900 uppercase font-black">[xfvalue_spoken_languages]</span>
                        </div>
                        [/xfgiven_spoken_languages]
                        [xfgiven_age_limit]
                        <div class="flex flex-col gap-1 text-[11px]">
                            <span class="text-slate-400 font-black uppercase">Sertifika</span>
                            <span class="text-red-500 font-black uppercase">[xfvalue_age_limit]</span>
                        </div>
                        [/xfgiven_age_limit]
                    </div>

                    <div class="grid grid-cols-2 gap-4 pb-3 border-b border-slate-50">
                        [xfgiven_number_of_seasons]
                        <div class="flex flex-col gap-1">
                            <span class="text-slate-400 text-[10px] font-black uppercase">Sezon</span>
                            <span class="text-slate-900 text-lg font-black leading-none">[xfvalue_number_of_seasons]</span>
                        </div>
                        [/xfgiven_number_of_seasons]
                        [xfgiven_number_of_episodes]
                        <div class="flex flex-col gap-1">
                            <span class="text-slate-400 text-[10px] font-black uppercase">Bölüm</span>
                            <span class="text-slate-900 text-lg font-black leading-none">[xfvalue_number_of_episodes]</span>
                        </div>
                        [/xfgiven_number_of_episodes]
                    </div>

                    [xfgiven_created_by]
                    <div class="flex flex-col gap-1 pb-3 border-b border-slate-50">
                        <span class="text-slate-400 text-[10px] font-black uppercase">Yaratıcı / Yönetmen</span>
                        <span class="text-slate-900 font-black uppercase italic">[xfvalue_created_by]</span>
                    </div>
                    [/xfgiven_created_by]

                    [xfgiven_production_companies]
                    <div class="flex flex-col gap-1 pb-3 border-b border-slate-50">
                        <span class="text-slate-400 text-[10px] font-black uppercase">Yapım Şirketi</span>
                        <span class="text-slate-700 text-xs font-bold">[xfvalue_production_companies]</span>
                    </div>
                    [/xfgiven_production_companies]

                    [xfgiven_production_countries]
                    <div class="flex flex-col gap-1 pb-3 border-b border-slate-50">
                        <span class="text-slate-400 text-[10px] font-black uppercase">Ülke</span>
                        <span class="text-slate-700 text-xs font-bold">[xfvalue_production_countries]</span>
                    </div>
                    [/xfgiven_production_countries]

                    [xfgiven_popularity]
                    <div class="flex flex-col gap-1 pb-3 border-b border-slate-50">
                        <span class="text-slate-400 text-[10px] font-black uppercase">Popülerlik</span>
                        <span class="text-teal-600 font-black">[xfvalue_popularity]</span>
                    </div>
                    [/xfgiven_popularity]

                    [xfgiven_watch_providers_tr]
                    <div class="flex flex-col gap-1 pb-3 border-b border-slate-50">
                        <span class="text-slate-400 text-[10px] font-black uppercase">Nereden İzlenir</span>
                        <span class="text-slate-700 text-xs font-bold">[xfvalue_watch_providers_tr]</span>
                    </div>
                    [/xfgiven_watch_providers_tr]

                    [xfgiven_next_episode_to_air]
                    <div class="flex flex-col gap-1 pb-3 border-b border-slate-50">
                        <span class="text-slate-400 text-[10px] font-black uppercase text-teal-500">Sonraki Bölüm</span>
                        <span class="text-slate-700 text-xs font-bold">[xfvalue_next_episode_to_air]</span>
                    </div>
                    [/xfgiven_next_episode_to_air]

                    [xfgiven_last_episode_to_air]
                    <div class="flex flex-col gap-1 pb-3 border-b border-slate-50">
                        <span class="text-slate-400 text-[10px] font-black uppercase">Son Yayınlanan</span>
                        <span class="text-slate-700 text-xs font-bold">[xfvalue_last_episode_to_air]</span>
                    </div>
                    [/xfgiven_last_episode_to_air]

                    [xfgiven_homepage]
                    <div class="flex flex-col gap-1 pb-3 border-b border-slate-50">
                        <span class="text-slate-400 text-[10px] font-black uppercase">Web Sitesi</span>
                        <a href="[xfvalue_homepage]" target="_blank" rel="nofollow" class="text-teal-600 text-xs font-bold hover:underline truncate">[xfvalue_homepage]</a>
                    </div>
                    [/xfgiven_homepage]

                    <div class="flex flex-col gap-1">
                        <span class="text-slate-400 text-[10px] font-black uppercase">Paylaşan / Tarih</span>
                        <span class="text-slate-700 text-xs font-bold uppercase tracking-tighter">{author} / {date}</span>
                    </div>
                </div>

                <div class="mt-10 relative z-10 flex flex-col gap-3">
                    [add-favorites]
                    <div class="flex items-center justify-center gap-3 w-full py-4 bg-slate-900 text-white rounded-2xl font-black text-xs uppercase tracking-widest hover:bg-teal-600 shadow-2xl shadow-slate-900/30 cursor-pointer group">
                        <i class="fa-regular fa-bookmark text-lg"></i> Listeme Ekle
                    </div>
                    [/add-favorites]
                    [del-favorites]
                    <div class="flex items-center justify-center gap-3 w-full py-4 bg-red-600 text-white rounded-2xl font-black text-xs uppercase tracking-widest hover:bg-red-500 shadow-2xl shadow-red-600/30 cursor-pointer">
                        <i class="fa-solid fa-bookmark text-lg"></i> Listemden Çıkar
                    </div>
                    [/del-favorites]
                    [xfgiven_trailer_url]
                    <a href="[xfvalue_trailer_url]" target="_blank" rel="nofollow" class="flex items-center justify-center gap-3 w-full py-4 bg-red-600 text-white rounded-2xl font-black text-xs uppercase tracking-widest hover:bg-red-500 shadow-2xl shadow-red-600/30">
                        <i class="fa-brands fa-youtube text-lg"></i> Fragmanı İzle
                    </a>
                    [/xfgiven_trailer_url]
                </div>
            </div>

            [xfgiven_cast]
            <div class="bg-slate-50 p-8 rounded-[2.5rem] border border-slate-100">
                <h4 class="text-xs font-black text-slate-400 uppercase tracking-widest mb-4 italic text-teal-600"><i class="fa-solid fa-users"></i> Oyuncular</h4>
                <p class="text-xs text-slate-600 leading-relaxed font-bold italic">[xfvalue_cast]</p>
            </div>
            [/xfgiven_cast]

            [edit-date]
            <div class="p-5 bg-teal-50/50 border border-teal-100 rounded-[1.5rem] text-[10px] text-teal-900 font-bold italic leading-snug text-center">
                {edit-date} tarihinde {editor} tarafından güncellendi.
            </div>
            [/edit-date]
        </aside>
    </div>

    [related-news]
    <section class="mt-6">
        <h3 class="text-2xl font-black text-slate-900 mb-8 uppercase tracking-tighter italic border-l-8 border-yellow-400 pl-5">Bunları Kaçırma</h3>
        <div class="flex flex-row overflow-x-auto gap-6 pb-8 snap-x scrollbar-hide">
            {related-news}
        </div>
    </section>
    [/related-news]

    <section class="bg-white p-10 rounded-[2.5rem] shadow-sm border border-slate-200 mt-6">
        <div class="flex items-center justify-between mb-12">
            <h3 class="text-3xl font-black text-slate-900 uppercase tracking-tighter italic"><i class="fa-regular fa-comment-dots text-teal-600"></i> Yorumlar</h3>
            <div class="bg-slate-900 text-white px-5 py-2 rounded-2xl font-black text-sm shadow-xl">
                {comments-num} [declination={comments-num}]yorum|||[/declination]
            </div>
        </div>
        <div class="space-y-10">
            {addcomments}
            {comments}
            {navigation}
        </div>
    </section>
</div>

<style>
.scrollbar-hide::-webkit-scrollbar { display: none; }
.scrollbar-hide { -ms-overflow-style: none; scrollbar-width: none; }
</style>