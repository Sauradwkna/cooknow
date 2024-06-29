-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 23, 2024 at 04:05 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cooknow`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `favorite_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nutritions`
--

CREATE TABLE `nutritions` (
  `nutrition_id` char(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `icon` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nutritions`
--

INSERT INTO `nutritions` (`nutrition_id`, `name`, `icon`) VALUES
('EN', 'Energi', 'assets/icon/nut-Energi.png'),
('GL', 'Gula', 'assets/icon/nut-Gula.png'),
('KB', 'Karbohidrat', 'assets/icon/nut-Karbohidrat.png'),
('KL', 'Kalium', 'assets/icon/nut-Kalium.png'),
('KR', 'Kalori', 'assets/icon/nut-Kalori.png'),
('KS', 'Kalsium', 'assets/icon/nut-Kalsium.png'),
('LJ', 'Lemak Jenuh', 'assets/icon/nut-LemakJenuh.png'),
('LK', 'Lemak', 'assets/icon/nut-Lemak.png'),
('PR', 'Protein', 'assets/icon/nut-Protein.png'),
('SD', 'Sodium', 'assets/icon/nut-Sodium.png'),
('SR', 'Serat', 'assets/icon/nut-Serat.png'),
('ZB', 'Zat Besi', 'assets/icon/nut-ZatBesi.png');

-- --------------------------------------------------------

