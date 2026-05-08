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

## Docker ile Calistirma (Onerilen)

Ayni sunucuda baska projeler de olacaksa Docker ile izole sekilde calistirmak daha guvenlidir.

### Ubuntu Uzerinde Docker Kurulumu

```bash
sudo apt update
sudo apt install -y docker.io docker-compose-plugin
sudo systemctl enable --now docker
sudo usermod -aG docker $USER
```

Not:

- `usermod` komutundan sonra cikis-giris yapman (veya yeni SSH oturumu acman) gerekir.
- Docker servisinin calistigini su komutla dogrulayabilirsin: `docker --version`

1. Proje klasorune gir:

```bash
cd /path/to/MHRS-OtomatikRandevu
```

2. Konteyneri build edip baslat:

```bash
docker compose up -d --build
```

3. Loglari izle:

```bash
docker compose logs -f
```

4. Tarayicidan ac:

```text
http://SUNUCU_IP:5088
```

5. Durdur:

```bash
docker compose down
```

6. Sunucu yeniden basladiginda otomatik acilma davranisi:

- `restart: unless-stopped` oldugu icin konteyner, Docker servisi kalkinca otomatik tekrar baslar.

Notlar:

- Konteyner ici port 8080, disariya 5088 olarak acilir (`5088:8080`).
- AWS Security Group icin inbound TCP 5088 acik olmalidir.
- Sunucu firewall aciksa 5088/tcp izni verilmelidir.

### Mobil (PWA) Kullanim

- Uygulama mobil responsive olacak sekilde duzenlenmistir.
- Destekleyen tarayicilarda "Uygulamayi Yukle" butonuyla ana ekrana eklenebilir.
- PWA kurulumu icin uygulamayi HTTPS veya localhost uzerinden acman gerekir.
- Android Chrome'da adres cubugundan "Install app" veya "Uygulamayi yukle" secenegi de gorunebilir.

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
