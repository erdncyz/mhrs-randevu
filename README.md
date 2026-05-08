# MHRS Otomatik Randevu Web

Bu proje web arayuzu uzerinden calisir.
Terminal tabanli eski kullanim artik yoktur.

## Proje Ozeti

Uygulama, resmi MHRS oturumundan alinan Bearer token ile calisir.
Token ice aktarma sonrasi il, ilce, klinik, hastane, muayene yeri ve doktor secilerek uygun randevu slotlari aranir ve secilen slottan randevu olusturulur.

## Ozellikler

- Guncel MHRS akisina uygun token ice aktarma
- Il / ilce / klinik / hastane / muayene yeri / doktor secimi
- Tarih ve saat filtreli slot arama
- Tek tikla randevu alma
- RND5015 durumunda iptal-et-yeni-al denemesi

## Gereksinimler

- .NET 8 SDK

macOS (Homebrew):

```bash
brew install dotnet@8
```

Kurulum dogrulamasi:

```bash
dotnet --version
```

## Nasil Calistirilir

1. Proje klasorune gir:

```bash
cd /path/to/MHRS-OtomatikRandevu
```

2. Uygulamayi baslat:

```bash
dotnet run --urls http://localhost:5088
```

3. Tarayicida ac:

```text
http://localhost:5088
```

Not:

- Uygulama calisirken terminal acik kalmalidir.
- Farkli port kullanmak istersen `--urls` degerini degistirebilirsin.

## Giris (Token Ice Aktarma) Akisi

1. Tarayicida resmi MHRS vatandas ekranini ac:

```text
https://mhrs.gov.tr/vatandas/#/
```

2. Resmi yontemle giris yapip vatandas paneline gec.
3. DevTools (F12) acip Network sekmesine gec.
4. `prd.mhrs.gov.tr` alanina giden bir istegi sec (ornek: `/api/vatandas/dil`).
5. Request Headers altindaki Authorization satirindan Bearer tokeni kopyala:

```text
Authorization: Bearer eyJhbGciOi...
```

6. Uygulamadaki token alanina yapistir ve Token Ice Aktar butonuna bas.

## Artik Kullanilmayan Eski Yontemler

- Eski `TC + parola` login modeli kullanilmaz.
- `localStorage.getItem('token-v-mhrs')` degeri bazi oturumlarda sifreli gelebilir (`U2FsdGVkX1...`) ve dogrudan kullanilamaz.

## API Uclari

- POST /api/auth/import-token
- POST /api/auth/logout
- GET /api/meta/provinces
- GET /api/meta/districts/{provinceId}
- GET /api/meta/clinics?provinceId=&districtId=
- GET /api/meta/hospitals?provinceId=&districtId=&clinicId=
- GET /api/meta/places?hospitalId=&clinicId=
- GET /api/meta/doctors?anaKurumId=&hospitalId=&clinicId=
- POST /api/search/slots
- POST /api/appointment/book

## Sorun Giderme

- MHRS tarafinda hiz limiti (GNL2029) alirsan bir sure bekleyip tekrar dene.
- Gecersiz veya suresi dolmus token ile islem yapilamaz; yeni token ice aktar.
- Oturum sunucu tarafinda session cookie ile tutulur; tarayici oturumunu kapatinca tekrar token gerekebilir.