--
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL,
  `category` varchar(25) DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `description` varchar(255) NOT NULL,
  `ingredients` text NOT NULL,
  `instructions` text DEFAULT NULL,
  `nutritions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `category`, `name`, `image`, `description`, `ingredients`, `instructions`, `nutritions`) VALUES
(1, 'Beverages', 'Jus Stoberi', '../uploads/66781428a9db90.82654406.png', ' jus strawberry merupakan salah satu cara memperoleh manfaat buah strawberry. Sebagaimana nutrisi di dalam buahnya, jus strawberry mengandung vitamin C, folat, kalium, magnesium, zat besi, antioksidan yang sangat baik untuk kesehatan.', '<ul><li>300 gr buah strawberry</li><li>50 ml susu UHT</li><li>200 ml air</li><li>3 sdm gula</li><li>50 gr es batu</li></ul>', '<ol><li>Blender stroberi hingga halus.</li><li>Tambahkan Susu, dan es batu.</li><li>Hias dengan daun mint sebelum&nbsp;disajikan.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>114 kkal</td></tr><tr><td>Lemak</td><td>1,8 g</td></tr><tr><td>Lemak Jenuh</td><td>0,054 g</td></tr><tr><td>Protein</td><td>0,9 g</td></tr><tr><td>Karbohidrat</td><td>23,4 g</td></tr><tr><td>Serat</td><td>0,3 g</td></tr><tr><td>Gula</td><td>23,1 g</td></tr><tr><td>Sodium</td><td>3 mg</td></tr><tr><td>Kalium</td><td>405 mg</td></tr><tr><td>Kalsium</td><td>45 mg</td></tr><tr><td>Zat besi</td><td>1,23 mg</td></tr></tbody></table></figure>'),
(2, 'Beverages', 'Jus Mangga', '../uploads/66715c399268e4.11667814.png', 'Jus mangga adalah minuman yang terbuat dari buah mangga yang diolah menjadi bentuk cairan. Buah mangga yang digunakan biasanya sudah matang sehingga memiliki rasa yang manis dan aroma yang khas. Jus mangga sering kali disajikan dalam keadaan dingin dan da', '<ul><li>100gr mangga cuci dengan air matang tiriskan</li><li>1 sachet susu kental manis</li><li>4 SDM gulpas</li><li>700 ml air matang</li><li>Es batu secukupnya</li></ul>', '<ol><li>Kupas 1 buah mangga (berat 300 gram setelah&nbsp;dikupas)</li><li>Blender mangga hingga halus.</li><li>Tambahkan susu kental manis, dan es batu.</li><li>Hias dengan daun mint sebelum disajikan.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>136 kkal</td></tr><tr><td>Lemak</td><td>1,37 g</td></tr><tr><td>Lemak Jenuh</td><td>0,718 g</td></tr><tr><td>Protein</td><td>1,53 g</td></tr><tr><td>Karbohidrat</td><td>32,14 g</td></tr><tr><td>Serat</td><td>2 g&nbsp;</td></tr><tr><td>Gula</td><td>29,68 g</td></tr><tr><td>Sodium</td><td>21 mg</td></tr><tr><td>Kalium</td><td>217,29 mg</td></tr><tr><td>Vitamin&nbsp;C</td><td>60 mg</td></tr><tr><td>Kalsium</td><td>15 mg</td></tr><tr><td>Zat besi</td><td>0,001 mg</td></tr></tbody></table></figure>'),
(3, 'Beverages', 'Jus Alpukat', '../uploads/66781450bb3c51.55919635.png', 'Jus alpukat, atau jus alpukat dalam bahasa Indonesia, adalah minuman dingin yang kaya dan halus yang terbuat dari alpukat segar, dicampur dengan susu segar dan susu kental. Lezat dan kental, minuman ini sebenarnya lebih dekat dengan shake daripada jus, da', '<ul><li>1 buah alpukat matang</li><li>200 ml susu almond atau susu kedelai (bisa diganti dengan air jika ingin versi rendah kalori)</li><li>1 sendok makan madu (opsional)</li><li>Es batu secukupnya</li></ul>', '<ol><li>Belah alpukat, buang bijinya, dan ambil daging buahnya.</li><li>Masukkan daging alpukat, susu almond atau susu kedelai, dan madu ke dalam blender.</li><li>Tambahkan es batu secukupnya.</li><li>Blender hingga halus dan tercampur rata.</li><li>Tuang jus alpukat ke dalam gelas, siap untuk dinikmati.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>200-250 kkal</td></tr><tr><td>Protein</td><td>2-4 g</td></tr><tr><td>Lemak</td><td>15-20 g</td></tr><tr><td>Karbohidrat:</td><td>20-25 g</td></tr><tr><td>Serat</td><td>6-8&nbsp;g</td></tr></tbody></table></figure>'),
(4, 'Beverages', 'Jus Jeruk', '../uploads/6672fa775568a7.46848018.png', 'Minuman jeruk mengacu kepada minuman manis, bergula, terkadang berkarbonasi, minuman berasa jeruk.\r\nBiasanya minuman ini mengandung sedikit atau sari buah jeruk dan sebagian besar terdiri dari air, gula atau pemanis, perasa, pewarna, dan zat adiktif.', '<ul><li>4-5 buah jeruk manis</li><li>Gula pasir (opsional, sesuai selera)</li><li>Air dingin atau es batu (opsional, sesuai selera)</li></ul>', '<ol><li>Cuci bersih jeruk untuk menghilangkan kotoran dan pestisida.</li><li>Belah jeruk menjadi dua bagian.</li><li>Peras jeruk menggunakan alat pemeras jeruk atau secara manual dengan tangan. Pastikan untuk menangkap jus dalam wadah yang bersih.</li><li>Saring jus untuk menghilangkan biji dan ampas, jika diinginkan.</li><li>Jika ingin menambahkan gula, larutkan gula dalam sedikit air panas terlebih dahulu, lalu campurkan ke dalam jus jeruk.</li><li>Jika jus terlalu kuat, Anda bisa menambahkan air dingin atau es batu sesuai selera.</li><li>Tuangkan jus jeruk ke dalam gelas.</li><li>Sajikan segera untuk mendapatkan kesegaran optimal.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>45 kkal</td></tr><tr><td>Protein</td><td>0,9 g</td></tr><tr><td>Lemak</td><td>0,2 g</td></tr><tr><td>Karbohidrat</td><td>11,2 g</td></tr><tr><td>Serat</td><td>1,4 g</td></tr></tbody></table></figure>'),
(5, 'Dinner', 'Udang Asam Manis', '../uploads/6672fcfcb66564.75833256.png', 'Udang asam manis adalah hidangan yang populer dalam masakan Asia Tenggara, terutama di Indonesia, Malaysia, dan Singapura. Hidangan ini memiliki rasa manis, asam, dan pedas yang khas.', '<ul><li>500 gram udang</li><li>1 buah bawang bombay</li><li>1 buah paprika merah</li><li>1 buah paprika hijau</li><li>3 siung bawang putih</li><li>2 sdm saus tomat</li><li>2 sdm saus cabai</li><li>3 sdm saus hoisin</li><li>3 sdm saus tiram</li><li>2 sdm kecap manis</li><li>1 sdm saus sambal (opsional, sesuai selera)</li><li>2 sdm minyak sayur</li><li>Garam secukupnya</li><li>Merica secukupnya</li><li>Air secukupnya</li></ul>', '<ol><li>Tumis bawang bombay dan bawang putih hingga harum.</li><li>Masukkan saus tomat, saus tiram, madu, garam, dan kaldu jamur.</li><li>Masukkan larutan tepung jagung dan air.</li><li>Masukkan udang, masak hingga matang.</li><li>Koreksi rasa,&nbsp;lalu&nbsp;sajikan.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>1125 kkal</td></tr><tr><td>Lemak</td><td>16,84 g</td></tr><tr><td>Protein</td><td>6,56 g</td></tr><tr><td>Karbohidrat</td><td>25,12 g</td></tr></tbody></table></figure>'),
(6, 'Lunch', 'Sayur Asem', '../uploads/66745a59c9d811.79266631.png', 'Sayur asam atau sayur asem adalah masakan sejenis sayur yang khas Indonesia. Ada banyak variasi lokal sayur asam seperti sayur asam Jakarta (variasi dari orang Betawi di Jakarta), sayur asam kangkung (variasi yang menggunakan kangkung), dan sayur asam ika', '<ul><li>1 ikat kacang panjang.</li><li>1 buah labu siam.</li><li>250 gram (gr) kacang panjang.</li><li>50 gr melinjo.</li><li>3 buah jagung manis.</li><li>1,5 liter air.</li><li>1 sendok makan (sdm) air asam jawa.</li><li>4 siung bawang putih.</li><li>8 butir bawang merah.</li><li>3 sentimeter (cm) lengkuas.</li><li>3 buah cabai merah.</li><li>2 sdt gula pasir (sesuai selera)</li><li>¼ sdt garam (sesuai selera).</li></ul>', '<ol><li>Potong kacang panjang dengan ukuran 3-4 cm atau sesuai selera. Kemudian potong labu siam dengan bentuk dadu dan potong jagung manis dengan bentuk melingkar atau sesuaikan dengan selera.</li><li>Haluskan bumbu hingga teksturnya halus. Setelah bahan dan bumbu sayur asem sudah siap, kemudian rebus air hingga mendidih.</li><li>Setelah air mendidih, masukan semua bumbu yang sudah kamu siapkan.</li><li>Kemudian, masukan kacang tanah, melinjo, dan jagung. Masak bahan-bahan hingga setengah matang.</li><li>Celupkan labu siam dan kacang panjang. Tambahkan garam dan gula pasir secukupnya, aduk hingga merata. Masak semua bahan hingga matang dan&nbsp;bumbu&nbsp;meresap.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>80 kkal</td></tr><tr><td>Lemak</td><td>2,76 g</td></tr><tr><td>Lemak Jenuh</td><td>0,369 g</td></tr><tr><td>Protein</td><td>3,18 g</td></tr><tr><td>Karbohidrat</td><td>12,9 g</td></tr><tr><td>Serat</td><td>2,5 g</td></tr><tr><td>Gula</td><td>4,75 g</td></tr><tr><td>Vitamin C</td><td>0,001 mg</td></tr><tr><td>Sodium</td><td>308 mg</td></tr><tr><td>Kalium</td><td>260,85 mg</td></tr><tr><td>Kalsium</td><td>120 mg</td></tr><tr><td>Zat Besi</td><td>3,10 mg</td></tr></tbody></table></figure>'),
(7, 'Lunch', 'Sambal Goreng Kulit Melinjo', '../uploads/66745a8c6bf446.93360089.png', 'Sambal kulit melinjo adalah hidangan tradisional Indonesia yang menggunakan kulit melinjo sebagai bahan utamanya. Kulit melinjo, yang dikenal sebagai bahan untuk membuat emping (kerupuk dari biji melinjo), memberikan tekstur yang unik dan rasa yang khas p', '<ul><li>100 gr kulit tangkil potong-potong</li><li>4 potong paha ayam yang sudah direbus</li><li>1 buah labu siam potong korek api</li><li>65 ml santan kara (dicampur dengan 500 ml air)</li><li>1/4 sendok teh gula</li><li>1/4 sendok teh garam (sesuaikan selera)</li><li>Minyak untuk menumis bumbu</li><li>Bumbu Halus :</li><li>3 sendok makan Bumbu Dasar Merah</li><li>Bumbu pelengkap lainnya :</li><li>2 lembar daun salam</li><li>2 lembar daun jeruk</li><li>2 ruas lengkuas geprek</li></ul>', '<ul><li>Tumis bumbu halus dan bumbu pelengkap lainnya, kemudian masukkan ayam rebus. Aduk rata sampai bumbu tercampur dengan ayam.</li><li>Tuang labu siam dan kulit tangkil yang sudah dipotong-potong, aduk rata.</li><li>Tambahkan santan (kara 65 ml yang dicampur dengan air 500 ml), aduk rata sampai mendidih, tutup pancinya supaya aroma bumbunya menyatu dengan ayamnya. Taburkan garam dan&nbsp;gula,&nbsp;tes&nbsp;rasa.</li></ul>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>101 kkal</td></tr><tr><td>Lemak</td><td>1,53 g</td></tr><tr><td>Lemak Jenuh</td><td>0,236 g</td></tr><tr><td>Protein</td><td>4,58 g</td></tr><tr><td>Karbohidrat</td><td>20,71 g</td></tr><tr><td>Serat</td><td>9,3 g</td></tr><tr><td>Gula</td><td>0,99 g</td></tr><tr><td>Sodium</td><td>3 mg</td></tr><tr><td>Kalium</td><td>252,05 mg</td></tr><tr><td>Vitamin</td><td>7 mg</td></tr><tr><td>Kalsium</td><td>117 mg</td></tr><tr><td>Zat Besi</td><td>&nbsp;0,001 mg</td></tr></tbody></table></figure>'),
(10, 'Beverages', 'Es Kopyor', '../uploads/66781465ab4f70.81039060.jpg', 'Es Kopyor adalah minuman tradisional Indonesia yang populer terutama di saat-saat berbuka puasa atau sebagai penyegar di hari yang panas. Minuman ini dikenal karena rasanya yang manis dan segar serta tekstur unik dari kelapa kopyor.', '<ul><li>15 mt</li><li>4 gelas</li><li>1 sachet teh celup (aku pake Gunung satria/ yg lain) Rp.300</li><li>1 kotak/ 180 ml, susu Almond/Almond milk Rp 13.500</li><li>1/2 pack / 75 gr cincau hitam tawar Rp.3.250</li><li>secukupnya Es batu</li><li>2 sdm madu, boleh skip, atau diganti gula / syrup Rp.3.000</li><li>300 ml air mendidih</li></ul>', '<ol><li>Siapkan bahan bahan yang dibutuhkan</li><li>Celup teh dg 300 ml air mendidih, hingga merah.</li><li>Parut cincau memanjang, agar terbentuk spt mie</li><li>Tuang susu Almond pada teko yg berisi teh, aduk rata. Siapkan es batu pada gelas saji &amp; tambahkan beberapa sendok cincau parut</li><li>Tuang teh susu dlm gelas, tambahkan madu bila suka &amp; aduk perlahan Selamat menikmati, es teh susu sehat siap disajikan.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>150-200 kkal</td></tr><tr><td>Karbohidrat</td><td>30-40 g</td></tr><tr><td>Protein</td><td>1-2 g</td></tr><tr><td>Lemak</td><td>5-10 g</td></tr><tr><td>Vitamin C</td><td>2-5% AKG</td></tr><tr><td>Kalsium</td><td>2-4% AKG</td></tr><tr><td>Zat Besi</td><td>1-3% AKG</td></tr></tbody></table></figure>'),
(11, 'Beverages', 'Es Leci', '../uploads/667579fb9841d1.09442431.jpg', 'Es Leci adalah minuman yang populer di Indonesia, terutama di saat-saat cuaca panas. Minuman ini dikenal karena rasanya yang manis, segar, dan aroma leci yang khas', '<ul><li>Buah Leci secukupnya</li><li>secukupnya Es Batu</li><li>secukupnya Sirup Coco Pandan Marjan</li><li>secukupnya Yakult atau Minuman Susu Fermetasi lain</li></ul>', '<ol><li>Saya pakai wadah gelas jadi saya pakai 1sdm sirup coco pandan marjan</li><li>Lalu saya pakai 2botol yakult, kalu mau pake 1botol lalu tambah air biasa juga bisa, aduk rata</li><li>Tambahkan Es batu, saya pakai 1 yang besar</li><li>Lalu tambahkan buah leci</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>120-150 kkal</td></tr><tr><td>Karbohidrat</td><td>30-35 g</td></tr><tr><td>Gula</td><td>25-30 g</td></tr><tr><td>Protein</td><td>0-1 g</td></tr><tr><td>Lemak</td><td>0-1 g</td></tr><tr><td>Serat</td><td>0-1 g</td></tr><tr><td>Vitamin C</td><td>15-20% AKG</td></tr><tr><td>Sodium</td><td>65 mg</td></tr></tbody></table></figure>'),
(12, 'Beverages', 'Es Teh Susu Sehat', '../uploads/66757d2300ebe1.32103608.jpg', 'Es Teh Susu Sehat adalah minuman yang menggabungkan teh dengan susu, menawarkan cita rasa yang lembut dan segar. Minuman ini tidak hanya enak, tetapi juga memberikan manfaat kesehatan, terutama jika menggunakan bahan-bahan alami dan sehat.', '<ul><li>15 mt</li><li>4 gelas</li><li>1 sachet teh celup (aku pake Gunung satria/ yg lain) Rp.300</li><li>1 kotak/ 180 ml, susu Almond/Almond milk Rp 13.500</li><li>1/2 pack / 75 gr cincau hitam tawar Rp.3.250</li><li>secukupnya Es batu</li><li>2 sdm madu, boleh skip, atau diganti gula / syrup Rp.3.000</li><li>300 ml air mendidih</li></ul>', '<ol><li>Siapkan bahan bahan yang dibutuhkan</li><li>Celup teh dengan 300 ml air mendidih, hingga merah.</li><li>Parut cincau memanjang, agar terbentuk seperti mie</li><li>Tuang susu Almond pada teko yg berisi teh, aduk rata. Siapkan es batu pada gelas saji &amp; tambahkan beberapa sendok cincau parut</li><li>Tuang teh susu dlm gelas, tambahkan madu bila suka &amp; aduk perlahan Selamat menikmati, es teh susu sehat siap disajikan.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>100-200 kkal</td></tr><tr><td>Karbohidrat</td><td>20-30 g</td></tr><tr><td>Protein</td><td>3-8 g</td></tr><tr><td>Lemak</td><td>3-5 g</td></tr><tr><td>Lemak Jenuh</td><td>2-3 g</td></tr><tr><td>Kalsium</td><td>100-300 mg</td></tr><tr><td>Vitamin D</td><td>2-4 mg</td></tr><tr><td>Kafein</td><td>30-50mg</td></tr></tbody></table></figure>'),
(13, 'Beverages', 'Es Cendol', '../uploads/66757e18b08456.81023620.jpg', '\r\nEs Cendol adalah minuman tradisional Indonesia yang populer dan menyegarkan, terutama dinikmati di saat cuaca panas. Minuman ini terkenal dengan kombinasi rasa manis, gurih, dan segar, serta tekstur cendol yang kenyal.', '<ul><li>100 gram tepung beras</li><li>50 gram tepung sagu</li><li>600 ml air pandan (campuran air dan daun pandan yang diblender dan disaring)</li><li>100 gram gula merah</li><li>200 ml air</li><li>100 ml santan kental</li><li>Sejumput garam</li><li>Es batu secukupnya</li></ul>', '<ul><li>Campur tepung beras dan tepung sagu, tambahkan air pandan sedikit demi sedikit sambil diaduk hingga rata.</li><li>Masak adonan di atas api kecil sambil terus diaduk hingga matang dan kental.</li><li>Siapkan wadah berisi air dingin dan es batu, tuang adonan cendol menggunakan cetakan cendol ke dalam air dingin, biarkan mengeras.</li><li>Rebus gula merah dengan air hingga larut, lalu saring.</li><li>Rebus santan dengan sedikit garam hingga mendidih, lalu angkat dan dinginkan.</li><li>Sajikan cendol dengan kuah gula merah, santan, dan es batu.</li></ul>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>150-200 kkal</td></tr><tr><td>Protein</td><td>1-2 g</td></tr><tr><td>Lemak</td><td>5-7 g</td></tr><tr><td>Karbohidrat</td><td>30-35 g</td></tr><tr><td>Serat</td><td>1-2&nbsp;g</td></tr></tbody></table></figure>'),
(14, 'Beverages', 'Es Selendang Mayang', '../uploads/6675801ecb3f32.28043865.jpg', 'Es Selendang Mayang adalah minuman yang tidak hanya menyegarkan tetapi juga menawarkan pengalaman rasa dan tekstur yang unik. Dengan tampilannya yang menarik dan rasa yang kompleks, minuman ini merupakan salah satu warisan kuliner Betawi yang tetap digema', '<ul><li>Adonan Slendang Mayang:</li><li>100 gram tepung beras</li><li>50 gram tepung tapioka</li><li>500 ml air</li><li><p>Pewarna makanan (merah dan hijau)</p><p>Sirup Gula Merah:</p></li><li>200 gram gula merah, serut</li><li>100 ml air</li><li><p>2 lembar daun pandan</p><p>Kuah Santan:</p></li><li>500 ml santan kental</li><li>1/2 sendok teh garam</li><li><p>2 lembar daun pandan</p><p>Pelengkap:</p></li><li>Es batu, serut atau potong kecil-kecil</li></ul>', '<p>Cara Membuat Slendang Mayang:</p><ul><li>Campurkan tepung beras dan tepung tapioka dalam panci.<ul><li>Tambahkan air sedikit demi sedikit sambil diaduk hingga rata.</li><li>Masak adonan di atas api kecil sambil terus diaduk hingga mengental.</li><li>Bagi adonan menjadi dua bagian. Tambahkan pewarna makanan merah pada satu bagian dan pewarna makanan hijau pada bagian lainnya. Aduk rata masing-masing adonan.</li><li>Tuang adonan ke dalam loyang datar yang sudah diolesi sedikit minyak. Ratakan dan biarkan hingga dingin dan mengeras.</li><li>Potong-potong adonan slendang mayang sesuai selera.</li></ul></li></ul><p>&nbsp;</p><p>Membuat Sirup Gula Merah:</p><ul><li>Rebus gula merah, air, dan daun pandan hingga gula larut dan air mendidih.<ul><li>Saring dan biarkan sirup gula merah dingin.</li></ul></li></ul><p>&nbsp;</p><p>Membuat Kuah Santan:</p><ul><li>Rebus santan bersama garam dan daun pandan sambil terus diaduk agar santan tidak pecah.<ul><li>Biarkan kuah santan dingin.</li></ul></li></ul><p>&nbsp;</p><p>Penyajian:</p><ul><li>Susun potongan slendang mayang dalam mangkuk atau gelas saji.<ul><li>Tuangkan sirup gula merah di atasnya.</li><li>Tambahkan es batu secukupnya.</li><li>Siram dengan kuah santan.</li><li>Es slendang mayang siap disajikan.</li></ul></li></ul>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>250-300 kkal</td></tr><tr><td>Karbohidrat</td><td>50-60 g</td></tr><tr><td>Protein</td><td>2-3 g</td></tr><tr><td>Lemak</td><td>6-8 g</td></tr><tr><td>Gula</td><td>25-30 g</td></tr><tr><td>Serat</td><td>&nbsp;1-2 g</td></tr><tr><td>Sodium</td><td>100-150&nbsp;mg</td></tr></tbody></table></figure>'),
(15, 'Beverages', 'Bajigur', '../uploads/667581295a5475.72160588.jpg', 'Bajigur adalah minuman tradisional khas Jawa Barat yang terkenal dengan rasa hangat, manis, dan gurih. Minuman ini sangat populer terutama di daerah Sunda, dan sering dinikmati pada saat cuaca dingin atau hujan.', '<ul><li>300 ml Air,</li><li>65ml Sasa Santan Cair</li><li>30 gram Gula Jawa</li><li>1 buah Jahe ukuran 3 cm</li><li>1 buah Kayu manis</li><li>1 Lembar Daun Pandan</li><li>1/2 sdt Kopi&nbsp;</li></ul>', '<ol><li>Bakar 1 siung Jahe di mini stove.</li><li>Rebus Air, Jahe, Gula jawa, kayu manis, dan daun pandan hingga larut dan aroma jahenya keluar.</li><li>Tuang bubuk Kopi lalu aduk dan tuang Sasa Santan Cair Omega 3.</li><li>Aduk hinga rata. Sajikan&nbsp;selagi&nbsp;hangat.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>150-200 kkal</td></tr><tr><td>Karbohidrat</td><td>25-30 g</td></tr><tr><td>Gula</td><td>15-30 g</td></tr><tr><td>Lemak</td><td>5-10 g</td></tr><tr><td>Lemak Jenuh</td><td>4-6 g</td></tr><tr><td>Protein</td><td>1-2 g</td></tr><tr><td>Serat</td><td>1 g</td></tr></tbody></table></figure>'),
(16, 'Beverages', 'Jus Hijau Sehat', '../uploads/66758512e98e25.97045181.jpg', 'Jus Hijau Sehat adalah minuman yang terbuat dari berbagai sayuran dan buah-buahan hijau yang kaya akan nutrisi, enzim, dan antioksidan. Minuman ini sangat populer di kalangan mereka yang peduli dengan kesehatan dan gaya hidup sehat karena manfaatnya yan', '<ul><li>1 buah apel hijau</li><li>1 buah mentimun</li><li>1 cangkir bayam</li><li>1 buah lemon</li><li>1 inci jahe segar</li><li>1 cangkir air kelapa</li></ul>', '<ol><li>Cuci semua bahan dengan bersih.</li><li>Kupas dan potong apel dan mentimun menjadi potongan kecil.</li><li>Peras lemon untuk mendapatkan jusnya.</li><li>Kupas jahe dan potong menjadi potongan kecil.</li><li>Masukkan semua bahan ke dalam blender: apel, mentimun, bayam, jus lemon, jahe, dan air kelapa.</li><li>Blender hingga halus.</li><li>Saring jus untuk menghilangkan ampas jika diinginkan.</li><li>Tuang jus ke dalam gelas dan sajikan segera.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>150-170 g</td></tr><tr><td>Protein</td><td>2-3 g</td></tr><tr><td>Lemak</td><td>0,5-1 g</td></tr><tr><td>Karbohidrat</td><td>35-40 g</td></tr><tr><td>Serat</td><td>5-7 g</td></tr><tr><td>Vitamin A,C,K serta beberapa mineral seperti kalium dan magnesium.</td><td>&nbsp;</td></tr></tbody></table></figure>'),
(17, 'Beverages', 'Jus Berry & Pisang', '../uploads/667588ede9cf30.74226317.jpg', 'Jus Berry & Pisang adalah minuman yang tidak hanya lezat tetapi juga memberikan banyak manfaat kesehatan. Kaya akan vitamin, mineral, dan antioksidan, jus ini membantu meningkatkan energi, memperbaiki sistem kekebalan tubuh, dan mendukung kesehatan kulit.', '<ul><li>1 cangkir buah campuran berry (stroberi, blueberry, raspberry)</li><li>1 buah pisang matang</li><li>1 cangkir yogurt rendah lemak</li><li>1 sendok makan madu</li><li>1/2 cangkir air atau susu almond</li></ul>', '<ol><li>Cuci bersih semua buah berry.</li><li>Kupas dan potong pisang menjadi potongan kecil.</li><li>Masukkan buah berry, pisang, yogurt, madu, dan air atau susu almond ke dalam blender.</li><li>Blender hingga halus.</li><li>Tuang jus ke dalam gelas dan sajikan segera.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>200-250 kkal</td></tr><tr><td>Protein</td><td>6-8 g</td></tr><tr><td>Lemak</td><td>2-4 g</td></tr><tr><td>Karbohidrat</td><td>40-50 g</td></tr><tr><td>Serat</td><td>6-8 g</td></tr><tr><td>Vitamin &nbsp;C, K, B6, dan beberapa mineral seperti kalsium dan kalium.</td><td>&nbsp;</td></tr></tbody></table></figure>'),
(18, 'Lunch', 'Rawon Surabaya', '../uploads/66758f88de9c75.06122679.jpg', 'adalah masakan khas dari Surabaya, Jawa Timur, Indonesia. Rawon ini terkenal karena kuahnya yang kental dan berwarna hitam pekat, yang dihasilkan dari campuran bumbu-bumbu khas seperti kluwek (buah keluak), bawang merah, bawang putih, kunyit, jahe, lengku', '<ul><li>500 gram daging sandung lamur (brisket)</li><li>&nbsp;6 lembar daun jeruk</li><li>3 batang serai, geprek</li><li>3 liter air</li><li><p>1 ruas lengkuas, geprek</p><p>Bumbu halus:</p></li><li>8 siung bawang merah</li><li>5 siung bawang putih</li><li>4 buah kluwek ukuran sedang, keruk isinya</li><li>4 butir kemiri, sangrai</li><li>2 cm kunyit</li><li>1 1/2 sdt ketumbar bubuk</li><li>1 sendok teh merica</li><li>1 cm jahe</li><li>1 batang bawang perai dipotong-potong</li><li>Garam secukupnya</li><li>Gula secukupnya</li></ul><p>&nbsp; &nbsp; &nbsp; &nbsp;Bahan pelengkap:</p><ul><li>Bawang goreng secukupnya</li><li>Tauge pendek secukupnya</li><li>Sambal terasi</li><li>Kerupuk udang</li><li>Telur asin</li></ul>', '<ol><li>Rebus daging dalam air mendidih hingga cukup empuk. Setelah itu angkat dari air rebusan dan potong-potong seukuran satu suapan.</li><li>&nbsp;Saring air kaldu dari rebusan tadi, kemudian lalu masukkan kembali daging yg telah dipotong bersama serai, daun jeruk dan lengkuas.</li><li>Tumis bumbu halus dengan sedikit minyak hingga harum, kemudian masukkan ke dalam rebusan daging.</li><li>Masak sampai daging empuk. Apabila air menyusut dan daging belum empuk, tambahkan air secukupnya dan masak rawon sampai daging benar-benar lunak.</li><li>Sesaat sebelum diangkat, masukkan irisan daun bawang.</li><li>Setelah selesai, hidangkan rawon dengan bahan-bahan pelengkap dan nasi panas.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>60 kkal</td></tr><tr><td>Lemak</td><td>2,50 g</td></tr><tr><td>Vitamin C</td><td>0,001 mg</td></tr><tr><td>Karbohidrat</td><td>4 g</td></tr><tr><td>Protein</td><td>5,40 g</td></tr><tr><td>Serat</td><td>0,001 g</td></tr><tr><td>Kalsium</td><td>272 mg</td></tr><tr><td>Fosfor</td><td>153 mg</td></tr><tr><td>Kalium</td><td>0,001 mg</td></tr><tr><td>Natrium</td><td>0,001 mg</td></tr><tr><td>Zat Besi</td><td>3,30 mg</td></tr></tbody></table></figure>'),
(19, 'Lunch', 'Ayam Pedas Manis', '../uploads/667597c67107b2.62193702.jpg', '\r\nAyam Pedas Manis adalah hidangan ayam yang populer di berbagai daerah Indonesia, dikenal dengan perpaduan rasa pedas dan manis yang menggugah selera. Hidangan ini biasanya dibuat dengan potongan ayam yang dimasak dengan bumbu-bumbu khas Indonesia yang k', '<ul><li>100 gram ayam dada fillet</li><li>1 siung bawang putih cincang</li><li>Daun bawang, ambil bagian putihnya</li><li>Perasan lemon</li><li>1 buah tomat potong dadu</li><li>½ sdt garam</li><li>1 sdm pasta tomat</li><li>1 sdm kecap manis</li></ul>', '<ol><li>Rendam ayam dengan semua bumbu kecuali tomat selama 10 menit.</li><li>Panaskan pan, masukkan rendaman ayam.</li><li>Beri sedikit air, masak hingga matang.</li><li>Masukkan tomat, masak sebentar.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>202 kkal</td></tr><tr><td>Lemak</td><td>11,41 g</td></tr><tr><td>Lemak Jenuh</td><td>3,159 g</td></tr><tr><td>Protein</td><td>20,49 g</td></tr><tr><td>Karbohidrat</td><td>3,71 g</td></tr><tr><td>Serat</td><td>0,5 g</td></tr><tr><td>Gula</td><td>0,34 g</td></tr><tr><td>Sodium</td><td>238 mg</td></tr><tr><td>Kalium</td><td>265,46 mg</td></tr></tbody></table></figure>'),
(20, 'Breakfast', 'Nasi Uduk', '../uploads/66759937b3ed29.18260488.jpg', 'adalah salah satu hidangan khas Indonesia yang populer,\r\nterutama di daerah Jakarta dan sekitarnya. Hidangan ini terdiri dari nasi yang dimasak dengan santan (kelapa parut yang diperas), sehingga memiliki tekstur yang lembut dan aroma yang kaya. Nasi uduk', '<ul><li>500 g beras, cuci dan tiriskan</li><li>850 ml santan encer</li><li>1 ½ sdt garam</li><li>2 lembar daun salam</li><li>1 batang serai, ambil bagian putihnya dan memarkan</li></ul>', '<ol><li>Kukus beras di dalam panci sampai setengah matang, lalu sisihkan</li><li>Didihkan santan bersama garam, daun salam, dan serai. Aduk perlahan dan jangan sampai santan pecah</li><li>Masukkan beras setengah matang yang masih panas ke dalam santan, aduk rata hingga santan terserap habis lalu angkat</li><li>Kukus kembali beras sampai matang di dalam panci</li><li>Sajikan nasi kuning dengan taburan bawang goreng, emping melinjo goreng, dan telur dadar.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>260 kkal</td></tr><tr><td>Lemak</td><td>12,95 g</td></tr><tr><td>Kolestrol</td><td>0,001 mg</td></tr><tr><td>Protein</td><td>4.07 mg</td></tr><tr><td>Karbohidrat</td><td>32,84 mg</td></tr><tr><td>Serat</td><td>1,6 g</td></tr><tr><td>Gula</td><td>1,83 g</td></tr><tr><td>Sodium</td><td>317 mg</td></tr><tr><td>Kalium</td><td>177 mg</td></tr></tbody></table></figure>'),
(21, 'Breakfast', 'Bubur Kacang Hijau', '../uploads/66759b676e72d2.76102955.jpg', 'Bubur kacang hijau adalah hidangan populer di berbagai negara Asia, termasuk Indonesia. Bubur ini terbuat dari kacang hijau yang direndam, kemudian dimasak bersama dengan air dan gula hingga menjadi bubur yang kental dan lembut. Selain itu, kadang-kadang ', '<ul><li>150 g kacang hijau, rendam selama 1 jam dan tiriskan</li><li>100 g kelapa muda, parut kasar</li><li>1 liter air</li><li><p>Bahan Ketan Hitam</p><p>Bahan Saus Santan :</p></li><li>750 ml santan kelapa</li><li>1/2 sdt garam</li><li>1 lembar daun pandan, lipat dan ikat</li></ul>', '<ol><li>200 g beras ketan hitam, cuci dan tiriskan</li><li>50 g beras ketan putih, cuci dan tiriskan</li><li>150 g gula aren, iris halus</li><li>1 ½ liter air</li><li>2 lembar daun pandan</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Lemak</td><td>3,06 g</td></tr><tr><td>Lemak Jenuh</td><td>2,532 g</td></tr><tr><td>Kolestrol</td><td>0,001 mg</td></tr><tr><td>Protein</td><td>3,54 g</td></tr><tr><td>Karbohidrat</td><td>17,76 g</td></tr><tr><td>Serat</td><td>2,8 g</td></tr><tr><td>Gula</td><td>8,35 g</td></tr><tr><td>Sodium</td><td>46 mg</td></tr><tr><td>Kalium</td><td>161 mg</td></tr></tbody></table></figure>'),
(22, 'Breakfast', 'Bubur Sumsum', '../uploads/6675a06bd990a0.02510247.jpg', 'adalah makanan khas Indonesia yang terbuat dari bahan dasar beras ketan putih yang dimasak hingga menjadi bubur yang kental dan lembut, kemudian disajikan dengan tambahan santan dan gula merah cair sebagai pemanis. Nama \"sumsum\" dalam bubur sumsum merujuk', '<ul><li>100 gram tepung beras</li><li>1 liter santan kelapa</li><li>2 lembar daun pandan</li><li>Garam secukupnya</li></ul><p>Bahan Saus:</p><ul><li>500 gram gula merah</li><li>250 ml air</li><li>2 lembar daun pandan</li></ul>', '<ol><li>Taruh tepung beras dalam wadah, tuangi 500 ml santan lalu aduk-aduk hingga larut.</li><li>Panaskan sisa santan dalam panci, beri garam, daun pandan dan vanili, masak hingga panas tetapi belum mendidih.</li><li>Tuangkan larutan tepung beras lalu kecilkan api. Aduk-aduk hingga menjadi adonan yang kental, mendidih dan teksturnya licin lalu angkat.</li><li>Saus Kinca: Rebus semua bahan menjadi satu hingga gula larut dan mendidih. Angkat lalu saring dan dinginkan.</li><li>Sajikan bubur sumsum dengan saus kinca.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>174 kkal</td></tr><tr><td>Lemak</td><td>3,57 g</td></tr><tr><td>Kolestrol</td><td>0 mg</td></tr><tr><td>Protein</td><td>1,97 g</td></tr><tr><td>Karbohidrat</td><td>33,79 g</td></tr><tr><td>Serat</td><td>1 g</td></tr><tr><td>Gula</td><td>11,12 g</td></tr><tr><td>Sodium</td><td>55 mg</td></tr><tr><td>Kalium</td><td>57 mg</td></tr></tbody></table></figure>'),
(23, 'Dinner', 'Brokoli Ayam Lada Hitam', '../uploads/6675a435bd3625.68264259.jpg', 'Brokoli Ayam Lada Hitam adalah hidangan yang menggabungkan ayam dengan brokoli yang dimasak dengan saus lada hitam, memberikan rasa pedas dan gurih yang khas.', '<ul><li>1 brokoli (potong, rendam pakai air garam, tiriskan)</li><li>60-70 gram dada ayam fillet, potong</li><li>1 sachet saus lada hitam</li><li>½ bombay, potong kotak</li><li>cabai iris</li></ul>', '<ol><li>Tumis dada ayam tanpa minyak hingga berubah warna.</li><li>Tuang saus lada hitam, tuang air secukupnya. Masak hingga matang.</li><li>Masukkan cabai dan brokoli. Masak sebentar, masukan bombay.</li><li>Masak hingga kuah mengental.&nbsp;</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>Energi 124 kkal</td></tr><tr><td>Lemak</td><td>5,84 g</td></tr><tr><td>Lemak Jenuh</td><td>1,147 g</td></tr><tr><td>Protein</td><td>14,34 g</td></tr><tr><td>Karbohidrat</td><td>2,98 g</td></tr><tr><td>Serat</td><td>0,3 g</td></tr><tr><td>Gula</td><td>1,28 g</td></tr><tr><td>Sodium</td><td>154 mg</td></tr><tr><td>Kalium</td><td>163,14 mg</td></tr></tbody></table></figure>'),
(24, 'Breakfast', 'Cream Soup', '../uploads/6675a5b2e77d75.95674900.jpg', 'Cream Soup, atau dalam bahasa Indonesia sering disebut Sup Krim, adalah hidangan sup yang kental dan creamy, umumnya dibuat dari bahan-bahan seperti sayuran, daging, atau seafood, yang diolah dengan tambahan krim atau susu untuk memberikan tekstur yang ', '<ul><li>200 gram ayam fillet</li><li>1 buah wortel, potong dadu kecil</li><li>2 siung bawang putih dicincang halus</li><li>300 ml susu cair</li><li>400 ml air</li><li>½ bawang bombay, potong dadu</li><li>4 buah bakso, potong dadu</li><li>4 sdm tepung terigu + 100 ml air</li><li>1 sdt lada bubuk</li><li>garam secukupnya</li><li>minyak goreng secukupnya</li><li>roti tawar panggang</li></ul>', '<ol><li>Rebus ayam sampai empuk, angkat dan tiriskan. Potong sesuai selera.</li><li>Rebus wortel sampai empuk di kuah ayam.</li><li>Tumis bawang putih dan bawang bombay. Masukkan susu cair, garam, dan lada. Masak sampai mendidih.</li><li>Campur ke dalam panci kuah rebusan ayam, masukkan lagi ayam. Beri bakso, aduk rata.</li><li>Tambahkan campuran terigu, masak sampai agak kental.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>80 kkal</td></tr><tr><td>Lemak</td><td>2 g</td></tr><tr><td>Lemak Jenuh</td><td>0,001 g</td></tr><tr><td>Protein</td><td>8 g</td></tr><tr><td>Karbohidrat</td><td>6 g</td></tr><tr><td>Serat</td><td>0,001 g</td></tr><tr><td>Gula</td><td>0,001 g</td></tr><tr><td>Sodium</td><td>800 mg</td></tr></tbody></table></figure>'),
(25, 'Dinner', 'Chicken Steak', '../uploads/6675a9003136a7.39804793.jpg', '\r\nChicken Steak adalah hidangan yang terdiri dari potongan daging ayam yang diasinkan atau dipanggang, sering kali disajikan dengan saus atau berbagai macam pelengkap.', '<ul><li><p>- 1/2 dada ayam (iris tipis, beri garam, black pepper dan sedikit minyak wijen, sisihkan)</p><p>Bahan saus:</p></li><li>3 bawang putih cacah halus</li><li>1/2 bombay iris</li><li>1 daun salam</li><li>700ml air</li><li>1 sdm saus tiram</li><li>2 sdm saus tomat</li><li>bubuk cabai</li><li>1/4 sdt pala bubuk</li><li>1 sdm gula jawa</li><li>1 sdm gula pasir</li><li>1/2 sdt garam</li><li>lada hitam bubuk</li><li>larutan maizena</li><li>minyak secukupnya</li></ul>', '<ol><li>Tumis bawang merah, putih, dan bombay. Tuang air, semua saus, dan bumbu. Aduk rata lalu beri larutan maizena dan masak hingga mendidih.</li><li>Panggang ayam sampai matang.</li><li>Sajikan ayam bersama saus steak dan beri sayuran.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>302 kkal</td></tr><tr><td>Lemak</td><td>11,25 g</td></tr><tr><td>Protein</td><td>20,17 g</td></tr><tr><td>Karbohidrat</td><td>28,75 g</td></tr><tr><td>Serat</td><td>1 g</td></tr><tr><td>Gula</td><td>0,66 g</td></tr><tr><td>Sodium</td><td>262 mg</td></tr></tbody></table></figure>'),
(26, 'Dinner', 'Ayam Goreng Mentega', '../uploads/6675b24d921ec0.12036141.png', 'Ayam goreng mentega adalah hidangan yang lezat dan menggugah selera yang terdiri dari potongan ayam yang digoreng hingga kecokelatan dan kemudian disajikan dengan saus mentega yang kaya rasa. Potongan ayam yang digoreng dengan sempurna hingga kecokelatan,', '<ul><li>500 gram ayam, potong kecil</li><li>1 batang daun bawang, iris serong</li><li>1 buah bawang bombay, iris panjang</li><li>2 siung bawang putih, cincang kasar</li><li>1 sdm kecap asin</li><li>5 sdm kecap manis</li><li>1 sdt merica bubuk</li><li>Garam secukupnya</li><li>Gula pasir secukupnya</li><li>100 gram margarin untuk menumis</li><li>Minyak secukupnya untuk menggoreng ayam</li></ul>', '<ol><li>Panaskan minyak, goreng ayam sampai setengah matang lalu angkat dan tiriskan</li><li>Panaskan margarin, tumis bawang bombay dan bawang putih hingga harum</li><li>Tambahkan kecap asin, kecap manis, merica bubuk, garam dan gula pasir secukupnya, aduk rata</li><li>Lalu masukkan ayam dan daun bawang, aduk rata dan masak sebentar</li><li>Setelahnya, angkat dan sajikan ayam goreng mentega selagi hangat</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>328 kkal</td></tr><tr><td>Lemak</td><td>17,5 g</td></tr><tr><td>Lemak Jenuh</td><td>10,39 g</td></tr><tr><td>Kolestrol</td><td>123 mg</td></tr><tr><td>Protein</td><td>33,94 g</td></tr><tr><td>Karbohidrat</td><td>8,06 g</td></tr><tr><td>Sodium</td><td>560 mg</td></tr><tr><td>Kalium</td><td>470 mg</td></tr></tbody></table></figure>'),
(27, 'Dinner', 'Soto Padang', '../uploads/6675b8d14cd2e4.96533553.jpg', 'Soto Padang adalah hidangan khas dari daerah Padang, Sumatra Barat, Indonesia, yang terkenal dengan kuah kaldu sapi yang kaya rempah dan daging sapi yang empuk.', '<ul><li>500 gram daging sapi (campur dengan tulang).</li><li>2 liter air.</li><li>minyak goreng secukupnya.</li></ul><p>Bahan cemplung :</p><ul><li>4 lembar daun jeruk.</li><li>3 lembar daun salam.</li><li>8 kelopak bunga lawang.</li><li>2 batang sereh digeprek.</li><li>2 batang daun bawang diiris.</li><li>5 buah kapulaga.</li><li>5 buah cengkeh.</li><li>4 cm kayu manis.</li></ul><p>Bumbu halus :</p><ul><li>6 buah bawang merah.</li><li>10 siung bawang putih.</li><li>1 ruas kunyi.</li><li>3 ruas lengkuas.</li><li>2 ruas jahe.</li><li>1 sdt pala bubuk.</li><li>2 sdt lada bubuk.</li><li>1 sdm ketumbar bubuk.</li><li>garam.</li></ul><p>Bumbu pelengkap :</p><ul><li>sohun siram dengan air panas, rendam sebentar, angkat dan tiriskan.</li><li>perkedel kentang.</li><li>kerupuk merah.</li><li>kecap.</li><li>cuka.</li><li>sambal.</li><li>seledri diiris halus.</li><li>bawang goreng.</li></ul>', '<ol><li>Rebus daging sampai mendidih keluar buihnya, buah buih yang mengapung, masukkan semua bahan cemplung, lanjutkan merebus sampai daging empuk, masukan daun bawang, tunggu layu, matikan kompor, angkat daging, dan tunggu dingin.</li><li>Panaskan minyak goreng, tumis bumbu halus sampai wangi, campur bumbu yang sudah ditumis ke dalam air rebusan daging, masak sebentar sampai bumbu dan kaldu menyatu. koreksi rasa.</li><li>Iris tipis daging yang sudah direbus, kemudian goreng sampai garing.</li><li>Tata sohun, daging didalam mangkok, siram dengan kuah soto, beri kerupuk, perkedel, seledri dan sambal.</li><li>Sajikan.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>607 kkal</td></tr><tr><td>Lemak</td><td>32 g</td></tr><tr><td>Lemak Jenuh</td><td>0,001 g</td></tr><tr><td>Protein</td><td>28 g</td></tr><tr><td>Karbohidrat</td><td>53 g</td></tr><tr><td>Serat</td><td>0,001 g</td></tr><tr><td>Gula</td><td>0,001 g</td></tr><tr><td>Sodium</td><td>0,001 g</td></tr><tr><td>Kalium</td><td>0,001 &nbsp;g</td></tr></tbody></table></figure>'),
(28, 'Dinner', 'Nasi Merah dengan Tumis Sayuran dan Tahu', '../uploads/6675ba0ed8ca20.52011378.jpeg', 'Nasi Merah dengan Tumis Sayuran dan Tahu adalah hidangan yang sehat dan bergizi, menggabungkan nasi merah yang kaya serat dengan tumisan sayuran segar dan tahu sebagai sumber protein nabati.', '<ul><li>100 gram nasi merah</li><li>200 gram tahu, dipotong dadu</li><li>100 gram brokoli</li><li>100 gram wortel, diiris tipis</li><li>50 gram paprika merah</li><li>1 sendok makan kecap manis</li><li>1 sendok makan saus tiram</li><li>1 sendok teh minyak wijen</li><li>2 siung bawang putih, cincang</li><li>Garam dan merica secukupnya</li></ul>', '<ol><li>Masak nasi merah sesuai petunjuk pada kemasan.</li><li>Panaskan minyak wijen dalam wajan, tumis bawang putih hingga harum.</li><li>Masukkan tahu, brokoli, wortel, dan paprika. Tumis hingga sayuran layu.</li><li>Tambahkan kecap manis dan saus tiram. Aduk rata.</li><li>Bumbui dengan garam dan merica sesuai selera.</li><li>Sajikan tumis sayuran dan tahu dengan nasi merah.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>400-450 kkal</td></tr><tr><td>Protein</td><td>15-20 g</td></tr><tr><td>Lemak</td><td>10-15 g</td></tr><tr><td>Karbohidrat</td><td>60-70 g</td></tr><tr><td>Serat</td><td>7-10 g</td></tr></tbody></table></figure>'),
(29, 'Lunch', 'Salad Ayam Panggang', '../uploads/6675bb8ddc47e4.51713275.jpg', 'Salad Ayam Panggang adalah hidangan sehat yang terdiri dari ayam panggang yang dipotong kecil-kecil atau diiris tipis, disajikan di atas campuran berbagai jenis sayuran segar dan bahan lainnya. ', '<ul><li>200 gram dada ayam tanpa kulit</li><li>100 gram selada romaine</li><li>50 gram tomat cherry</li><li>50 gram mentimun</li><li>1 buah alpukat</li><li>2 sendok makan minyak zaitun</li><li>Jus lemon</li><li>Garam dan merica secukupnya</li></ul>', '<ol><li>Panaskan panggangan atau wajan grill dengan sedikit minyak zaitun.</li><li>Bumbui dada ayam dengan garam dan merica, lalu panggang hingga matang (sekitar 6-7 menit per sisi). Angkat dan biarkan agak dingin, kemudian iris tipis.</li><li>Cuci dan siapkan selada, tomat cherry, dan mentimun. Potong tomat cherry menjadi dua dan iris mentimun.</li><li>Kupas dan iris alpukat.</li><li>Campur selada, tomat, mentimun, dan alpukat dalam mangkuk besar.</li><li>Tambahkan irisan ayam panggang di atasnya.</li><li>Siram dengan minyak zaitun dan jus lemon, lalu aduk rata.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>350-400 kkal</td></tr><tr><td>Protein</td><td>30-35 g</td></tr><tr><td>Lemak</td><td>20-25 g</td></tr><tr><td>Karbohidrat</td><td>10-15 g</td></tr><tr><td>Serat</td><td>7-9 g</td></tr></tbody></table></figure>'),
(30, 'Breakfast', 'Roti panggang ala Korea (Gilgeori toast)', '../uploads/6675cdce354be5.10822984.jpg', 'Roti Panggang ala Korea, yang dikenal sebagai Gilgeori Toast, adalah makanan jalanan populer di Korea Selatan. Hidangan ini terdiri dari roti panggang yang diisi dengan berbagai bahan seperti telur, sayuran, dan daging, serta sering kali diberi saus man', '<ul><li>4 lembar roti tawar putih&nbsp;</li><li>3 butir telur ayam</li><li>2 sdm wortel yang sudah diserut halus</li><li>2 sdm kol yang sudah diserut halus</li><li>1 sdm daun bawang yang diiris tipis</li><li>Frisian Flag Susu Kental Manis Full Cream GOLD secukupnya</li><li>1/2 sdt garam</li><li>1/2 merica bubuk</li><li>1/2 minyak wijen</li><li>2 lembar smoked beef</li><li>Saus mayones secukupnya</li><li>Saus sambal dan tomat secukupnya</li></ul>', '<ol><li>Kocok lepas telur sampai berbuih, masukkan sayuran yang sudah diserut halus, garam, minyak wijen, dan merica bubuk. Aduk sampai rata.</li><li>Panaskan wajan anti lengket, tuangkan adonan telur ke dalam wajan dengan api yang kecil. Lalu bentuk adonan menjadi segi empat seperti bentuk roti.</li><li>Panggang kedua sisi adonan sampai matang.</li><li>Panggang roti sebentar, olesi dengan mentega dan</li><li>Lapisi roti dengan adonan telur, smoked beef, keju lapis, saus mayones, saus sambal, dan saus tomat.</li><li>Panggang roti sampai matang dan siap dinikmati selagi hangat.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energi</td><td>1226 kj</td></tr><tr><td>Lemak</td><td>293 kkal</td></tr><tr><td>Lemak Jenuh&nbsp;</td><td>4 g</td></tr><tr><td>Kolestrol</td><td>0,796 g</td></tr><tr><td>Protein</td><td>1 mg</td></tr><tr><td>Karbohidrat&nbsp;</td><td>9 g</td></tr><tr><td>Serat</td><td>54,4 g</td></tr><tr><td>gula&nbsp;</td><td>4,74 g</td></tr><tr><td>Sodium</td><td>592 mg</td></tr><tr><td>Kalium</td><td>131 mg</td></tr></tbody></table></figure>'),
(31, 'Breakfast', 'French toast kacang susu', '../uploads/6675c5ec91af04.68491878.jpg', 'French Toast Kacang Susu adalah perpaduan sempurna antara roti panggang klasik dengan cita rasa kacang yang kaya dan lembutnya susu. Hidangan ini dibuat dengan merendam roti dalam campuran telur, susu, dan gula, kemudian dipanggang hingga berwarna keema', '<ul><li>4 lembar roti tawar tanpa pinggiran</li><li>3 sdm&nbsp;Frisian Flag Susu Kental Manis Full Cream Gold</li><li>Susu UHT Frisian Flag Full Cream secukupnya&nbsp;</li><li>2 butir telur</li><li>Selai kacang</li><li>Pisang ambon</li></ul>', '<ol><li>Kocok lepas telur, Frisian Flag Susu Kental Manis Full Cream Gold, dan&nbsp;Susu UHT Frisian Flag Full Cream Sisihkan.</li><li>Oleskan roti tawar dengan selai kacang favoritmu.&nbsp;</li><li>Tambahkan potongan pisang di bagian atasnya. &nbsp;</li><li>Lalu tuangkan sedikit&nbsp;Frisian Flag Susu Kental Manis Full Cream Gold dan tutup bagian atasnya dengan selembar roti lagi</li><li>Celupkan roti yang telah diberi isian tersebut ke dalam adonan telur.</li><li>Oleskan margarin pada wajan anti lengket.</li><li>Panggang roti sampai kedua sisinya berwarna cokelat keemasan.</li><li>French toast siap dinikmati bersama teh hijau hangat yang menambah kenikmatan.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Lemak</td><td>24 g</td></tr><tr><td>Kolestrol</td><td>181 mg</td></tr><tr><td>Natrium</td><td>338 mg</td></tr><tr><td>Karbohidrat</td><td>40 g</td></tr><tr><td>Protein</td><td>10 g</td></tr></tbody></table></figure>'),
(32, 'Lunch', 'Cah KangKung', '../uploads/6675c9dc1e3576.86012445.jpg', 'Cah Kangkung adalah hidangan sayur yang terdiri dari kangkung, sejenis sayuran hijau yang memiliki daun lebar dan batang berongga. Kangkung sering ditemukan di daerah tropis dan banyak digunakan dalam berbagai masakan Asia. Hidangan ini biasanya dimasak d', '<ul><li>400 gram kangkung (buang akar, cuci bersih)</li><li>3 siung bawang putih (memarkan)</li><li>1/2 cm jahe (iris tipis)</li><li>3 sdm saus tiram</li><li>1/2 sdt gula pasir</li><li>1/2 sdt merica bubuk</li><li>1 sdm kaldu bubuk tanpa MSG</li><li>1 butir telur ayam</li><li>Air matang secukupnya</li></ul>', '<ol><li>Panaskan minyak, tumis bawang putih, bawang merah, dan cabai hingga harum.</li><li>Tuangkan air dan saus tiram, biarkan mendidih, lalu masukkan kangkung dan tomat.</li><li>Masak hingga setengah matang, bumbui dengan garam.</li><li>Angkat&nbsp;dan&nbsp;sajikan.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>35-50 kkal</td></tr><tr><td>Protein</td><td>2-3 g</td></tr><tr><td>Lemak</td><td>1-2 g</td></tr><tr><td>Karbohidrat</td><td>5-7 g</td></tr><tr><td>Serat</td><td>5-7 g</td></tr><tr><td>Vitamin A</td><td>3000-4000 IU</td></tr><tr><td>Vitamin C</td><td>15-20 mg</td></tr><tr><td>Kalsium</td><td>75-100 mg</td></tr><tr><td>Zat Besi</td><td>2-3 mg</td></tr></tbody></table></figure>'),
(33, 'Lunch', 'Sup Ayam', '../uploads/6675ce91a60b34.33880870.jpg', 'Sup Ayam adalah salah satu hidangan sup yang paling klasik dan populer di berbagai belahan dunia, termasuk di Indonesia. Sup ini terkenal karena kesederhanaannya serta khasiatnya yang menghangatkan dan menyehatkan.', '<ul><li>500 gram dada ayam tanpa kulit, dipotong dadu</li><li>1 wortel besar, diiris tipis</li><li>2 batang seledri, diiris tipis</li><li>1 bawang bombay, dicincang halus</li><li>2 siung bawang putih, cincang halus</li><li>1 kentang besar, dipotong dadu</li><li>1 cangkir kacang polong</li><li>1 liter kaldu ayam rendah sodium</li><li>1 sendok teh thyme kering</li><li>1 sendok teh oregano kering</li><li>1 lembar daun salam</li><li>Garam dan merica secukupnya</li><li>2 sendok makan minyak zaitun</li></ul>', '<ul><li>Panaskan minyak zaitun dalam panci besar di atas api sedang.</li><li>Tumis bawang bombay dan bawang putih hingga harum dan bawang bombay menjadi transparan.</li><li>Tambahkan potongan ayam, masak hingga ayam berubah warna.</li><li>Masukkan wortel, seledri, kentang, dan kacang polong. Aduk rata.</li><li>Tambahkan kaldu ayam, thyme, oregano, dan daun salam.</li><li>Didihkan sup, kemudian kecilkan api dan masak dengan api kecil selama 30 menit atau hingga sayuran empuk.</li><li>Panaskan minyak zaitun dalam panci besar di atas api sedang.</li><li>Tumis bawang bombay dan bawang putih hingga harum dan bawang bombay menjadi transparan.</li><li>Tambahkan potongan ayam, masak hingga ayam berubah warna.</li><li>Masukkan wortel, seledri, kentang, dan kacang polong. Aduk rata.</li><li>Tambahkan kaldu ayam, thyme, oregano, dan daun salam.</li><li>Didihkan sup, kemudian kecilkan api dan masak dengan api kecil selama 30 menit atau hingga sayuran empuk.</li></ul>', '<p>&nbsp;</p><figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>75-150 kkal</td></tr><tr><td>Protein</td><td>6-10 g</td></tr><tr><td>Lemak</td><td>3-6 g</td></tr><tr><td>Karbohidrat</td><td>8-12 g</td></tr><tr><td>Serat</td><td>1-2 g</td></tr><tr><td>Vitamin A</td><td>2500-3000 IU&nbsp;</td></tr><tr><td>Vitamin C</td><td>3-5 mg</td></tr><tr><td>Kalsium</td><td>20-30 mg</td></tr></tbody></table></figure>');
INSERT INTO `recipes` (`recipe_id`, `category`, `name`, `image`, `description`, `ingredients`, `instructions`, `nutritions`) VALUES
(34, 'Breakfast', 'Gado-Gado', '../uploads/6675cfd8ef37f7.21272977.jpg', 'Gado-gado adalah salah satu hidangan khas Indonesia yang terkenal sebagai salad yang disiram dengan saus kacang yang gurih. Hidangan ini adalah perpaduan berbagai jenis sayuran segar dan rebus, tahu, tempe, serta tambahan protein lainnya, sehingga menjadi', '<ul><li>200 gram kacang panjang</li><li>200 gram tauge</li><li>200 gram kubis</li><li>200 gram kentang</li><li>200 gram tahu</li><li>200 gram tempe</li><li>2 butir telur rebus</li><li>1 buah ketimun, iris</li><li>1 buah tomat, iris</li><li>Bawang goreng untuk taburan</li><li>Bahan Saus Kacang:</li><li>200 gram kacang tanah, goreng</li><li>3 siung bawang putih</li><li>5 buah cabai merah (sesuai selera)</li><li>2 sendok makan gula merah</li><li>1 sendok teh garam</li><li>2 sendok makan air asam jawa</li><li>200 ml air matangRebus kacang panjang, tauge, kubis, dan kentang hingga matang. Tiriskan.</li><li>Potong tahu dan tempe, lalu goreng hingga matang. Tiriskan.</li><li>Haluskan kacang tanah, bawang putih, cabai merah, gula merah, dan garam.</li><li>Tambahkan air asam jawa dan air matang, aduk hingga rata dan mencapai konsistensi yang diinginkan.</li><li>Tata sayuran, tahu, tempe, dan irisan telur di atas piring.</li><li>Siram dengan saus kacang.</li><li>Tambahkan irisan ketimun, tomat, dan taburan bawang goreng di atasnya.</li></ul>', '<ol><li>Rebus kacang panjang, tauge, kubis, dan kentang hingga matang. Tiriskan.</li><li>Potong tahu dan tempe, lalu goreng hingga matang. Tiriskan.</li><li>Haluskan kacang tanah, bawang putih, cabai merah, gula merah, dan garam.</li><li>Tambahkan air asam jawa dan air matang, aduk hingga rata dan mencapai konsistensi yang diinginkan.</li><li>Tata sayuran, tahu, tempe, dan irisan telur di atas piring.</li><li>Siram dengan saus kacang.</li><li>Tambahkan irisan ketimun, tomat, dan taburan bawang goreng di atasnya.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>350-400 kkal</td></tr><tr><td>Protein</td><td>15-20 g</td></tr><tr><td>Lemak</td><td>20-25 g</td></tr><tr><td>Karbohidrat</td><td>35-40 g</td></tr><tr><td>Serat</td><td>8-10&nbsp;g</td></tr></tbody></table></figure>'),
(35, 'Lunch', 'Rendang ', '../uploads/6675d0cc6471d8.87244669.jpg', 'Rendang adalah salah satu hidangan paling terkenal dari Indonesia, khususnya berasal dari daerah Minangkabau di Sumatera Barat. Hidangan ini dikenal luas baik di dalam negeri maupun di mancanegara karena rasa dan teksturnya yang khas. Rendang adalah masak', '<ul><li>1 kg daging sapi, potong sesuai selera</li><li>1 liter santan kental</li><li>4 lembar daun jeruk</li><li>2 batang serai, memarkan</li><li><p>3 cm lengkuas, memarkan</p><p>Bumbu Halus:</p></li><li>10 siung bawang merah</li><li>5 siung bawang putih</li><li>5 buah cabai merah besar</li><li>3 cm jahe</li><li>3 cm kunyit</li><li>2 sdt ketumbar</li><li>1 sdt jintan</li><li>1 sdt merica</li><li>Garam secukupnya</li></ul>', '<ol><li>Tumis bumbu halus bersama daun jeruk, serai, dan lengkuas hingga harum.</li><li>Masukkan daging sapi, aduk hingga berubah warna.</li><li>Tuang santan, masak dengan api kecil hingga daging empuk dan bumbu meresap.</li><li>Aduk sesekali agar santan tidak pecah.</li><li>Masak hingga kuah menyusut dan mengental, angkat dan sajikan.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>400-450 kkal</td></tr><tr><td>Protein</td><td>30-35 g</td></tr><tr><td>Lemak</td><td>30-35 g</td></tr><tr><td>Karbohidrat</td><td>10-15 g</td></tr><tr><td>Serat</td><td>2-3 g</td></tr></tbody></table></figure>'),
(36, 'Dinner', 'Nasi Goreng', '../uploads/6675d262d3d4e8.06365838.jpg', 'Nasi goreng adalah salah satu hidangan paling ikonik dari Indonesia, dikenal dan dicintai oleh banyak orang baik di dalam maupun di luar negeri. Hidangan ini terkenal karena rasa yang kaya dan cara penyajiannya yang praktis. Nasi goreng bisa disesuaikan d', '<ul><li>2 piring nasi putih</li><li>2 butir telur</li><li>2 siung bawang putih, cincang halus</li><li>3 siung bawang merah, iris tipis</li><li>2 buah cabai merah, iris serong</li><li>2 sdm kecap manis</li><li>1 sdm saus tiram</li><li>Garam dan merica secukupnya</li><li>2 sdm minyak goreng</li><li>Kerupuk dan irisan mentimun untuk pelengkap</li></ul>', '<ul><li>Panaskan minyak di wajan, tumis bawang putih dan bawang merah hingga harum.</li><li>Masukkan cabai merah, tumis sebentar.</li><li>Tambahkan telur, orak-arik hingga matang.</li><li>Masukkan nasi putih, aduk rata.</li><li>Tambahkan kecap manis, saus tiram, garam, dan merica. Aduk rata hingga nasi berubah warna.</li><li>Angkat dan sajikan nasi goreng dengan kerupuk dan irisan mentimun.</li></ul>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>400-500 kkal</td></tr><tr><td>Protein</td><td>12-15 g</td></tr></tbody></table></figure>'),
(37, 'Dinner', 'Opor Ayam', '../uploads/6675d5d5987848.39438602.jpg', 'Opor Ayam adalah salah satu hidangan tradisional Indonesia yang sangat populer, terutama saat perayaan hari besar seperti Idul Fitri. Hidangan ini terkenal dengan kuah santannya yang kaya rasa dan daging ayam yang empuk. Opor Ayam berasal dari Jawa Tengah', '<ul><li>1 ekor ayam utuh, potong 8 bagian, buang kulitnya</li><li>1 l santan encer</li><li>200 ml santan kental</li><li>300 ml susu rendah lemak</li><li>4 buah daun jeruk purut segar biarkan utuh</li><li>1 g daun kunyit (kira-kira 1 lembar)</li><li>1 gram (kira-kira seruas ibu jari) lengkuas, memarkan</li><li>1 batang serai memarkan</li><li>1 sdm Royco kaldu ayam</li><li>2 sdm bawang goreng</li><li>3 buah bawang merah</li><li>6 siung bawang putih</li><li>1 gram kencur (kira-kira seruas jari), memarkan</li><li>1 sdt merica putih bubuk</li><li>1 sdt ketumbar butiran</li><li>5 buah kemiri, sangrai</li><li>2 sdt garam</li><li>1 sdt gula pasir</li></ul>', '<ul><li>Aduk rata daging ayam dengan bumbu halus, lalu biarkan selama sekitar 15 menit hingga bumbu meresap.</li><li>Rebus santan encer dan susu rendah lemak, masukkan Royco Kaldu Ayam dan semua bahan kecuali santan kental. Masak di atas api kecil sambil sesekali diaduk agar santan tidak pecah.</li><li>Masukkan santan kental, aduk perlahan hingga ayam empuk. Angkat.</li><li>Sajikan dengan taburan bawang merah goreng.</li></ul>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Energy</td><td>848,7 kkal</td></tr><tr><td>Lemak</td><td>73,85 g</td></tr><tr><td>Serat</td><td>0,89 g</td></tr><tr><td>Protein</td><td>37,61 g</td></tr><tr><td>Lemak Jenuh</td><td>47,18 g</td></tr><tr><td>Sodium</td><td>963,39</td></tr><tr><td>Gula</td><td>6,94&nbsp;g</td></tr></tbody></table></figure>'),
(38, 'Breakfast', 'Ketoprak', '../uploads/667694a69bbc10.87701419.jpg', 'Ketoprak adalah salah satu jenis makanan khas Indonesia yang terdiri dari berbagai bahan seperti tahu, bihun, tauge, ketupat, dan dibumbui dengan saus kacang kental yang gurih. Makanan ini biasanya disajikan dengan irisan mentimun dan emping sebagai pelen', '<ul><li>5 buah tahu putih ukuran 6 x 6 x 2cm 50 gr bihun, rendam air dingin sampai lunak, tiriskan</li><li>250 gr taoge, siangi, cuci bersih, seduh dengan air panas, angkat</li><li>4 buah ketupat</li></ul><p>&nbsp;</p><p>Saus Kacang Ketoprak:</p><ul><li>250 gr kacang tanah, goreng, haluskan</li><li>6 siung bawang putih</li><li>5 buah cabai rawit merah, goreng sebentar</li><li>100 ml air hangat</li><li>1 sdt garam Kecap manis Bango, secukupnya</li></ul>', '<ol><li>Goreng tahu hingga setengah matang, angkat, kemudian tiriskan. Potong- potong menurut selera.</li><li>Saus: haluskan bawang putih, cabai rawit dan garam. Tambahkan kacang, air, dan kecap manis Bango, kemudian haluskan. Aduk rata, sisihkan.</li><li>Ambil piring. Susun ketupat, bihun, taoge, dan tahu. Tuang saus kacang, kemudian beri kecap manis Bango. Taburkan bawang goreng, irisan seledri dan kerupuk merah.&nbsp;</li><li>Sajikan.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>400-500 kkal</td></tr><tr><td>Protein</td><td>12-15 g</td></tr><tr><td>Lemak</td><td>20-25 g</td></tr><tr><td>Karbohidrat</td><td>45-60 g</td></tr><tr><td>Serat</td><td>5-7 g</td></tr><tr><td>Vitamin A</td><td>100-200 IU</td></tr><tr><td>Vitamin C</td><td>10-15 mg</td></tr><tr><td>Kalsium</td><td>100-150 mg</td></tr><tr><td>Zat Besi</td><td>2-3 mg</td></tr><tr><td>Natrium</td><td>600-800 mg</td></tr></tbody></table></figure>'),
(39, 'Dinner', 'Semur Jengkol Pedas ', '../uploads/667694c9101192.86290797.jpg', 'ChatGPT\r\nSemur jengkol pedas adalah hidangan khas Indonesia yang terbuat dari jengkol, sejenis kacang-kacangan yang memiliki aroma khas. Jengkol direbus terlebih dahulu untuk menghilangkan rasa dan baunya yang kuat, kemudian dimasak dengan bumbu-bumbu s', '<ul><li>500 gram jengkol, direndam dalam air dingin 3 hari (ganti airnya setiap hari), rebus didalam air panas 15 menit, tiriskan, memarkan</li><li>6 butir bawang merah, diiris halus</li><li>2 cm lengkuas, dimemarkan</li><li>4 lembar daun salam</li><li>3 batang serai, dimemarkan</li><li>10 sendok makan Kecap Manis Bango</li><li>1/2 sendok teh garam</li><li>1/4 sendok teh lada putih bubuk</li><li>2 sendok teh pala bubuk</li><li>800 ml air</li><li>2 sendok makan Minyak goreng untuk menumis</li></ul><p>&nbsp;</p><p>Bumbu Halus</p><ul><li>6 butir bawang</li><li>3 siung bawang putih</li><li>5 buah cabe keriting merah</li></ul>', '<ol><li>Tumis bumbu halus bersama bawang merah iris, lengkuas, daun salam, dan serai sampai harum.</li><li>Masukkan jengkol. Aduk rata.</li><li>Tambahkan Kecap Manis Bango, garam, lada putih bubuk, dan pala bubuk. Aduk sampai jengkol terbalut kecap.</li><li>Tuang air sedikit demi sedikit. Biarkan sampai&nbsp;mengering.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>250-300 kkal</td></tr><tr><td>Protein</td><td>12-15 g</td></tr><tr><td>Karbohidrat</td><td>30-35 g</td></tr><tr><td>Serat</td><td>8-10 g</td></tr><tr><td>Vitamin A</td><td>200-300 IU</td></tr><tr><td>Vitamin C</td><td>10-15 mg</td></tr><tr><td>Kalsium</td><td>50-60 mg</td></tr><tr><td>Zat Besi</td><td>1,5-2 mg</td></tr><tr><td>Natrium</td><td>600-800 mg</td></tr></tbody></table></figure>'),
(40, 'Breakfast', 'Bubur Ayam ', '../uploads/667694efcd7843.48569461.jpg', 'Bubur ayam adalah salah satu jenis bubur khas Indonesia yang terbuat dari bubur nasi yang dimasak hingga lembut, kemudian disajikan dengan potongan daging ayam, irisan daun bawang, bawang goreng, kerupuk, serta tambahan bahan lain seperti telur rebus, kac', '<ul><li>Beras - 75 gram</li><li>Air - 900 ml</li><li>Jahe - 1/2 cm</li><li>Serai, memarkan - 1 batang</li><li>Kaldu ayam bubuk - 1/4 sdt</li><li>Garam - 1/4 sdt</li></ul><p>KUAH:</p><ul><li>Ayam - 1/2 ekor</li><li>Air kaldu - 400 ml</li><li>Lengkuas, memarkan - 1 cm</li><li>Serai, memarkan - 1 batang</li><li>Daun salam - 2 lembar</li><li>Daun jeruk - 2 lembar</li><li>Garam - 1/4 sdt</li><li>Merica - 1/8 sdt</li><li>BUMBU HALUS:</li><li>Bawang putih - 2 siung</li><li>Bawang merah - 5 butir</li><li>Kemiri - 2 butir</li><li>Kunyit - 1 cm</li><li>Jahe - 1/2 cm</li><li>Ketumbar - 1/4 sdt</li></ul><p>PELENGKAP:</p><ul><li>Telur rebus - secukupnya</li><li>Seledri cincang - secukupnya</li><li>Kacang kedelai goreng - secukupnya</li><li>Bawang merah goreng - secukupnya</li><li>Kerupuk – secukupnya</li></ul>', '<ol><li>Dalam panci, masukkan semua bahan bubur. Aduk terus dan masak hingga mengental. Angkat. Sisihkan.</li><li>Rebus ayam dan ambil air kaldunya sebanyak 400 ml. Sisihkan. Tiriskan ayamnya.</li><li>Goreng ayam sebentar saja. Tiriskan lalu suwir-suwir. Sisihkan.</li><li>Kuah: Dalam panci, tumis bumbu halus hingga wangi. Tuang air kaldu, lengkuas, serai, daun salam, daun jeruk, garam, dan merica. Masak hingga sedikit kental sesuai selera. Koreksi rasanya. Angkat.</li><li>Penyelesaian: Tata bubur di mangkok saji. Beri ayam suwir, kacang kedelai goreng, telur rebus, seledri, dan bawang merah goreng. Tuang kuah sesuai selera. Beri pelengkap kerupuk.</li><li>Siap Disajikan</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Lemak</td><td>12,39 gr</td></tr><tr><td>Energi</td><td>135 gr</td></tr><tr><td>Lemak Jenuh</td><td>3,352 gr</td></tr><tr><td>Sodium</td><td>584 mg</td></tr><tr><td>Karbohidrat</td><td>36,12 gr</td></tr><tr><td>Serat Makanan</td><td>1,9 gr</td></tr><tr><td>Gula</td><td>0,19 gr</td></tr><tr><td>Protein</td><td>2,25 g</td></tr><tr><td>Vitamin C</td><td>0,001 mg</td></tr><tr><td>Kalsium</td><td>18,75 mg</td></tr><tr><td>Kalium</td><td>405,82 mg</td></tr></tbody></table></figure><p>&nbsp;</p>'),
(41, 'Breakfast', 'Bubur Ketan Hitam ', '../uploads/6676950885f060.46566565.jpg', 'ChatGPT\r\nBubur ketan hitam adalah hidangan bubur khas Indonesia yang terbuat dari ketan hitam, jenis beras ketan yang berwarna gelap atau hitam. Bubur ini memiliki tekstur lembut dan kental, dengan cita rasa manis yang khas. Proses memasak bubur ketan h', '<ul><li>200 gram beras ketan hitam, cuci besih dan rendam minimal 3 jam, tiriskan&nbsp;</li><li>1 liter air&nbsp;</li><li>350 gram gula pasir&nbsp;</li><li>3 lembar daun pandan simpulkan&nbsp;</li><li>Saus santan 200 ml santan kental&nbsp;</li><li>½ sendok teh garam&nbsp;</li><li>2 lembar daun pandan simpulkan&nbsp;</li><li>1 sendok teh tepung maizena</li><li>larutkan dengan sedikit air</li></ul>', '<ol><li>Masak air, beras ketan, dan daun pandan dalam api sedang sambil sesekali diaduk selama 60 menit hingga ketan menjadi lembut dan mengental.&nbsp;</li><li>Masukkan gula pasir, masak kembali hingga gula larut dan matang. Angkat&nbsp;</li><li>Untuk membuat saus santan, rebus santan, daun pandan, dan garam sambil diaduk-aduk hingga mendidih. Jangan sampai santan pecah.&nbsp;</li><li>Tuangkan larutan tepung maizena, masak kembali hingga mengental. Angkat.&nbsp;</li><li>Siapkan mangkuk saji, tuang bubur ketan hitam. Beri saus santan di atasnya. Bubur ketan hitam pun siap disantap.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>200-250 kkal</td></tr><tr><td>Protein</td><td>4-5 g</td></tr><tr><td>Lemak</td><td>5-7 g</td></tr><tr><td>Karbohidrat</td><td>40-50 g</td></tr><tr><td>Serat</td><td>2-3 g</td></tr><tr><td>Vitamin A</td><td>0,001 IU</td></tr><tr><td>Vitamin C</td><td>0,001 mg</td></tr><tr><td>Kalsium</td><td>20-30 mg</td></tr><tr><td>Zat Besi</td><td>2-3 mg</td></tr><tr><td>Natrium</td><td>100-150 mg</td></tr></tbody></table></figure>'),
(42, 'Dinner', 'Sate Ayam ', '../uploads/6676952b668645.84701788.jpg', 'Sate ayam adalah hidangan populer di Indonesia dan juga dikenal luas di seluruh Asia Tenggara. Hidangan ini terdiri dari potongan daging ayam yang ditusuk dengan tusukan bambu atau sate, kemudian dipanggang atau dibakar dengan arang atau grill hingga mata', '<ul><li>500 gram dada ayam,, bersihkan lalu potong tipis memanjang</li><li>Tusukan sate</li></ul><p>Bumbu Marinasi (haluskan):</p><ul><li>5 butir bawang merah</li><li>2 siung bawang putih</li><li>1 sdt ketumbar</li><li>2 butir kemiri</li><li>1 sdm kecap manis</li><li>2 sdm saus tiram</li><li>1 sdm air jeruk lemon</li><li>1/4 keping gula merah</li></ul><p>Bumbu oles:</p><ul><li>4 sdm Kecap manis</li><li>1 sdm saus tiram</li><li>1 sdm margarin</li></ul><p>Bumbu Kacang</p><ul><li>3 siung bawang putih, iris tipis lalu goreng, angkat dan haluskan.</li><li>5 buah cabai keriting, haluskan</li><li>150 gram kacang tanah, goreng dan haluskan</li><li>200 ml santan encer</li><li>Secukupnya gula, garam, kecap manis</li><li>Secukupnya minyak untuk menumis</li></ul>', '<p>Cara Membuat Sate Ayam:</p><ol><li>Marinasi daging ayam dengan bumbu marinasi semalaman. Setelah itu, tusuk daging ayam dengan tusukan sate.</li><li>Olesi sate dengan bumbu oles, dan bakar diatas alat pemanggang. Bolak-balik sate dengan terus diolesi bumbu oles, dan bakar hingga matang.</li><li>Angkat dan sajikan dengan siraman bumbu kacang dan sambal kecap, serta beri taburan bawang goreng dan perasan jeruk limo.</li></ol><p>Cara Membuat Bumbu Kacang:</p><ol><li>Iris tipis bawang putih, lalu goreng sebentar, angkat dan haluskan.</li><li>Panaskan sedikit minyak, lalu tumis bawang putih dan cabai keriting yang telah dihaluskan hingga harum.</li><li>Tambahkan kacang tanah halus dan santan. Aduk hingga rata, tambahkan gula, garam dan kecap lalu masak hingga mendidih dan bumbu kacang mengental.</li><li>Angkat dan sisihkan.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Lemak</td><td>12,39 gr</td></tr><tr><td>Lemak Jenuh</td><td>3,352 gr</td></tr><tr><td>Sodium</td><td>584 mg</td></tr><tr><td>Karbohidrat</td><td>36,12 gr</td></tr><tr><td>Serat Makanan</td><td>1,9 gr</td></tr><tr><td>Gula</td><td>0,19 gr</td></tr><tr><td>Protein</td><td>27,56 gr</td></tr><tr><td>Kalium</td><td>405,82 mg</td></tr><tr><td>Kolestrol</td><td>72 mg</td></tr></tbody></table></figure><p>&nbsp;</p>'),
(43, 'Beverages', 'Es Jeruk Nipis', '../uploads/667800ca5a9532.24070952.png', 'Es Jeruk Nipis adalah minuman segar yang terbuat dari campuran air jeruk nipis, gula, dan es batu. Minuman ini memiliki rasa asam-manis yang menyegarkan, cocok diminum saat cuaca panas.', '<ul><li>4-5 buah jeruk nipis</li><li>500 ml air dingin atau air soda</li><li>4-5 sendok makan gula pasir (sesuai selera)</li><li>Es batu secukupnya</li><li>Daun mint untuk hiasan (opsional)</li></ul>', '<ol><li>Peras Jeruk Nipis:<ul><li>Potong jeruk nipis menjadi dua bagian.</li><li>Peras jeruk nipis untuk mendapatkan sarinya. Anda bisa menggunakan alat peras jeruk atau memerasnya dengan tangan. Pastikan tidak ada biji yang ikut tercampur.</li></ul></li><li>Siapkan Sirup Gula:<ul><li>Jika menggunakan gula pasir, buat sirup gula dengan cara melarutkan gula dalam sedikit air panas. Aduk hingga gula benar-benar larut.</li><li>Jika Anda lebih suka, bisa langsung mencampur gula pasir dengan air jeruk nipis dan air dingin, tetapi pastikan untuk mengaduknya hingga gula benar-benar larut.</li></ul></li><li>Campurkan Bahan:<ul><li>Dalam sebuah pitcher atau wadah besar, campurkan air jeruk nipis, sirup gula (atau gula pasir), dan air dingin atau air soda. Aduk rata.</li><li>Cicipi campuran ini dan tambahkan gula atau air sesuai selera.</li></ul></li><li>Tambahkan Es Batu:<ul><li>Masukkan es batu ke dalam gelas saji.</li><li>Tuang campuran jeruk nipis ke dalam gelas yang berisi es batu.</li></ul></li><li>Hias dan Sajikan:<ul><li>Jika suka, tambahkan daun mint sebagai hiasan di atasnya.</li><li>Es jeruk nipis siap disajikan!</li></ul></li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>Kalori: 50 kkal</td></tr><tr><td>Karbohidrat</td><td>13 g</td></tr><tr><td>Gula</td><td>12 g</td></tr><tr><td>Serat</td><td>1 g</td></tr><tr><td>Protein</td><td>0,001 g</td></tr><tr><td>Lemak</td><td>0,001 g</td></tr><tr><td>Vitamin C</td><td>25% AKG</td></tr></tbody></table></figure>'),
(44, 'Beverages', 'Es Kopi Susu', '../uploads/667801c1d550e0.86668558.png', 'Es Kopi Susu adalah minuman kopi dingin yang dicampur dengan susu dan es batu. Kadang-kadang ditambahkan gula atau sirup karamel untuk memberikan rasa manis. Minuman ini populer di kalangan pecinta kopi yang mencari kesegaran.', '<ul><li>2 sendok makan kopi bubuk (atau 1 shot espresso jika menggunakan mesin espresso)</li><li>200 ml air panas</li><li>200 ml susu cair (bisa susu segar, susu UHT, atau susu almond)</li><li>2-3 sendok makan gula pasir atau sesuai selera (bisa diganti dengan sirup gula atau pemanis lainnya)</li><li>Es batu secukupnya</li></ul>', '<ol><li>Seduh Kopi:<ul><li>Seduh kopi bubuk dengan 200 ml air panas. Biarkan kopi terendam selama beberapa menit, kemudian saring untuk mendapatkan kopi yang siap diminum.</li><li>Jika menggunakan mesin espresso, buat satu shot espresso.</li></ul></li><li>Siapkan Sirup Gula (Opsional):<ul><li>Jika menggunakan gula pasir, larutkan gula dalam sedikit air panas untuk membuat sirup gula. Aduk hingga gula benar-benar larut. Ini akan memudahkan gula untuk tercampur rata dalam minuman dingin.</li></ul></li><li>Campurkan Bahan:<ul><li>Dalam sebuah gelas tinggi, tuangkan kopi yang sudah diseduh.</li><li>Tambahkan sirup gula atau gula pasir sesuai selera. Aduk hingga gula larut.</li><li>Tambahkan es batu secukupnya ke dalam gelas.</li></ul></li><li>Tambahkan Susu:<ul><li>Tuangkan susu cair ke dalam gelas yang sudah berisi kopi dan es batu. Aduk perlahan hingga semua bahan tercampur rata.</li></ul></li><li>Hias dan Sajikan:<ul><li>Jika suka, Anda bisa menambahkan sedikit bubuk cokelat atau bubuk kayu manis di atasnya sebagai hiasan.</li><li>Es kopi susu siap disajikan!</li></ul></li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>150 kkal</td></tr><tr><td>Karbohidrat</td><td>23 g</td></tr><tr><td>Gula</td><td>21 g</td></tr><tr><td>Protein</td><td>3 g</td></tr><tr><td>Lemak</td><td>5 g</td></tr><tr><td>Kalsium</td><td>10% AKG</td></tr></tbody></table></figure>'),
(45, 'Beverages', 'Es Tape Ketan', '../uploads/6678036eada580.90460235.png', 'Es Tape Ketan adalah minuman yang terbuat dari tape (fermentasi beras ketan) yang dicampur dengan es serut, gula, dan susu kental manis. Minuman ini memiliki rasa manis dan sedikit alkoholik dari fermentasi tape.', '<ul><li>4 sdm tape ketan hitam</li><li>50 gram es batu</li><li>1 sdt bubuk taro</li><li>1 sdt gula pasir</li><li><p>50 ml air matang</p><p><strong>Bahan santan :</strong></p></li><li>250 gram kelapa parut</li><li><p>150 ml air matang</p><p><strong>Bahan pelengkap :</strong></p></li><li>4 lembar daun mint</li></ul>', '<p><strong>Langkah 1</strong></p><p>Untuk membuat santan, rendam kelapa parut dengan air matang, remas-remas.</p><figure class=\"image\"><img style=\"aspect-ratio:220/220;\" src=\"https://cdn.yummy.co.id/content-images/images/20200804/060zv7rGY4MGu3TWjb6cQv6huY3cYNaJ-31353936353136313936d41d8cd98f00b204e9800998ecf8427e.jpg?x-oss-process=image/resize,w_220,h_220,m_fixed,image/format,webp\" alt=\"Peras kelapa di atas saringan. Gunakan air perasan pertama.\" width=\"220\" height=\"220\"></figure><p><strong>Langkah 2</strong></p><p>Peras kelapa di atas saringan. Gunakan air perasan pertama.</p><figure class=\"image\"><img style=\"aspect-ratio:220/220;\" src=\"https://cdn.yummy.co.id/content-images/images/20200804/2zsB00D3PTDVgUIAX2SGCDwFYFgBU5SY-31353936353136313936d41d8cd98f00b204e9800998ecf8427e.jpg?x-oss-process=image/resize,w_220,h_220,m_fixed,image/format,webp\" alt=\"Rebus santan hingga mendidih, sisihkan.\" width=\"220\" height=\"220\"></figure><p><strong>Langkah 3</strong></p><p>Rebus santan hingga mendidih, sisihkan.</p><figure class=\"image\"><img style=\"aspect-ratio:220/220;\" src=\"https://cdn.yummy.co.id/content-images/images/20200804/iLoAjMdFJHp5MAfyA2sjyuNuVlSaviNf-31353936353136313936d41d8cd98f00b204e9800998ecf8427e.jpg?x-oss-process=image/resize,w_220,h_220,m_fixed,image/format,webp\" alt=\"Larutkan bubuk taro dengan air.\" width=\"220\" height=\"220\"></figure><p><strong>Langkah 4</strong></p><p>Larutkan bubuk taro dengan air.</p><figure class=\"image\"><img style=\"aspect-ratio:220/220;\" src=\"https://cdn.yummy.co.id/content-images/images/20200804/9o0oGViAj1RzQuXK7cHyPehKMuaq1knn-31353936353136313936d41d8cd98f00b204e9800998ecf8427e.jpg?x-oss-process=image/resize,w_220,h_220,m_fixed,image/format,webp\" alt=\"Siapkan es batu, lalu masukkan tape ketan.\" width=\"220\" height=\"220\"></figure><p><strong>Langkah 5</strong></p><p>Siapkan es batu, lalu masukkan tape ketan.</p><figure class=\"image\"><img style=\"aspect-ratio:220/220;\" src=\"https://cdn.yummy.co.id/content-images/images/20200804/P9KPrIOUPQMwfUFs1k7hBr7bXTs5Kd9d-31353936353136313936d41d8cd98f00b204e9800998ecf8427e.jpg?x-oss-process=image/resize,w_220,h_220,m_fixed,image/format,webp\" alt=\"Tuangkan larutan taro, lalu tuang santan secara perlahan. Tambahkan daun mint di atasnya.\" width=\"220\" height=\"220\"></figure><p><strong>Langkah 6</strong></p><p>Tuangkan larutan taro, lalu tuang santan secara perlahan. Tambahkan daun mint di atasnya.</p>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>200 kkal</td></tr><tr><td>Karbohidrat</td><td>45 g</td></tr><tr><td>Gula</td><td>30 g&nbsp;</td></tr><tr><td>Protein</td><td>2 g</td></tr><tr><td>Lemak</td><td>3 g</td></tr><tr><td>Serat</td><td>1 g</td></tr></tbody></table></figure>'),
(46, 'Beverages', 'Es Campur', '../uploads/667804a4d63057.33338668.png', 'Es Campur adalah dessert khas Indonesia yang terdiri dari campuran berbagai bahan seperti kelapa muda, cincau, kolang-kaling, buah-buahan, dan sirup manis, disajikan dengan es serut. Setiap daerah di Indonesia mungkin memiliki variasi sendiri.', '<ul><li>50 gram cincau hitam</li><li>50 gram roti tawar</li><li>50 gram alpukat</li><li>50 gram nata de coco</li><li>50 gram kolang-kaling</li><li>50 gr setup nanas</li><li>50 gr buah semangka</li><li>50 ml kental manis putih</li><li>100 ml air panas</li><li>3 sdm gula pasir</li><li>sirup cocopandan secukupnya</li><li>es batu secukupnya</li><li>air dingin secukupnya</li></ul>', '<ol><li>Potong dadu bahan-bahan yang bisa dipotong. Campurkan semua bahan ke dalam mangkuk.</li><li>Larutkan gula ke dalam air panas, tuang ke dalam mangkuk isian.</li><li>Tuang cocopandan dan kental manis secukupnya. Masukkan es batu dan air secukupnya. Aduk rata.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>250 kkal</td></tr><tr><td>Karbohidrat</td><td>55 g</td></tr><tr><td>Gula</td><td>40 g</td></tr><tr><td>Protein</td><td>3 g</td></tr><tr><td>Lemak</td><td>4 g</td></tr><tr><td>Serat</td><td>2 g</td></tr></tbody></table></figure>'),
(47, 'Beverages', 'Jus Sirsak', '../uploads/667805714b70c5.84660750.png', 'Jus Sirsak adalah minuman yang terbuat dari buah sirsak yang dihaluskan dan dicampur dengan air dan gula. Jus ini memiliki rasa yang manis dan sedikit asam serta dikenal memiliki banyak manfaat kesehatan.', '<ul><li>1 buah sirsak matang (kurang lebih 500 gram daging buah)</li><li>2-3 sendok makan gula pasir atau madu (sesuai selera)</li><li>200 ml air dingin</li><li>Es batu secukupnya</li><li>1-2 sendok makan air jeruk nipis (opsional, untuk menambah kesegaran)</li></ul>', '<ol><li>Siapkan Sirsak:<ul><li>Kupas buah sirsak dan buang bijinya. Ambil daging buahnya.</li></ul></li><li>Blender Sirsak:<ul><li>Masukkan daging buah sirsak ke dalam blender.</li><li>Tambahkan gula pasir atau madu sesuai selera.</li><li>Tuangkan air dingin ke dalam blender.</li></ul></li><li>Tambahkan Air Jeruk Nipis (Opsional):<ul><li>Jika suka, tambahkan 1-2 sendok makan air jeruk nipis untuk memberikan rasa segar tambahan pada jus.</li></ul></li><li>Blender Hingga Halus:<ul><li>Blender semua bahan hingga halus dan tercampur rata.</li></ul></li><li>Saring Jus (Opsional):<ul><li>Jika Anda ingin jus yang lebih halus, saring jus sirsak menggunakan saringan untuk memisahkan serat-serat kasar.</li></ul></li><li>Tambahkan Es Batu:<ul><li>Masukkan es batu ke dalam gelas saji.</li><li>Tuang jus sirsak ke dalam gelas yang berisi es batu.</li></ul></li><li>Hias dan Sajikan:<ul><li>Jika suka, tambahkan daun mint atau irisan jeruk nipis sebagai hiasan.</li><li>Jus sirsak siap disajikan!</li></ul></li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori&nbsp;</td><td>150 kkal</td></tr><tr><td>Karbohidrat</td><td>36 g</td></tr><tr><td>Gula</td><td>30 g</td></tr><tr><td>Serat</td><td>3 g</td></tr><tr><td>Protein</td><td>2 g</td></tr><tr><td>Lemak</td><td>1 g</td></tr><tr><td>Vitamin C</td><td>70% AKG</td></tr></tbody></table></figure>'),
(48, 'Dinner', 'Iga Bakar', '../uploads/66780627d77269.99855570.png', 'Iga Bakar adalah hidangan yang terdiri dari tulang iga sapi yang dibakar dengan bumbu khas. Daging iga dimarinasi dengan bumbu seperti kecap manis, bawang putih, dan rempah-rempah sebelum dibakar hingga matang sempurna.', '<ul><li>1 kg iga sapi</li><li>4 sendok makan kecap manis</li><li>2 sendok makan saus tiram</li><li>2 sendok makan saus tomat</li><li>2 sendok makan minyak goreng</li><li>2 sendok makan air jeruk nipis</li><li>Garam secukupnya</li><li>Merica secukupnya</li><li>500 ml air untuk merebus</li></ul><p><strong>Bumbu Halus:</strong></p><ul><li>5 siung bawang putih</li><li>6 butir bawang merah</li><li>2 cm jahe</li><li>2 cm lengkuas</li><li>1 sendok teh ketumbar</li><li>1 sendok teh jintan (opsional)</li><li>2 buah cabai merah besar (opsional, untuk rasa pedas)</li></ul>', '<ol><li>Rebus Iga:<ul><li>Rebus iga sapi dalam air mendidih selama sekitar 30 menit hingga empuk. Anda bisa menambahkan sedikit garam ke dalam air rebusan.</li><li>Angkat iga dan tiriskan.</li></ul></li><li>Tumis Bumbu Halus:<ul><li>Haluskan semua bumbu halus dengan blender atau ulekan.</li><li>Panaskan minyak dalam wajan, tumis bumbu halus hingga harum dan matang.</li></ul></li><li>Marinasi Iga:<ul><li>Campurkan bumbu halus yang telah ditumis dengan kecap manis, saus tiram, saus tomat, air jeruk nipis, garam, dan merica. Aduk rata.</li><li>Balurkan bumbu marinasi ke seluruh permukaan iga yang telah direbus. Diamkan selama minimal 1 jam agar bumbu meresap. Jika bisa, diamkan semalaman di dalam kulkas.</li></ul></li><li>Panggang Iga:<ul><li>Panaskan panggangan atau grill. Anda juga bisa menggunakan oven dengan suhu 180°C.</li><li>Panggang iga selama sekitar 15-20 menit di setiap sisi, atau hingga iga berwarna kecokelatan dan agak karamelisasi. Olesi iga dengan sisa bumbu marinasi selama proses pemanggangan untuk rasa yang lebih kaya.</li></ul></li><li>Sajikan:<ul><li>Angkat iga bakar dan sajikan panas-panas dengan nasi putih atau kentang goreng. Anda juga bisa menambahkan lalapan seperti timun dan tomat, serta sambal untuk pelengkap.</li></ul></li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>400 kkal</td></tr><tr><td>Karbohidrat</td><td>10 g</td></tr><tr><td>Protein</td><td>30 g</td></tr><tr><td>Lemak</td><td>28 g</td></tr><tr><td>Serat</td><td>1 g</td></tr></tbody></table></figure>'),
(49, 'Dinner', 'Pecel', '../uploads/6678070d5d15c6.72985403.png', 'Pecel adalah hidangan sayuran yang disajikan dengan bumbu kacang. Sayuran yang biasa digunakan antara lain kacang panjang, tauge, bayam, dan daun singkong. Pecel sering disajikan dengan lontong atau nasi.', '<p><strong>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;Bahan Sayur :</strong></p><ul><li>250 gram kacang tanah goreng</li><li>100 gram gula jawa</li><li>sejumput garam</li><li>3 lembar daun jeruk</li><li>3 biji asam jawa</li><li>4 siung bawang putih</li><li>1 ruas kencur</li><li>7 buah cabai rawit</li><li><p>5 buah cabai merah besar</p><p><strong>Bahan Sayur :</strong></p></li><li>100 gram kecambah, direbus sebentar</li><li>2 buah mentimun, kupas dan potong-potong</li><li>1 genggam daun kemangi</li><li>1 ikat kacang panjang, rebus dan potong-potong</li><li>1 ikat bayam, rebus</li><li><p>1 ikat kangkung, rebus</p><p><strong>Bahan Pelengkap :</strong></p></li><li>tempe goreng</li><li>tahu goreng</li><li>rempeyek kacang&nbsp;</li></ul>', '<ol><li>Untuk membuat bumbu pecel, campur dan ulek semua bahan. Tambahkan air secukupnya, aduk rata.</li><li>Siapkan piring. Tata semua bahan sayur.</li><li>Siram sayur dengan bumbu kacang.</li><li>Sajikan dengan bahan pelengkap.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>350 kkal</td></tr><tr><td>Karbohidrat</td><td>60 g</td></tr><tr><td>Protein</td><td>15 g</td></tr><tr><td>Lemak</td><td>10 g</td></tr><tr><td>Serat</td><td>5 g</td></tr><tr><td>Vitamin A</td><td>30% AKG</td></tr><tr><td>VItamin C</td><td>20% AKG</td></tr></tbody></table></figure>'),
(50, 'Lunch', 'Tongseng', '../uploads/66780bafbba781.37437061.png', 'Tongseng adalah hidangan daging kambing atau sapi yang dimasak dengan kuah kental beraroma kuat dari rempah-rempah dan santan. Hidangan ini sering ditambahkan dengan sayuran seperti kubis dan tomat.', '<ul><li>500 gram daging kambing atau sapi, potong kecil-kecil</li><li>200 ml santan kental</li><li>500 ml air</li><li>3 lembar daun jeruk</li><li>2 lembar daun salam</li><li>2 batang serai, memarkan</li><li>2 cm lengkuas, memarkan</li><li>1 buah tomat, potong-potong</li><li>100 gram kol, potong kasar</li><li>2 buah cabai merah besar, iris serong</li><li>2 sendok makan kecap manis</li><li>1 sendok teh garam</li><li>1 sendok teh gula pasir</li><li>Minyak untuk menumis</li></ul>', '<ul><li>5 siung bawang putih</li><li>6 butir bawang merah</li><li>4 butir kemiri, sangrai</li><li>3 cm kunyit</li><li>1 cm jahe</li><li>1 sendok teh ketumbar</li><li>1/2 sendok teh merica</li></ul><p><strong>Langkah-langkah:</strong></p><ol><li>Tumis Bumbu Halus:<ul><li>Haluskan semua bumbu halus menggunakan blender atau ulekan.</li><li>Panaskan minyak dalam wajan, tumis bumbu halus bersama daun jeruk, daun salam, serai, dan lengkuas hingga harum dan matang.</li></ul></li><li>Masak Daging:<ul><li>Masukkan potongan daging ke dalam wajan, aduk rata hingga daging berubah warna.</li><li>Tambahkan air, masak dengan api sedang hingga daging empuk dan airnya berkurang.</li></ul></li><li>Tambahkan Bahan Lain:<ul><li>Masukkan santan kental, kecap manis, garam, dan gula pasir. Aduk rata.</li><li>Tambahkan irisan kol, tomat, dan cabai merah besar. Aduk hingga sayuran layu dan matang.</li></ul></li><li>Masak Hingga Matang:<ul><li>Masak terus dengan api kecil hingga bumbu meresap dan kuah mengental. Koreksi rasa jika diperlukan.</li></ul></li><li>Sajikan:<ul><li>Angkat dan sajikan tongseng panas-panas dengan nasi putih dan taburan bawang goreng di atasnya.</li></ul></li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>350 kkal</td></tr><tr><td>Karbohidrat</td><td>20 g</td></tr><tr><td>Protein</td><td>25 g</td></tr><tr><td>Lemak</td><td>20 g</td></tr><tr><td>Serat</td><td>3 g</td></tr></tbody></table></figure>'),
(51, 'Dinner', 'Soto Betawi', '../uploads/66780d0049f2d8.11332699.png', 'Soto Betawi adalah soto khas Jakarta yang terbuat dari campuran daging sapi atau jeroan dengan kuah santan yang kaya rempah. Soto ini biasanya disajikan dengan nasi, emping, dan acar.', '<ul><li>500 gram daging sapi (sandung lamur atau sengkel), potong dadu</li><li>200 gram jeroan sapi (babat, paru, usus), rebus dan potong kecil-kecil (opsional)</li><li>1 liter air</li><li>200 ml santan kental</li><li>200 ml susu cair atau santan encer</li><li>2 batang serai, memarkan</li><li>4 lembar daun jeruk</li><li>3 lembar daun salam</li><li>2 cm lengkuas, memarkan</li><li>2 sendok makan minyak untuk menumis</li><li>Garam dan gula secukupnya</li></ul><p><strong>Bumbu Halus:</strong></p><ul><li>8 butir bawang merah</li><li>5 siung bawang putih</li><li>5 butir kemiri, sangrai</li><li>1 sendok teh ketumbar, sangrai</li><li>1/2 sendok teh jintan, sangrai</li><li>2 cm jahe</li><li>1/2 sendok teh merica butiran</li><li>1/2 sendok teh pala bubuk</li><li>2 cm kunyit</li></ul><p><strong>Pelengkap:</strong></p><ul><li>Kentang goreng, iris tipis</li><li>Tomat, potong-potong</li><li>Daun bawang, iris halus</li><li>Bawang goreng</li><li>Emping melinjo</li><li>Jeruk limau</li><li>Sambal (opsional)</li></ul>', '<ol><li>Rebus Daging:<ul><li>Rebus daging sapi dalam 1 liter air hingga empuk. Angkat daging dan saring air rebusan untuk digunakan sebagai kaldu.</li></ul></li><li>Tumis Bumbu Halus:<ul><li>Haluskan semua bumbu halus menggunakan blender atau ulekan.</li><li>Panaskan minyak dalam wajan, tumis bumbu halus bersama serai, daun jeruk, daun salam, dan lengkuas hingga harum dan matang.</li></ul></li><li>Masak Daging dan Kaldu:<ul><li>Masukkan bumbu yang sudah ditumis ke dalam kaldu rebusan daging.</li><li>Tambahkan daging sapi dan jeroan (jika digunakan) ke dalam panci.</li><li>Tambahkan garam dan gula secukupnya. Masak hingga bumbu meresap.</li></ul></li><li>Tambahkan Santan dan Susu:<ul><li>Tuangkan santan kental dan susu cair (atau santan encer) ke dalam panci. Aduk perlahan agar santan tidak pecah.</li><li>Masak dengan api kecil hingga mendidih dan semua bahan tercampur rata.</li></ul></li><li>Sajikan:<ul><li>Sajikan soto Betawi dalam mangkuk, tambahkan pelengkap seperti kentang goreng, tomat, daun bawang, dan bawang goreng di atasnya.</li><li>Hidangkan dengan emping melinjo, jeruk limau, dan sambal sesuai selera.</li></ul></li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>400 kkal</td></tr><tr><td>Karbohidrat</td><td>30 g</td></tr><tr><td>Protein</td><td>20 g</td></tr><tr><td>Lemak</td><td>25 g</td></tr><tr><td>Serat</td><td>2 g</td></tr></tbody></table></figure>'),
(52, 'Dinner', 'Sayur Lodeh', '../uploads/66780db14c6105.63658218.png', 'Sayur Lodeh adalah masakan sayur yang dimasak dalam kuah santan. Sayuran yang digunakan bisa bervariasi, seperti labu siam, kacang panjang, terong, dan jagung muda. Hidangan ini memiliki rasa gurih dan sedikit pedas.', '<ul><li>200 gram labu siam, potong dadu</li><li>100 gram kacang panjang, potong-potong</li><li>100 gram terong, potong dadu</li><li>100 gram jagung manis, potong-potong</li><li>100 gram daun melinjo</li><li>100 gram nangka muda, potong-potong</li><li>1 buah tahu, potong dadu dan goreng</li><li>1 buah tempe, potong dadu dan goreng</li><li>500 ml santan encer</li><li>200 ml santan kental</li><li>3 lembar daun salam</li><li>2 batang serai, memarkan</li><li>2 cm lengkuas, memarkan</li><li>Garam secukupnya</li><li>Gula secukupnya</li><li>Minyak untuk menumis</li></ul><p><strong>Bumbu Halus:</strong></p><ul><li>5 siung bawang putih</li><li>6 butir bawang merah</li><li>3 butir kemiri, sangrai</li><li>2 buah cabai merah besar</li><li>2 buah cabai rawit (opsional, untuk rasa pedas)</li><li>1 cm kunyit</li><li>1 cm kencur (opsional)</li><li>1 sendok teh terasi bakar (opsional)</li></ul>', '<ol><li>Tumis Bumbu Halus:<ul><li>Haluskan semua bumbu halus menggunakan blender atau ulekan.</li><li>Panaskan sedikit minyak dalam wajan, tumis bumbu halus bersama daun salam, serai, dan lengkuas hingga harum dan matang.</li></ul></li><li>Rebus Sayuran:<ul><li>Didihkan santan encer dalam panci, lalu masukkan bumbu yang sudah ditumis.</li><li>Tambahkan labu siam, kacang panjang, terong, jagung manis, daun melinjo, dan nangka muda. Masak hingga sayuran setengah matang.</li></ul></li><li>Tambahkan Tahu dan Tempe:<ul><li>Masukkan tahu dan tempe yang sudah digoreng ke dalam panci.</li><li>Aduk rata dan masak sebentar.</li></ul></li><li>Tambahkan Santan Kental:<ul><li>Tuangkan santan kental ke dalam panci, aduk perlahan agar santan tidak pecah.</li><li>Tambahkan garam dan gula sesuai selera.</li></ul></li><li>Masak Hingga Matang:<ul><li>Masak dengan api kecil hingga semua bahan matang dan bumbu meresap, sambil sesekali diaduk.</li><li>Koreksi rasa jika diperlukan.</li></ul></li><li>Sajikan:<ul><li>Angkat sayur lodeh dan sajikan panas-panas dengan nasi putih dan pelengkap seperti kerupuk atau sambal.</li></ul></li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>200 kkal</td></tr><tr><td>Karbohidrat</td><td>20 g</td></tr><tr><td>Protein</td><td>5 g</td></tr><tr><td>Lemak</td><td>10 g</td></tr><tr><td>Serat</td><td>5 g</td></tr></tbody></table></figure>'),
(53, 'Lunch', 'Ikan Pepes', '../uploads/66780f246965a0.93187923.png', 'Ikan Pepes adalah ikan yang dibumbui dengan rempah-rempah dan dibungkus dengan daun pisang sebelum dikukus atau dipanggang. Bumbu yang digunakan biasanya meliputi kunyit, jahe, serai, dan cabai.', '<ul><li>500 gram ikan (bisa menggunakan ikan kembung, tenggiri, kakap, atau jenis ikan lain sesuai selera)</li><li>2 buah jeruk nipis, peras airnya</li><li>Garam secukupnya</li><li>Minyak untuk menggoreng dan menumis</li></ul><p><strong>Bumbu Halus:</strong></p><ul><li>8 butir bawang merah</li><li>4 siung bawang putih</li><li>10 buah cabai merah keriting</li><li>5 buah cabai rawit merah (sesuai selera pedas)</li><li>2 butir kemiri, sangrai</li><li>1 buah tomat</li><li>2 cm jahe</li><li>2 cm kunyit (opsional)</li></ul><p><strong>Bumbu Tambahan:</strong></p><ul><li>2 batang serai, memarkan</li><li>3 lembar daun jeruk</li><li>2 lembar daun salam</li><li>1 cm lengkuas, memarkan</li><li>1 sendok teh gula merah, serut</li><li>Garam dan gula secukupnya</li><li>200 ml air</li></ul>', '<ol><li>Siapkan Ikan:<ul><li>Bersihkan ikan, lumuri dengan air jeruk nipis dan garam. Diamkan selama 15 menit untuk menghilangkan bau amis.</li><li>Panaskan minyak dalam wajan, goreng ikan hingga matang dan berkulit renyah. Angkat dan tiriskan.</li></ul></li><li>Tumis Bumbu Halus:<ul><li>Haluskan semua bahan bumbu halus menggunakan blender atau ulekan.</li><li>Panaskan sedikit minyak dalam wajan, tumis bumbu halus hingga harum dan matang.</li></ul></li><li>Tambahkan Bumbu Tambahan:<ul><li>Masukkan serai, daun jeruk, daun salam, dan lengkuas ke dalam tumisan bumbu halus. Tumis hingga bumbu benar-benar matang dan mengeluarkan aroma harum.</li></ul></li><li>Masak Ikan:<ul><li>Tambahkan air ke dalam tumisan bumbu. Aduk rata dan biarkan mendidih.</li><li>Masukkan gula merah, garam, dan gula secukupnya. Aduk rata.</li><li>Masukkan ikan yang sudah digoreng ke dalam bumbu. Masak dengan api kecil hingga bumbu meresap ke dalam ikan.</li></ul></li><li>Sajikan:<ul><li>Angkat ikan pedas dan sajikan panas-panas dengan nasi putih hangat</li></ul></li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>250 kkal</td></tr><tr><td>Karbohidrat</td><td>5 g</td></tr><tr><td>Protein</td><td>30 g</td></tr><tr><td>Lemak</td><td>10 g</td></tr><tr><td>Serat</td><td>2 g</td></tr></tbody></table></figure>'),
(54, 'Dinner', 'Ayam Kecap', '../uploads/66780f95583326.17433984.png', 'Ayam Kecap adalah hidangan ayam yang dimasak dengan kecap manis dan berbagai bumbu seperti bawang putih, bawang merah, dan jahe. Hidangan ini memiliki rasa manis dan gurih yang khas.', '<ul><li>500 gram ayam, potong menjadi bagian kecil sesuai selera (dada, paha, atau sayap)</li><li>3 sendok makan kecap manis</li><li>2 sendok makan kecap asin</li><li>1 sendok makan saus tiram</li><li>1 sendok makan minyak wijen (opsional)</li><li>3 siung bawang putih, cincang halus</li><li>1 buah bawang bombay, iris tipis</li><li>1 buah cabai merah besar, iris tipis (opsional untuk rasa pedas)</li><li>Gula dan garam secukupnya</li><li>Merica secukupnya</li><li>Minyak untuk menumis</li></ul><p><strong>Bumbu Halus (opsional):</strong></p><ul><li>3 butir bawang merah</li><li>2 siung bawang putih</li><li>1 cm jahe</li><li>1 cm kunyit</li></ul>', '<ol><li>Tumis Bumbu Halus (jika menggunakan):<ul><li>Haluskan bumbu halus menggunakan blender atau ulekan.</li><li>Tumis bumbu halus dengan sedikit minyak hingga harum dan matang. Skip langkah ini jika tidak menggunakan bumbu halus.</li></ul></li><li>Tumis Bawang dan Cabai:<ul><li>Panaskan minyak dalam wajan, tumis bawang putih hingga harum dan agak kecokelatan.</li><li>Tambahkan bawang bombay dan cabai merah (jika menggunakan), tumis hingga layu.</li></ul></li><li>Masukkan Ayam:<ul><li>Masukkan potongan ayam ke dalam wajan, tumis hingga ayam berubah warna dan matang separuh.</li></ul></li><li>Tambahkan Saus:<ul><li>Tuangkan kecap manis, kecap asin, saus tiram, dan minyak wijen (jika menggunakan) ke dalam wajan.</li><li>Aduk rata hingga ayam terbalut dengan saus kecap.</li></ul></li><li>Masak Hingga Matang:<ul><li>Biarkan ayam mendidih dalam saus kecap dengan api sedang. Aduk sesekali untuk memastikan ayam matang merata dan saus meresap.</li></ul></li><li>Koreksi Rasa:<ul><li>Tambahkan garam, gula, dan merica secukupnya sesuai dengan selera Anda. Aduk rata dan cicipi untuk penyesuaian rasa terakhir.</li></ul></li><li>Sajikan:<ul><li>Angkat ayam kecap dan sajikan hangat dengan nasi putih hangat sebagai pelengkapnya.</li></ul></li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>300 kkal</td></tr><tr><td>Karbohidrat</td><td>10 g</td></tr><tr><td>Protein</td><td>25 g</td></tr><tr><td>Lemak</td><td>15 g</td></tr><tr><td>Serat</td><td>1 g</td></tr></tbody></table></figure>'),
(55, 'Breakfast', 'Lontong Sayur', '../uploads/6678101342f279.90862095.png', 'Lontong Sayur adalah hidangan yang terdiri dari lontong (nasi yang dimasak dan dikompres dalam daun pisang) yang disajikan dengan sayur lodeh dan kuah santan. Kadang-kadang ditambahkan dengan telur rebus dan kerupuk.', '<ul><li>5 buah lontong, potong-potong</li><li>5 butir telur rebus, kupas</li><li>1/2 sendok makan ebi, sangrai dan haluskan</li><li>5 buah tahu kulit kotak</li><li>150 gram labu siam, potong korek api</li><li>5 lonjor kacang panjang, potong 2 cm</li><li>2 lembar daun salam</li><li>2 cm lengkuas, memarkan</li><li>1 batang serai, ambil bagian putihnya, memarkan</li><li>1.750 ml santan, dari 1 1/2 btr kelapa</li><li>41/2 sendok teh garam</li><li>2 sendok teh gula pasir</li><li>2 sendok makan minyak, untuk menumis</li></ul><p><strong>Bumbu halus :</strong></p><ul><li>1 sendok teh terasi, goreng</li><li>4 butir kemiri, sangrai</li><li>3 cm kunyit, bakar</li><li>10 butir bawang merah</li><li>5 butir bawang putih</li><li>4 buah cabai merah besar</li><li>3 buah cabai merah keriting</li><li>1/2 sendok teh ketumbar</li></ul><p><strong>Bahan Pelengkap :</strong></p><ul><li>50 gram kerupuk kanji, goreng</li><li>2 sendok makan bawang goreng</li></ul>', '<ol><li>Tumis bumbu halus, daun salam, lengkuas, dan serai sampai harum.</li><li>Masukkan ebi, lalu aduk rata.</li><li>Tambahkan labu siam, dan kacang panjang. Aduk sampai setengah layu. Masukkan telur dan tahu. Aduk rata.</li><li>Masukkan santan, garam, dan gula pasir. Aduk sampai matang.</li><li>Tata lontong dan siram kuah. Sajikan bersama pelengkap.</li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>350 kkal</td></tr><tr><td>Karbohidrat</td><td>50 g</td></tr><tr><td>Protein</td><td>10 g</td></tr><tr><td>Lemak</td><td>15 g</td></tr><tr><td>Serat</td><td>3 g</td></tr></tbody></table></figure>'),
(56, 'Breakfast', 'Bubur Manado', '../uploads/667810961041a7.04741795.png', 'Bubur Manado, atau Tinutuan, adalah bubur khas Manado yang terbuat dari campuran beras, jagung, labu, dan berbagai sayuran hijau. Bubur ini disajikan dengan sambal dan ikan asin sebagai pelengkap.', '<ul><li>200 gram beras, cuci bersih dan rendam minimal 30 menit</li><li>100 gram daging babi, potong dadu kecil</li><li>50 gram bihun (opsional)</li><li>50 gram tauge (opsional)</li><li>2 lembar daun salam</li><li>2 batang serai, memarkan</li><li>2 cm lengkuas, memarkan</li><li>1 buah tomat, potong dadu kecil</li><li>2 sendok makan minyak untuk menumis</li><li>Garam dan gula secukupnya</li></ul><p><strong>Bumbu Halus:</strong></p><ul><li>5 buah cabai rawit (atau sesuai selera pedas)</li><li>4 butir bawang merah</li><li>3 siung bawang putih</li><li>1 cm jahe</li><li>1 cm kunyit</li><li>1 sendok teh terasi bakar</li></ul><p><strong>Pelengkap (opsional):</strong></p><ul><li>Kerupuk bawang</li><li>Bawang goreng</li><li>Sambal terasi</li></ul>', '<ol><li>Tumis Bumbu Halus:<ul><li>Haluskan semua bumbu halus menggunakan blender atau ulekan.</li><li>Panaskan minyak dalam wajan, tumis bumbu halus bersama daun salam, serai, dan lengkuas hingga harum dan matang.</li></ul></li><li>Masak Bubur:<ul><li>Masukkan potongan daging babi ke dalam tumisan bumbu halus. Tumis hingga daging berubah warna.</li></ul></li><li>Tambahkan Air dan Beras:<ul><li>Tuangkan air secukupnya (sekitar 1,5 liter) ke dalam panci besar.</li><li>Masukkan beras yang sudah direndam dan tomat ke dalam panci. Aduk rata.</li></ul></li><li>Masak Hingga Matang:<ul><li>Masak bubur dengan api sedang hingga beras menjadi bubur dan daging empuk. Aduk sesekali agar tidak lengket di bagian dasar panci.</li></ul></li><li>Tambahkan Bihun dan Tauge (opsional):<ul><li>Jika menggunakan, tambahkan bihun dan tauge ke dalam bubur. Masak sebentar hingga bihun matang dan tauge layu.</li></ul></li><li>Koreksi Rasa:<ul><li>Tambahkan garam dan gula secukupnya sesuai dengan selera. Aduk rata dan cicipi untuk penyesuaian rasa terakhir.</li></ul></li><li>Sajikan:<ul><li>Angkat bubur Manado dan sajikan panas-panas.</li><li>Hidangkan dengan pelengkap seperti kerupuk bawang, bawang goreng, dan sambal terasi jika diinginkan.</li></ul></li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>200 kkal</td></tr><tr><td>Karbohidrat</td><td>40 g</td></tr><tr><td>Protein</td><td>6 g</td></tr><tr><td>Lemak</td><td>4 g</td></tr><tr><td>Serat</td><td>5 g</td></tr><tr><td>Vitamin A</td><td>20% AKG</td></tr><tr><td>Vitamin C</td><td>15% AKG</td></tr></tbody></table></figure>');
INSERT INTO `recipes` (`recipe_id`, `category`, `name`, `image`, `description`, `ingredients`, `instructions`, `nutritions`) VALUES
(57, 'Breakfast', 'Roti Canai', '../uploads/667810f7e39668.27497306.png', 'Roti Canai adalah roti lapis asal India yang populer di Indonesia dan Malaysia. Roti ini terbuat dari adonan tepung terigu yang digulung tipis dan dipanggang hingga berlapis-lapis, sering disajikan dengan kari atau gula.', '<ul><li>500 gram tepung terigu protein tinggi (biasanya tepung serbaguna atau tepung roti)</li><li>300 ml air, suam-suam kuku</li><li>1 sendok teh garam</li><li>1 sendok makan gula</li><li>2 sendok makan minyak sayur atau margarin, cairkan</li><li>Minyak untuk menggoreng dan membentuk roti</li></ul>', '<ol><li>Persiapan Adonan:<ul><li>Campur tepung terigu, garam, dan gula dalam mangkuk besar.</li><li>Tuangkan air sedikit demi sedikit sambil diaduk hingga menjadi adonan yang lembut dan tidak lengket di tangan. Tambahkan minyak sayur atau margarin, uleni adonan hingga elastis dan tidak lengket.</li></ul></li><li>Istirahatkan Adonan:<ul><li>Tutup adonan dengan kain bersih atau plastik wrap. Diamkan selama minimal 1 jam agar adonan bisa mengembang dengan baik.</li></ul></li><li>Bagi dan Bulatkan:<ul><li>Setelah istirahat, bagi adonan menjadi beberapa bagian (biasanya sekitar 6-8 bagian tergantung ukuran yang diinginkan).</li><li>Bulatkan setiap bagian adonan menjadi bola-bola kecil, kemudian letakkan dalam wadah dan tutup kembali dengan kain bersih. Biarkan selama 15-30 menit.</li></ul></li><li>Giling dan Lipat:<ul><li>Ambil satu bola adonan, giling tipis-tipis menggunakan rolling pin (gilingan) hingga membentuk oval atau persegi panjang yang tipis. Taburi dengan sedikit tepung agar tidak lengket.</li><li>Oleskan sedikit minyak di atas permukaan adonan yang sudah digiling. Lipat adonan menjadi lipatan seperti kipas (lipat dari sisi atas, kemudian lipat dari sisi bawah, ulangi hingga terlipat seperti kipas).</li></ul></li><li>Bentuk Roti Canai:<ul><li>Gulingkan adonan kipas menjadi bentuk oval atau persegi panjang tipis lagi dengan rolling pin. Pastikan adonan tidak terlalu tipis agar tetap bisa ditekuk dan berlapis-lapis saat dipanggang.</li><li>Panaskan minyak dalam wajan atau penggorengan datar besar (tava), panggang roti canai satu per satu dengan api sedang hingga kedua sisinya kecokelatan dan matang.</li></ul></li><li>Penyajian:<ul><li>Angkat roti canai dan tiriskan minyak berlebih dengan menempatkannya di atas kertas minyak atau tisu dapur.</li><li>Potong roti canai sesuai selera dan sajikan panas dengan kuah kari, dhal, atau sambal.</li></ul></li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>300 kkal</td></tr><tr><td>Karbohidrat</td><td>40 g</td></tr><tr><td>Protein</td><td>5 g</td></tr><tr><td>Lemak</td><td>14 g</td></tr><tr><td>Serat</td><td>2 g</td></tr></tbody></table></figure>'),
(58, 'Breakfast', 'Pisang Goreng', '../uploads/66781150217c16.51386123.png', 'Pisang Goreng adalah camilan yang terdiri dari pisang yang dilapisi dengan adonan tepung lalu digoreng hingga garing. Camilan ini sering dinikmati dengan secangkir kopi atau teh.', '<ul><li>Pisang kepok atau pisang raja, pilih yang sudah matang</li><li>Minyak untuk menggoreng</li><li>Tepung terigu secukupnya</li><li>Air secukupnya</li><li>Garam secukupnya (opsional)</li><li>Gula pasir untuk taburan (opsional)</li></ul>', '<ol><li>Siapkan Pisang:<ul><li>Kupas pisang dan potong-potong sesuai selera. Anda bisa memotongnya memanjang atau memotong bulat sesuai dengan keinginan.</li></ul></li><li>Siapkan Adonan Tepung:<ul><li>Campur tepung terigu dengan sedikit garam (jika menggunakan) dalam sebuah mangkuk.</li><li>Tambahkan air sedikit demi sedikit sambil diaduk hingga membentuk adonan yang kental namun tetap bisa mengalir. Pastikan adonan tidak terlalu encer atau terlalu kental.</li></ul></li><li>Panaskan Minyak:<ul><li>Panaskan minyak dalam wajan atau penggorengan dengan api sedang hingga cukup panas.</li></ul></li><li>Celupkan Pisang:<ul><li>Celupkan potongan pisang ke dalam adonan tepung hingga seluruh bagian pisang terbalut dengan tepung secara merata.</li></ul></li><li>Goreng Pisang:<ul><li>Goreng pisang dalam minyak panas hingga kedua sisinya kuning keemasan dan renyah. Pastikan untuk membalik pisang agar matang merata.</li></ul></li><li>Angkat dan Tiriskan:<ul><li>Angkat pisang goreng dan tiriskan minyak berlebih dengan meletakkannya di atas kertas minyak atau tisu dapur.</li></ul></li><li>Sajikan:<ul><li>Pisang goreng siap disajikan hangat-hangat. Anda dapat menambahkan taburan gula pasir di atasnya untuk memberikan rasa manis tambahan, jika diinginkan.</li></ul></li></ol>', '<figure class=\"table\"><table><tbody><tr><td>Nama Nutrisi</td><td>Jumlah Nutrisi</td></tr><tr><td>Kalori</td><td>150 kkal</td></tr><tr><td>Karbohidrat</td><td>25 g</td></tr><tr><td>Protein</td><td>1 g</td></tr><tr><td>Lemak</td><td>5 g</td></tr><tr><td>Serat</td><td>2 g</td></tr></tbody></table></figure>');

-- --------------------------------------------------------

--
-- Table structure for table `recipe_nut`
--

CREATE TABLE `recipe_nut` (
  `recipe_id` int(11) NOT NULL,
  `nutrition_id` char(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipe_nut`
