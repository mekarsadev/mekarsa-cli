# Mekarsa CLI (mkrs CLI)

`mkrs CLI` adalah alat CLI buatan [Mekarsa](https://mekarsa.com) yang dirancang untuk mempermudah proses pengembangan sistem. Alat ini memungkinkan pengguna untuk dengan mudah mengelola dan mengatur environment, termasuk menginstal dan mengonfigurasi `vcpkg` untuk proyek C++.

## Fitur

- **Instalasi dan Konfigurasi vcpkg**: `mkrs CLI` memungkinkan pengguna untuk mengkloning repository `vcpkg` dan menjalankan bootstrap secara otomatis dalam direktori proyek yang ditentukan.
- **Kemudahan Penggunaan**: Dengan perintah sederhana, pengguna dapat mengatur environment proyek mereka tanpa perlu mengingat langkah-langkah instalasi yang rumit.

## Instalasi

1. **Clone Repository Mekarsa CLI**:

    ```sh
    git clone https://github.com/username/mkrs-cli.git
    cd mkrs-cli
    ```

2. **Buat Skrip Eksekutabel**:

    ```sh
    chmod +x bin/mkrs
    chmod +x scripts/install_vcpkg.sh
    ```

3. **Tambahkan ke PATH**:

    Jika Anda menggunakan `bash`, tambahkan baris berikut ke `~/.bashrc`:

    ```sh
    export PATH=$PATH:/path/to/mkrs-cli/bin
    ```

    Jika Anda menggunakan `fish`, tambahkan baris berikut ke `~/.config/fish/config.fish`:

    ```sh
    set -gx PATH $PATH /path/to/mkrs-cli/bin
    ```

    Ganti `/path/to/mkrs-cli` dengan path sebenarnya dari direktori proyek Anda.

4. **Muat Ulang Konfigurasi Shell**:

    Untuk `bash`:

    ```sh
    source ~/.bashrc
    ```

    Untuk `fish`:

    ```sh
    source ~/.config/fish/config.fish
    ```

## Penggunaan

### Menginstal dan Mengonfigurasi vcpkg

Jalankan perintah berikut untuk mengkloning dan bootstrap `vcpkg` dalam direktori proyek yang ditentukan:

```sh
mkrs env vcpkg /path/to/your/project
```

Ganti `/path/to/your/project` dengan direktori proyek Anda. Perintah ini akan melakukan hal berikut:

Mengkloning repository vcpkg ke dalam direktori proyek jika belum ada.
Menjalankan skrip bootstrap-vcpkg.sh untuk menginstal dan mengonfigurasi vcpkg.

## Struktur proyek

```sh 
mkrs-cli/
├── bin/
│   └── mkrs
├── scripts/
│   └── install_vcpkg.sh
└── README.md

```
- bin/mkrs: Skrip utama CLI yang digunakan untuk menjalankan berbagai perintah.
- scripts/install_vcpkg.sh: Skrip yang mengkloning dan menjalankan bootstrap vcpkg.

## Kontribusi
Kami menyambut kontribusi dari komunitas untuk meningkatkan mkrs CLI. Jika Anda memiliki saran, masalah, atau permintaan fitur, jangan ragu untuk membuka issue atau pull request di repository GitHub kami.


## Lisensi
Proyek ini dilisensikan di bawah [MIT License](https://opensource.org/license/mit).

---
Dibuat dengan ❤️ oleh [Mekarsa](https://mekarsa.com) 


