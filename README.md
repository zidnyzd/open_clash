**Table of Contents**

- [Openclash Config](#openclash-config)
- [Features](#features)
- [Persiapan](#persiapan)
  - [Modem/WAN](#modemwan)
  - [Interface Modem/WAN](#interface-modemwan)
- [Openclash](#openclash)
  - [Download Config](#download-config)
  - [Uploud Config](#uploud-config)
    - [Tutorial uploud backup Openclash](#tutorial-uploud-backup-convig-openclash)
    - [Tutorial uploud file convig manual](#Tutorial-uploud-file-convig-manual)
  - [Setting Multi-WAN OC](#setting-multi-wan-oc)
  - [2 Modem/WAN](#2-modemwan)
  - [1 Modem/WAN](#1-modemwan)
  - [Cara Mengisi Akun](#cara-mengisi-akun)
    - [Edit Files Proxy Provider](#edit-files-proxy-provider)
      - [Shadowsocks](#shadowsocks)
      - [Vmess](#vmess)
      - [Snell](#snell)
      - [Trojan](#trojan)
- [Rule Direct/Bypassed Connection](#rule-directbypassed-connection)
- [Setting Openclash App](#setting-openclash-app)
  - [Global Setting](#global-setting)
    - [Operation Mode](#operation-mode)
    - [DNS Setting](#dns-setting)
    - [GEOIP Update](#geoip-update)
  - [Manage Config](#manage-config)
    - [Import Main.yaml](#import-mainyaml)
    - [Import Proxy Provider](#import-proxy-provider)
    - [Import Rule Provider](#import-rule-provider)
  - [Overviews](#overviews)
- [Setting Yacd](#setting-yacd)
  - [Proxies](#proxies)
    - [Toggle TrafficDirect](#toggle-trafficdirect)
    - [Toggle Traffic Multi-WAN](#toggle-traffic-multi-wan)
    - [Toggle TrafficPortGames](#toggle-trafficportgames)
    - [Toggle TrafficGaming](#toggle-trafficgaming)
    - [Toggle TrafficAds](#toggle-trafficads)
    - [Toggle TrafficP0rn](#toggle-trafficp0rn)
    - [Toggle Traffic GLOBAL](#toggle-traffic-global)
  - [Config](#config)
- [Test Adblock 100%](#test-adblock-100)
- [Frimeware Yang Saya Gunakan](#frimeware-yang-saya-gunakan)
- [Penutup](#penutup)

# Openclash Config

- [Join Telegram](https://t.me/convigocbombom)
- [Requests Rules](https://github.com/afanbombom/open_clash/issues/new/choose)

# Features

* Support Multi-WAN/Modem
* Pisah traffik umum, sosmed, streaming, gaming, whatsapp, traffickindo
* Support rule Adblock
* Support Gaming sites
* Support Game port filtering
* Support web streaming/VOD/TV region ID.
* Support 10 marketplace ID.
* Support E-wallet,Payment,Bank ID
* Support Direct/Bypass traffik.

# Persiapan

Openclash config yang disediakan pada repositori ini dikhususkan untuk pengguna Tunnels Openclash yang belum bisa membuat convig sendiri, atau masih gagal dan kesulitan dalam menguploud file convig dan juga bagi yang masih gagal setting Openclash. Silahkan untuk membaca baik - baik tutorial yang kami diberikan, dan jika ada pertanyaan silahkan open issues atau chat digroup telegram (https://t.me/convigocbombom).

## Modem/WAN

Pertama-tama kalian harus tentuin berapa modem/router 4G atau WAN sebagai sumber internet yang akan digunakan. Sebagai contoh saya di Config ini menggunakan 2 Modem sebagai berikut:

```conf
Modem ORBIT STAR2   : WAN 1
Modem E5372s        : WAN 2
```

Modem tersebut mempunyai fungsi masing-masing agar memungkinkan mendapatkan performa internet dengan baik.

MODEM | FUNGSI
------------ | -------------
WAN 1 | INJECT XL AKRAB
WAN 2 | INJECT XL AKRAB


## Interface Modem/WAN

Untuk menentukan interface-name modem/WAN bisa melalui `LuCi > Network >> Interfaces` lihat gambar berikut dengan seksama.

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/interface_name.jpg" border="0">

Perhatikan pada gambar interface di atas, berikut adalah detailnya:

MODEM | INTERFACE-NAME
------------ | -------------
WAN 1 | usb0
WAN 2 | wwan0

# Openclash

Plugin ini adalah klien Clash yang bisa dijalankan di OpenWrt. Kompatibel dengan Shadowsocks ShadowsocksR, Vmess, Trojan, Snell dan protokol lainnya, dan mengimplementasikan proxy kebijakan sesuai dengan konfigurasi aturan yang fleksibel.

## Download Config

==> Untuk pengguna 1 modem bisa langsung gunakan backup convig dibawah ini:

(https://github.com/afanbombom/open_clash/blob/main/Convig%20Open%20Clash/Pengguna%202%20Modem/Uploud%20Backup%20Openclash/Backup-OpenClash-BOMBOM2.tar.gz)

=> Atau kalian juga bisa uploud secara manual dan download bahannya di bawah ini:

(https://github.com/afanbombom/open_clash/tree/main/Convig%20Open%20Clash/Pengguna%201%20Modem/Uploud%20Manual)

==> Untuk pengguna 2 modem bisa langsung gunakan backup convig dibawah ini:

(https://github.com/afanbombom/open_clash/blob/main/Convig%20Open%20Clash/Pengguna%202%20Modem/Uploud%20Backup%20Openclash/Backup-OpenClash-BOMBOM2.tar.gz)

=> Atau kalian juga bisa uploud secara manual dan download bahannya di bawah ini:

(https://github.com/afanbombom/open_clash/tree/main/Convig%20Open%20Clash/Pengguna%202%20Modem/Uploud%20Manual)

# Uploud Config

## Tutorial uploud backup convig Openclash:

Cara Uploud Backup Convig Openclash adalah sebagai berikut:

* Langkah pertama buka `Openclash > Config Manage >> Backup File >>> UPLOUD` file backup yang telah kalian download seperti pada contoh gambar di bawah ini:

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/uploud_backup1.jpg" border="0">

* Langkah kedua scroll ke bawah dan pilih `COMMIT SETTINGS` kemudian `APPLY SETTINGS`

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/uploud_backup2.jpg" border="0">

* Maka Openclash akan otomatis running dan kalian tinggal mengganti akun vpn dengan akun andalan kalian

## Tutorial uploud file convig manual:

Cara Uploud File Convig Openclash secara manual adalah sebagai berikut:

* Langkah pertama buka `Openclash >> Convig Manage`.
* Langkah kedua dibagian `Upload File` Type pilih `Config File` pilih file BOMBOM1.yaml / BOMBOM2.yaml yang telah kalian dowload kemudian pilih `UPLOUD`
* Langkah ketiga dibagian `Upload File` Type pilih `Proxy Provider File`. `UPLOUD` satu persatu folder yaml yang ada di dalam folder Proxy Provider yang telah kalian download sampai semuanya teruploud.
* Langkah keempat dibagian `Upload File` Type pilih `Rule Provider File`. `UPLOUD` satu persatu folder .yaml yang ada di dalam folder Rule Provider yang telah kalian download sampai semuanya teruploud.
* Langkah kelima jika semua file telah selesai kalian uploud kemudian tekan `COMMIT SETTINGS >> APPLY SETTINGS`

Contoh seperti gambar di bawah ini:

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/manual1.jpg" border="0">

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/manual2.jpg" border="0">

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/manual3.jpg" border="0">

## Cara Mengisi/Mengganti Akun

* Masuk ke menu `Config Editor` di Openclash kemudian pilih folder `proxy_provider` dan edit folder .yaml yang ada didalamnya.
Ganti isi folder .yaml tersebut dengan akun kalian. Mulai dari ganti nama, server name, UUID, bug, Path dll.

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/gantiakun.jpg" border="0">


Supaya load-balance pada tiap proxy-provider berjalan dengan baik, sangat direkomendasikan tiap proxy-provider diisi dengan 2 akun atau lebih dengan contoh sebagai berikut:

* untuk file proxy-provider [indonesiaorbit.yaml](https://raw.githubusercontent.com/afanbombom/open_clash/main/Convig%20Open%20Clash/Pengguna%202%20Modem/Uploud%20Manual/proxy_provider/indonesiaorbit.yaml)

NAMA | ISP | INTERFACE-NAME
--------------- | ----------- | -------------
INDONESIA ORBIT | SERVER INDO | usb0

* untuk file proxy-provider [singapuraorbit.yaml](https://raw.githubusercontent.com/afanbombom/open_clash/main/Convig%20Open%20Clash/Pengguna%202%20Modem/Uploud%20Manual/proxy_provider/singapuraorbit.yaml)

NAMA | ISP | INTERFACE-NAME
--------------- | ---------------- | -------------
SINGAPURA ORBIT | SERVER SINGAPURA | usb0

* untuk file proxy-provider [indonesiamifi.yaml](https://raw.githubusercontent.com/afanbombom/open_clash/main/Convig%20Open%20Clash/Pengguna%202%20Modem/Uploud%20Manual/proxy_provider/indonesiamifi.yaml)

NAMA | ISP | INTERFACE-NAME
-------------- | ----------- | -------------
INDONESIA MIFI | SERVER INDO | wwan0

* untuk file proxy-provider [singapuramifi.yaml](https://raw.githubusercontent.com/afanbombom/open_clash/main/Convig%20Open%20Clash/Pengguna%202%20Modem/Uploud%20Manual/proxy_provider/singapuramifi.yaml)

NAMA | ISP | INTERFACE-NAME
-------------- | ---------------- | -------------
SINGAPURA MIFI | SERVER SINGAPURA | wwan0

contoh isi akun untuk **`vvip-id.yaml`** perhatikan juga interface-name! Sesuaikan dengan interface yang terdapat pada device kalian masing-masing!!

```yaml
- name: "VVIP-ID1"
  type: trojan
  server: aaa.bbb.ccc.ddd
  port: 443
  password: PASSWORD
  udp: true
  sni: BUGSNI.COM
  alpn:
    - h2
    - http/1.1
  skip-cert-verify: true
  interface-name: usb0

- name: "VVIP-ID2"
  type: vmess
  server: aaa.bbb.ccc.ddd
  port: 443
  uuid: UUID
  alterId: 0
  cipher: auto
  udp: true
  tls: true
  skip-cert-verify: true
  servername: aaa.bbb.ccc.ddd
  network: ws
  ws-opts:
    path: /iptunnelscom
    headers:
      Host: aaa.bbb.ccc.ddd
    max-early-data: 2048
    early-data-header-name: Sec-WebSocket-Protocol
  interface-name: usb0
```

#### Shadowsocks

* Shadowsocks Original / tanpa plugin
```yaml
- name: "shadowsocks"
  type: ss
  server: aaa.bbb.ccc.ddd
  port: 34963
  cipher: chacha20-ietf-poly1305
  password: passwordss
  udp: true
  interface-name: eth1
```
* Shadowsocks dengan plugin obfs
```yaml
- name: "shadowsocks obfs"
  type: ss
  server: aaa.bbb.ccc.ddd
  port: 32033
  cipher: chacha20-ietf-poly1305
  password: passwordss
  plugin: obfs
  plugin-opts:
    mode: tls
    host: BUG.COM
  interface-name: eth1
```

#### Vmess

* Vmess websocket dengan BUG SNI
```yaml
- name: "Vmess ws bug SNI"
  type: vmess
  server: domainserver.com
  port: 443
  uuid: UUIDMU
  alterId: 0
  cipher: auto
  udp: true
  tls: true
  skip-cert-verify: true
  servername: BUGSNI.COM
  network: ws
  ws-opts:
    path: /iptunnelscom
    headers:
      Host: BUGSNI.COM
    max-early-data: 2048
    early-data-header-name: Sec-WebSocket-Protocol
  interface-name: eth1
```
* Vmess websocket dengan BUG CDN (bolak-balik)
```yaml
- name: "vmess ws bug CDN"
  type: vmess
  server: IP/HOST_CDN_CLOUDFLARE
  port: 443
  uuid: UUIDMU
  alterId: 0
  cipher: auto
  udp: true
  tls: true
  skip-cert-verify: false
  servername: domainservermu.com
  network: ws
  ws-opts:
    path: /iptunnelscom
    headers:
      Host: domainservermu.com
    max-early-data: 2048
    early-data-header-name: Sec-WebSocket-Protocol
  interface-name: eth1
```
* Vmess gRPC bug SNI
```yaml
- name: vmess grpc SNI
  server: domainservermu.com
  port: 443
  type: vmess
  uuid: UUIDMU
  alterId: 0
  cipher: auto
  network: grpc
  tls: true
  servername: BUGSNI.COM
  skip-cert-verify: true
  grpc-opts:
    grpc-service-name: iptunnelsvgrpc
  interface-name: eth1
```
* Vmess gRPC bug CDN
```yaml
- name: vmess grpc CDN
  server: IP/HOST_CDN_CLOUDFLARE
  port: 443
  type: vmess
  uuid: UUIDMU
  alterId: 0
  cipher: auto
  network: grpc
  tls: true
  servername: domainservermu.com
  skip-cert-verify: false
  grpc-opts:
    grpc-service-name: iptunnelsvgrpc
  interface-name: eth1
```

#### Snell

* Snell Server v3 (support udp).
```yaml
- name: "snell server"
  type: snell
  server: aaa.bbb.ccc.ddd
  port: 33223
  psk: password
  version: 3
  udp: true
  obfs-opts:
    mode: tls
    host: BUGSNI.COM
  interface-name: eth1
```

#### Trojan

* Trojan-gfw bug SNI
```yaml
- name: "trojan-gfw SNI"
  type: trojan
  server: domainservermu.com
  port: 443
  password: PASSWORD
  udp: true
  sni: BUGSNI.COM
  alpn:
    - h2
    - http/1.1
  skip-cert-verify: true
  interface-name: eth1
```
* Trojan-go websocket bug CDN
```yaml
- name: trojan ws cdn
  server: IP/HOST_CDN_CLOUDFLARE
  port: 443
  type: trojan
  password: PASSWORD
  network: ws
  sni: domainservermu.com
  skip-cert-verify: false
  udp: true
  ws-opts:
    path: /iptunnelstrgo
    headers:
        Host: domainservermu.com
  interface-name: eth1
```
* Trojan gRPC bug SNI
```yaml
- name: "trojan gRPC SNI"
  type: trojan
  server: domainservermu.com
  port: 443
  password: PASSWORD
  udp: true
  sni: BUGSNI.COM
  alpn:
  - h2
  skip-cert-verify: true
  network: grpc
  grpc-opts:
    grpc-service-name: iptunnelstrojangrpc
  interface-name: eth1
```
* Trojan gRPC bug CDN
```yaml
- name: "trojan gRPC CDN"
  type: trojan
  server: IP/HOST_CDN_CLOUDFLARE
  port: 443
  password: PASSWORD
  udp: true
  sni: domainservermu.com
  alpn:
  - h2
  skip-cert-verify: false
  network: grpc
  grpc-opts:
    grpc-service-name: iptunnelstrojangrpc
  interface-name: eth1
```

### Edit Files Proxy Provider

Mengisi akun tunnel pada 4 files pada folder proxy_provider yang terdiri dari akun server indonesia, akun server singapura.
Fungsi dari proxy_provider diatas:

* singapuraorbit.yaml, singapuramifi.yaml Gunakan akun VVIP berlokasi SINGAPORE untuk memperoleh speed/traffic yang lebih bagus.

* indonesiaorbit.yaml, indonesiamifi.yaml Gunakan akun VVIP berlokasi INDONESIA untuk keperluan akses websites/marketplace/live stream apps/Video on Demand yang mengharuskan memakai IP Address Publik Indonesia.

Keterangan lebih lanjut:

Convig bisa ditambahkan dengan pilihan sistem fallback dimana jika proxy list pertama gagal maka akan menggunakan proxy list kedua, jika proxy list pertama dan kedua gagal maka akan menggunakan DIRECT, namun jika 30 detik kemudian proxy list pertama kembali aktif maka proxy list urutan pertama akan digunakan, sehingga sangat menguntungkan karena tidak perlu memikirkan jika salah satu proxy gagal.

# Rule Direct/Bypassed Connection

rule_direct.yaml bersifat offline dimana pengguna dapat mengedit traffic apa saja yang di direct/bypass (tidak menggunakan tunnel). Agar lebih mudah sebagai default sudah disetting bypass traffic Whatsapp dan traffic game Mobile Legends (port tcp & udp ingame) jadi untuk dilobby akan menggunakan traffic dari proxy-groups Gaming.


### Operation Mode

* Kalian dapat memilih Operation Mode **SWITCH PAGE TO FAKE IP MODE** atau **SWITCH PAGE TO REDIR-HOST MODE**
* Ceklist/centang opsi sesuai gambar berikut:

<img src="https://raw.githubusercontent.com/malikshi/open_clash/main/assets/operation-mode.jpg" border="0">

## Manage Config

Mulai dari versi v0.44.22-beta pada branch dev, menu Manage Config support dengan fungsi create,edit,delete file jadi tidak perlu login ssh untuk edit via terminal router openwrt. Tidak membutuhkan tiny fm (file manager) karena config editor built-in openclash terdapat validator config jika terdapat kesalahan/error saat melakukan pengeditan.

## Overviews

Pada Overviews kita bisa melihat sepintas status Openclash yang berjalan, status versi openclash terbaru dan menjalankan tools openclash yakni dengan klik `Enable Openclash` untuk start, klik `Disable Openclash` untuk stop.
<img src="https://raw.githubusercontent.com/malikshi/open_clash/main/assets/overviews.jpg" border="0">

# Setting Yacd

Yacd adalah yet another clash dashboard, yakni dashboard clash yang dapat digunakan untuk mengatur proxy dan memantau services clash yang dijalankan oleh Openclash.

## Proxies

Kita akan mengatur toggle/pilihan proxies yang kan digunakan tiap proxy-groups.

### Toggle TrafficDirect

<img src="https://raw.githubusercontent.com/malikshi/open_clash/main/assets/direct.jpg" border="0">

### Toggle Traffic Multi-WAN

<img src="https://raw.githubusercontent.com/malikshi/open_clash/main/assets/multiwan.jpg" border="0">

### Toggle TrafficPortGames

<img src="https://raw.githubusercontent.com/malikshi/open_clash/main/assets/portgames.jpg" border="0">

### Toggle TrafficGaming

<img src="https://raw.githubusercontent.com/malikshi/open_clash/main/assets/gaming.jpg" border="0">

### Toggle TrafficAds

<img src="https://raw.githubusercontent.com/malikshi/open_clash/main/assets/ads.jpg" border="0">

### Toggle Traffic GLOBAL
Untuk pertama kali start openclash maka harus setting proxies `GLOBAL` ke traffic proxy-groups `Umum`.
<img src="https://raw.githubusercontent.com/malikshi/open_clash/main/assets/yacd-proxies-global.jpg" border="0">


## Config

Pada menu yacd > config untuk pertama kali menjalankan openclash maka perlu setting Mode ke `Rule` dan `Enable Allow LAN` serta bisa mengaktifkan log level untuk melakukan debugging/tracing traffic jika ada rule yang salah.
<img src="https://raw.githubusercontent.com/malikshi/open_clash/main/assets/yacd-config.jpg" border="0">

# Test Adblock 100%

Silahkan test rules adblock melalui [https://d3ward.github.io/toolz/adblock.html](https://d3ward.github.io/toolz/adblock.html)

Hasil test:
<img src="https://raw.githubusercontent.com/malikshi/open_clash/main/assets/d3ward.jpg" border="0">

# Frimeware yang saya gunakan

Frimeware yang saya gunakan adalah frimeware yang di build oleh panutan saya OM REYRE, yang kemudian ada beberapa bagian yang saya mod dan edit.
Bagi yang ingin menggunakan frimeware yang saya pakai atau ingin memberikan saran serta masukannya bisa bergabung Grub Telegram saya (https://t.me/convigocbombom)

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/overview.jpg" border="0">

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/openclash.jpg" border="0">

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/netmonitor.jpg" border="0">

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/yacd1.jpg" border="0">

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/yacd2.jpg" border="0">

<img src="https://github.com/afanbombom/open_clash/blob/main/Asset/traffick.jpg" border="0">

# PENUTUP

Tentunya Config dan juga tutorial yang saya buat ini masih jauh dari kesempurnaan. Terima kasih kepada semua Master, Suhu, dan juga rekan-rekan yang telah banyak memberikan ilmunya sehingga saya dapat membuat tutorial Openclash sesuai sepengetahuan saya di dalam repositori saya ini.