--

INSERT INTO `recipe_nut` (`recipe_id`, `nutrition_id`) VALUES
(2, 'EN'),
(2, 'GL'),
(2, 'KB'),
(2, 'KL'),
(2, 'KS'),
(2, 'LJ'),
(2, 'LK'),
(2, 'PR'),
(2, 'SD'),
(2, 'SR'),
(2, 'ZB'),
(5, 'EN'),
(5, 'KB'),
(5, 'LK'),
(5, 'PR'),
(6, 'EN'),
(6, 'GL'),
(6, 'KB'),
(6, 'KL'),
(6, 'KS'),
(6, 'LJ'),
(6, 'LK'),
(6, 'PR'),
(6, 'SD'),
(6, 'SR'),
(6, 'ZB'),
(7, 'EN'),
(7, 'GL'),
(7, 'KB'),
(7, 'KL'),
(7, 'KS'),
(7, 'LJ'),
(7, 'LK'),
(7, 'PR'),
(7, 'SD'),
(7, 'SR'),
(7, 'ZB'),
(13, 'KB'),
(13, 'KR'),
(13, 'LK'),
(13, 'PR'),
(13, 'SR'),
(19, 'EN'),
(19, 'GL'),
(19, 'KB'),
(19, 'KL'),
(19, 'LJ'),
(19, 'LK'),
(19, 'PR'),
(19, 'SD'),
(19, 'SR'),
(21, 'GL'),
(21, 'KB'),
(21, 'KL'),
(21, 'LJ'),
(21, 'LK'),
(21, 'PR'),
(21, 'SD'),
(21, 'SR'),
(20, 'EN'),
(20, 'GL'),
(20, 'KB'),
(20, 'KL'),
(20, 'LK'),
(20, 'PR'),
(20, 'SD'),
(20, 'SR'),
(24, 'EN'),
(24, 'GL'),
(24, 'KB'),
(24, 'LJ'),
(24, 'LK'),
(24, 'PR'),
(24, 'SD'),
(24, 'SR'),
(25, 'EN'),
(25, 'GL'),
(25, 'KB'),
(25, 'LK'),
(25, 'PR'),
(25, 'SD'),
(25, 'SR'),
(26, 'EN'),
(26, 'KB'),
(26, 'KL'),
(26, 'LJ'),
(26, 'LK'),
(26, 'PR'),
(26, 'SD'),
(27, 'EN'),
(27, 'GL'),
(27, 'KB'),
(27, 'KL'),
(27, 'LJ'),
(27, 'LK'),
(27, 'PR'),
(27, 'SD'),
(27, 'SR'),
(30, 'EN'),
(30, 'GL'),
(30, 'KB'),
(30, 'KL'),
(30, 'LJ'),
(30, 'LK'),
(30, 'PR'),
(30, 'SD'),
(30, 'SR'),
(35, 'KB'),
(35, 'KR'),
(35, 'LK'),
(35, 'PR'),
(35, 'SR'),
(34, 'KB'),
(34, 'KR'),
(34, 'LK'),
(34, 'PR'),
(34, 'SR'),
(4, 'EN'),
(4, 'KB'),
(4, 'LK'),
(4, 'PR'),
(4, 'SR'),
(17, 'KB'),
(17, 'KR'),
(17, 'LK'),
(17, 'PR'),
(17, 'SR'),
(14, 'GL'),
(14, 'KB'),
(14, 'KR'),
(14, 'LK'),
(14, 'PR'),
(14, 'SD'),
(14, 'SR'),
(28, 'KB'),
(28, 'KR'),
(28, 'LK'),
(28, 'PR'),
(28, 'SR'),
(29, 'KB'),
(29, 'KR'),
(29, 'LK'),
(29, 'PR'),
(29, 'SR'),
(36, 'KR'),
(36, 'PR'),
(16, 'KB'),
(16, 'KR'),
(16, 'LK'),
(16, 'PR'),
(16, 'SR'),
(18, 'EN'),
(18, 'KB'),
(18, 'KL'),
(18, 'KS'),
(18, 'LK'),
(18, 'PR'),
(18, 'SR'),
(18, 'ZB'),
(37, 'EN'),
(37, 'GL'),
(37, 'LJ'),
(37, 'LK'),
(37, 'PR'),
(37, 'SD'),
(37, 'SR'),
(40, 'EN'),
(40, 'LJ'),
(40, 'LK'),
(40, 'SD'),
(42, 'KB'),
(42, 'LJ'),
(42, 'LK'),
(42, 'SD'),
(22, 'EN'),
(22, 'GL'),
(22, 'KB'),
(22, 'KL'),
(22, 'LK'),
(22, 'PR'),
(22, 'SD'),
(22, 'SR'),
(11, 'GL'),
(11, 'KB'),
(11, 'KR'),
(11, 'LK'),
(11, 'PR'),
(11, 'SD'),
(11, 'SR'),
(12, 'KB'),
(12, 'KR'),
(12, 'KS'),
(12, 'LJ'),
(12, 'LK'),
(12, 'PR'),
(15, 'GL'),
(15, 'KB'),
(15, 'KR'),
(15, 'LJ'),
(15, 'LK'),
(15, 'PR'),
(15, 'SR'),
(32, 'KB'),
(32, 'KR'),
(32, 'KS'),
(32, 'LK'),
(32, 'PR'),
(32, 'SR'),
(32, 'ZB'),
(33, 'KB'),
(33, 'KR'),
(33, 'KS'),
(33, 'LK'),
(33, 'PR'),
(33, 'SR'),
(38, 'KB'),
(38, 'KR'),
(38, 'KS'),
(38, 'LK'),
(38, 'PR'),
(38, 'SR'),
(38, 'ZB'),
(39, 'KB'),
(39, 'KR'),
(39, 'KS'),
(39, 'PR'),
(39, 'SR'),
(39, 'ZB'),
(41, 'KB'),
(41, 'KR'),
(41, 'KS'),
(41, 'LK'),
(41, 'PR'),
(41, 'SR'),
(41, 'ZB'),
(23, 'EN'),
(23, 'GL'),
(23, 'KB'),
(23, 'KL'),
(23, 'LJ'),
(23, 'LK'),
(23, 'PR'),
(23, 'SD'),
(23, 'SR'),
(44, 'GL'),
(44, 'KB'),
(44, 'KR'),
(44, 'KS'),
(44, 'LK'),
(44, 'PR'),
(43, 'GL'),
(43, 'KB'),
(43, 'KR'),
(43, 'LK'),
(43, 'PR'),
(43, 'SR'),
(46, 'GL'),
(46, 'KB'),
(46, 'KR'),
(46, 'LK'),
(46, 'PR'),
(46, 'SR'),
(47, 'GL'),
(47, 'KB'),
(47, 'KR'),
(47, 'LK'),
(47, 'PR'),
(47, 'SR'),
(48, 'KB'),
(48, 'KR'),
(48, 'LK'),
(48, 'PR'),
(48, 'SR'),
(50, 'KB'),
(50, 'KR'),
(50, 'LK'),
(50, 'PR'),
(50, 'SR'),
(51, 'KB'),
(51, 'KR'),
(51, 'LK'),
(51, 'PR'),
(51, 'SR'),
(52, 'KB'),
(52, 'KR'),
(52, 'LK'),
(52, 'PR'),
(52, 'SR'),
(53, 'KB'),
(53, 'KR'),
(53, 'LK'),
(53, 'PR'),
(53, 'SR'),
(54, 'KB'),
(54, 'KR'),
(54, 'LK'),
(54, 'PR'),
(54, 'SR'),
(55, 'KB'),
(55, 'KR'),
(55, 'LK'),
(55, 'PR'),
(55, 'SR'),
(56, 'KB'),
(56, 'KR'),
(56, 'LK'),
(56, 'PR'),
(56, 'SR'),
(57, 'KB'),
(57, 'KR'),
(57, 'LK'),
(57, 'PR'),
(57, 'SR'),
(58, 'KB'),
(58, 'KR'),
(58, 'LK'),
(58, 'PR'),
(58, 'SR'),
(45, 'GL'),
(45, 'KB'),
(45, 'KR'),
(45, 'LK'),
(45, 'PR'),
(45, 'SR'),
(49, 'KB'),
(49, 'KR'),
(49, 'LK'),
(49, 'PR'),
(49, 'SR'),
(1, 'EN'),
(1, 'GL'),
(1, 'KB'),
(1, 'KL'),
(1, 'KS'),
(1, 'LJ'),
(1, 'LK'),
(1, 'PR'),
(1, 'SD'),
(1, 'SR'),
(1, 'ZB'),
(3, 'KB'),
(3, 'KR'),
(3, 'LK'),
(3, 'PR'),
(3, 'SR'),
(10, 'KB'),
(10, 'KR'),
(10, 'KS'),
(10, 'LK'),
(10, 'PR'),
(10, 'ZB'),
(31, 'KB'),
(31, 'LK'),
(31, 'PR');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `recipe_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rating` int(1) NOT NULL,
  `comment` text NOT NULL,
  `review_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`review_id`, `recipe_id`, `user_id`, `rating`, `comment`, `review_date`) VALUES
(1, 5, 2, 5, '', '2024-06-22');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `birth` date NOT NULL,
  `gender` enum('Laki-laki','Perempuan') NOT NULL,
  `role` enum('Admin','User') NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email`, `username`, `password`, `birth`, `gender`, `role`, `photo`) VALUES
