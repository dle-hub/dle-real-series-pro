# DLE Real Series PRO v7.0 🎬

DataLife Engine için geliştirilmiş, TMDB API destekli profesyonel dizi, sezon ve bölüm yönetim sistemi. Standart DLE yapısını hiyerarşik bir dizi platformuna dönüştürerek içerikleri `Dizi → Sezon → Bölüm` şeklinde birbirine bağlar.

---

## 🔥 Özellikler

- **Hiyerarşik Yapı** — `is_series`, `series_parent`, `series_season`, `series_episode` sütunları ile veritabanı seviyesinde dizi/sezon/bölüm ilişkisi
- **TMDB API Entegrasyonu** — Tek tıkla oyuncular, fragmanlar, ekip bilgisi ve görseller dahil tüm veriler otomatik çekilir
- **Otomatik Şablon Yönlendirme** — `show.full.php`, `show.short.php`, `show.custom.php`, `show.related.php`, `topnews.php` içerik tipine göre doğru `.tpl` dosyasını otomatik yükler
- **XField Normalizer** — `poster_path`, `vote_average`, `year` gibi standart alanlar sezon/bölüm verilerinden otomatik normalize edilerek her temada görseller doğru çalışır
- **Fallback Injector** — Sezon/bölüm kartlarında resim yoksa üst kaynaktan (sezon afişi → dizi afişi) otomatik bulur
- **Sezon Navigasyonu** — Sezon sayfasında "Önceki Sezon / Sonraki Sezon" butonları, dizi ana sayfasına link
- **Bölüm Navigasyonu** — Bölüm sayfasında "Önceki Bölüm / Sonraki Bölüm" butonları
- **Otonom Cron Motoru** — Devam eden dizileri otomatik takip eder, yeni bölümleri müdahalesiz ekler
- **Admin Paneli** — Dizi/Sezon/Bölüm listeleme, toplu TMDB çekimi, ayarlar arayüzü

---

## 🛠 Kurulum

1. `dle-real-series-pro.xml` dosyasını DLE Admin → **Eklenti Yönetimi** üzerinden yükleyin
2. Admin → **Dizi Yönetimi** → **Ayarlar** sekmesinden TMDB v3 API anahtarınızı girin
3. XField eşleştirme haritasını doldurun (hangi TMDB verisi hangi ilave alana yazılsın)
4. `.tpl` dosyalarını temanızın klasörüne kopyalayın

---

## 📁 Patch Edilen Dosyalar

| Dosya | Açıklama |
|---|---|
| `engine/inc/addnews.php` | Yeni içerik eklerken `is_series` alanlarını kaydeder |
| `engine/inc/editnews.php` | İçerik düzenlerken `is_series` alanlarını günceller |
| `engine/inc/series_admin.php` | Eklenti admin paneli |
| `engine/ajax/series_fetch.php` | Dizi/sezon/bölüm listeleme ve TMDB çekim AJAX'ı |
| `engine/ajax/series_tmdb.php` | TMDB API iletişim katmanı |
| `engine/ajax/series_cron.php` | Otomatik bölüm takip motoru |
| `engine/modules/series_list.php` | Dizi listeleme modülü |
| `engine/modules/show.full.php` | Tam içerik sayfasında şablon yönlendirme ve tag set etme |
| `engine/modules/show.short.php` | Kısa içerik listelerinde şablon yönlendirme + Fallback Injector |
| `engine/modules/show.custom.php` | `{custom}` tag'inde şablon yönlendirme + Fallback Injector |
| `engine/modules/show.related.php` | `{related-news}` tag'inde şablon yönlendirme + Fallback Injector |
| `engine/modules/topnews.php` | `{topnews}` tag'inde XField Normalizer |

---

## 🎨 Şablon Dosyaları

| Dosya | Görev |
|---|---|
| `series_details.tpl` | Ana dizi sayfası |
| `season_details.tpl` | Sezon sayfası |
| `episode_details.tpl` | Bölüm / izleme sayfası |
| `season_list.tpl` | Dizi sayfasındaki sezon kartı |
| `episode_list.tpl` | Sezon sayfasındaki bölüm kartı |

---

## 🏷 Özel Etiketler (Tags)

### Navigasyon

| Etiket | Açıklama | Kullanıldığı Şablon |
|---|---|---|
| `{series_link}` | Ana dizinin URL'si | `season_details.tpl` |
| `{series_title}` | Ana dizinin başlığı | `season_details.tpl` |
| `[season_nav]{season_navigation}[/season_nav]` | Önceki/Sonraki Sezon butonları | `season_details.tpl` |
| `[series_nav]{series_navigation}[/series_nav]` | Önceki/Sonraki Bölüm butonları | `episode_details.tpl` |
| `{season_link}` | Bağlı sezonun URL'si | `episode_details.tpl` |
| `{season_number}` | Sezon numarası | `episode_details.tpl`, `episode_list.tpl` |
| `{episode_number}` | Bölüm numarası | `episode_details.tpl`, `episode_list.tpl` |

### İçerik Listeleme

| Etiket | Açıklama |
|---|---|
| `[series_list]{series_list}[/series_list]` | Dizi sayfasında sezonları, sezon sayfasında bölümleri listeler |

### XField Görseller (Fallback Zinciri)

Temada resim alanı için şu zinciri kullanın — DLE motoru hangisinde değer varsa onu basar:

```html
<!-- Poster (Dizi/Sezon/Bölüm hepsini kapsar) -->
<img src="[xfvalue_poster_path][xfvalue_season_poster][xfvalue_episode_image]">

<!-- Puan (Dizi/Sezon/Bölüm hepsini kapsar) -->
[xfgiven_vote_average][xfgiven_season_vote_average][xfgiven_episode_vote]
  [xfvalue_vote_average][xfvalue_season_vote_average][xfvalue_episode_vote]
[/xfgiven_vote_average][/xfgiven_season_vote_average][/xfgiven_episode_vote]
```

> **Not:** `{topnews}`, `{topnews}` gibi DLE native tag'lerinde zincir çalışmaz. Bu tag'ler için Normalizer devreye girer ve değerleri `vote_average`, `poster_path` standart alanlarına kopyalar — bu sayede tek `[xfvalue_poster_path]` yeterlidir.

---

## ⚙️ Cronjob

Devam eden dizilerin otomatik takibi için:

```
https://siteniz.com/index.php?controller=ajax&mod=series_cron&key=CRON_KEY
```

Cron key'i Admin → Dizi Yönetimi → Ayarlar kısmından özelleştirebilirsiniz.

---

## 🚀 Gereksinimler

- **DLE:** v17.0+ (v18.x için optimize)
- **PHP:** v8.0+
- **Uzantılar:** cURL, GD Library

---

## 📝 Lisans

GNU GPLv3
