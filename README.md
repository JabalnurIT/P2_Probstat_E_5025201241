# P2_Probstat_E_5025201241

Praktikum 2 Probabilitas dan Statistik 2022

```
Nama    : Jabalnur
NRP     : 5025201241
Kelas   : Probstat E
```

## 1

Seorang peneliti melakukan penelitian mengenai pengaruh aktivitas 𝐴 terhadap
kadar saturasi oksigen pada manusia. Peneliti tersebut mengambil sampel
sebanyak 9 responden. Pertama, sebelum melakukan aktivitas 𝐴, peneliti mencatat
kadar saturasi oksigen dari 9 responden tersebut. Kemudian, 9 responden tersebut
diminta melakukan aktivitas 𝐴. Setelah 15 menit, peneliti tersebut mencatat kembali
kadar saturasi oksigen dari 9 responden tersebut. Berikut data dari 9 responden
mengenai kadar saturasi oksigen sebelum dan sesudah melakukan aktivitas 𝐴

<img width="338" alt="image" src="https://user-images.githubusercontent.com/64743796/170864690-34402511-0b4a-430e-beca-583b13b2cca1.png">

Berdasarkan data pada tabel diatas, diketahui kadar saturasi oksigen dari
responden ke-3 ketika belum melakukan aktivitas 𝐴 sebanyak 67, dan setelah
melakukan aktivitas 𝐴 sebanyak 70.

### 1a

_Carilah Standar Deviasi dari data selisih pasangan pengamatan tabel
diatas_


### 1b

_carilah nilai t (p-value)_

`t-value` merupakan cara untuk mengukur perbedaan antara rata-rata populasi dan `p-value` adalah probabilitas untuk memperoleh `t-value` dengan nilai absolut setidaknya sebesar yang sebenarnya kita amati dalam data sampel jika nol hipotesis sebenarnya benar

disini hipotesa kita adalah `greater`


### 1c

_tentukanlah apakah terdapat pengaruh yang signifikan secara statistika
dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan
aktivitas 𝐴 jika diketahui tingkat signifikansi 𝛼 = 5% serta H0 : “tidak ada
pengaruh yang signifikan secara statistika dalam hal kadar saturasi
oksigen , sebelum dan sesudah melakukan aktivitas 𝐴”_

- dapat dilihat bahwa jika dibandingkan dengan nilai sebelumnya, tidak terjadi perbedaan nilai yang signifikan setelah aktivitas 𝐴

## 2

Diketahui bahwa mobil dikemudikan rata-rata lebih dari 20.000 kilometer per tahun.
Untuk menguji klaim ini, 100 pemilik mobil yang dipilih secara acak diminta untuk
mencatat jarak yang mereka tempuh. Jika sampel acak menunjukkan rata-rata
23.500 kilometer dan standar deviasi 3900 kilometer.

### 2a

_Apakah Anda setuju dengan klaim tersebut?_

```
Setuju
```

### 2b

_Jelaskan maksud dari output yang dihasilkan!_

- Dari hasil tersebut, maka
- Hipotesa nol :

`H0 : μ = 20000`

- Hipotesa Alternatif :

`H1 : μ > 20000`

### 2c

_Buatlah kesimpulan berdasarkan P-Value yang dihasilkan!_



## 3

Diketahui perusahaan memiliki seorang data analyst ingin memecahkan
permasalahan pengambilan keputusan dalam perusahaan tersebut. Selanjutnya
didapatkanlah data berikut dari perusahaan saham tersebut.

<img width="633" alt="image" src="https://user-images.githubusercontent.com/64743796/170864803-b1779d8e-65e8-49df-984c-7c0a9019a56f.png">

Dari data diatas berilah keputusan serta kesimpulan yang didapatkan dari hasil
diatas. Asumsikan nilai variancenya sama, apakah ada perbedaan pada
rata-ratanya (α= 0.05)? Buatlah :

### 3a

_H0 dan H1_

H0 : (Tidak ada perbedaan antara nilai rata rata Bandung dan nilai rata rata Bali)

H1 : (Terdapat perbedaan antara nilai rata rata Bandung dan nilai rata rata Bali)


### 3b


- maka hasil dari pengujian kedua data tersebut adalah :

<img width="341" alt="image" src="https://user-images.githubusercontent.com/64743796/170867130-3833fb73-4077-4752-b460-cdd4a5d88b75.png">

### 3c

_Lakukan Uji Statistik (df =2)_

### 3d

_Nilai Kritikal_

### 3e

_Keputusan_

### 3f

_Kesimpulan_

```
Terdapat perbedaan antara nilai rata rata Bandung dan nilai rata rata Bali
```

## 4

Seorang Peneliti sedang meneliti spesies dari kucing di ITS . Dalam penelitiannya
ia mengumpulkan data tiga spesies kucing yaitu kucing oren, kucing hitam dan
kucing putih dengan panjangnya masing-masing.
Jika :
diketahui dataset https://intip.in/datasetprobstat1
H0 : Tidak ada perbedaan panjang antara ketiga spesies atau rata-rata panjangnya
sama
Maka Kerjakan atau Carilah:

### 4a

_Buatlah masing masing jenis spesies menjadi 3 subjek "Grup" (grup 1,grup
2,grup 3). Lalu Gambarkan plot kuantil normal untuk setiap kelompok dan
lihat apakah ada outlier utama dalam homogenitas varians_

### 4b

_carilah atau periksalah Homogeneity of variances nya , Berapa nilai p yang
didapatkan? , Apa hipotesis dan kesimpulan yang dapat diambil ?_


### 4c

_Untuk uji ANOVA (satu arah), buatlah model linier dengan Panjang versus
Grup dan beri nama model tersebut model 1._

### 4d

_Dari Hasil Poin C, Berapakah nilai-p ? , Apa yang dapat Anda simpulkan
dari H0?_

```
p-value = 0.8054
```

maka Probabilitas (p-value) > 0,05 maka h0 diterima

### 4e

_Verifikasilah jawaban model 1 dengan Post-hoc test Tukey HSD, dari nilai p
yang didapatkan apakah satu jenis kucing lebih panjang dari yang lain?_


### 4f

_Visualisasikan data dengan ggplot2_

## 5

Data yang digunakan merupakan hasil eksperimen yang dilakukan untuk
mengetahui pengaruh suhu operasi (100˚C, 125˚C dan 150˚C) dan tiga jenis kaca
pelat muka (A, B dan C) pada keluaran cahaya tabung osiloskop. Percobaan
dilakukan sebanyak 27 kali dan didapat data sebagai berikut: Data Hasil
Eksperimen. Dengan data tersebut

### 5a

_Buatlah plot sederhana untuk visualisasi data_


### 5b

_Lakukan uji ANOVA dua arah_

### 5c

_Tampilkan tabel dengan mean dan standar deviasi keluaran cahaya untuk
setiap perlakuan (kombinasi kaca pelat muka dan suhu operasi)_


### 5d

_Lakukan uji Tukey_

```
anova <- aov(Light ~ Glass*Temp_Factor, data = GTLData)
print(TukeyHSD(anova))
```

<img width="330" alt="image" src="https://user-images.githubusercontent.com/64743796/170869554-f07ecb4c-c875-4683-988c-32535e01e854.png">

### 5e

_Gunakan compact letter display untuk menunjukkan perbedaan signifikan
antara uji Anova dan uji Tukey_