(1, 'Admin', 'admin@gmail.com', 'Admin', '$2y$10$oo5vnsZBOIp9Hp3dLegxRu7PAauc5b8cZzvKgCpVzda3wu.FsGc1W', '2002-02-20', 'Laki-laki', 'Admin', 'assets/img/profile.png'),
(2, 'Saura Dwikana', 'saura@gmail.com', 'saura', '$2y$10$Z3EN3JmALxzjbCw3gu1VTedsRE9HJ0sJctBW8Dlnycg3YyvrPjWqi', '2010-05-05', 'Perempuan', 'User', 'assets/img/profile-img.png'),
(4, 'Zidane Ganteng', 'hanifzidanemuhammad@gmail.com', 'ZidaneRare', '$2y$10$7gYHhxWrd3CPxuXWNK18pewzF7PMrXoP2fCsJlcbeBY6UwJlf75KC', '2004-03-28', 'Laki-laki', 'User', 'assets/img/profile-img.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nutritions`
--
ALTER TABLE `nutritions`
  ADD PRIMARY KEY (`nutrition_id`);

--
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Indexes for table `recipe_nut`
--
ALTER TABLE `recipe_nut`
  ADD KEY `recipe_id` (`recipe_id`),
  ADD KEY `nutrition_id` (`nutrition_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipe_nut`
--
ALTER TABLE `recipe_nut`
  ADD CONSTRAINT `recipe_nut_ibfk_2` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`recipe_id`),
  ADD CONSTRAINT `recipe_nut_ibfk_3` FOREIGN KEY (`nutrition_id`) REFERENCES `nutritions` (`nutrition_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
