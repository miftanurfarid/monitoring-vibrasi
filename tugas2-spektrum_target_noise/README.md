## Tugas 2
- Plot spectrogram data vibrasi pompa yang telah diambil untuk melihat frekuensi naturalnya, kemudian jika ditambah 3 jenis noise yang berbeda (e.g white noise, pink noise, etc) hasilnya seperti apa? Sampai berapa besar spectrogram dapat melihat frekuensi naturalnya terhadap kenaikan noise (SNR)?
- Evaluasi data vibrasi pompa dengan *Hilbert*, *Hilbert-Huang* dan *EMD*.
    + vibrasi.m
> Performansi spektrogram menampilkan spektrum data getaran pompa terhadap kenaikan tingkat tekanan bunyi dari noise (white noise, pink noise, brown noise dan blue noise)
    + tambah_noise.m = Menambahkan berbagai jenis noise terhadap data getaran pompa dengan variasi SNR.
    + plot_vibrasinoise.m = Menampilkan spektrum antara 0 - 1000 Hz dari data getaran pompa pada tiga titik pengukuran yaitu sumbu aksial, horizontal dan vertikal dengan tambahan noise dengan SNR tertentu.
    + plot_vibrasi.m = Menampilkan spektrum antara 0 - 1000 Hz dari data getaran pompa pada tiga titik pengukuran yaitu sumbu aksial, horizontal dan vertikal.
    + myspectrogram.m = Spectrogram dengan variasi metode perolehan spectrum (spectrogram, specgram, dan toframes). Disini yang dipakai adalah toframes.
    + rednoise.m, bluenoise.m, pinknoise.m, violetnoise.m = Membuat berbagai jenis noise dengan panjang tertentu (jenis noise sesuai nama file).
