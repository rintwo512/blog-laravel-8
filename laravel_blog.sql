-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Mar 2022 pada 04.16
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Web Design', 'web-design', '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(2, 'Tech', 'tech', '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(3, 'Web Programing', 'web-programing', '2022-03-22 04:06:27', '2022-03-22 04:06:27');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_03_19_095730_create_posts_table', 1),
(6, '2022_03_19_111205_create_categories_table', 1),
(7, '2022_03_22_191713_add_role_to_users_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `publish_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `user_id`, `title`, `slug`, `img`, `excerpt`, `body`, `publish_at`, `created_at`, `updated_at`) VALUES
(1, 3, 2, 'Autem non.', 'et-qui-dolore-tempore-eum-officia-voluptatem-pariatur', NULL, 'Provident non est esse occaecati necessitatibus itaque. Omnis esse corrupti temporibus. Adipisci tempora quos accusamus. Similique quam et saepe omnis perferendis nesciunt quo.', '<p>Et recusandae ab sunt corporis. Consequatur voluptas impedit aut rerum. Inventore molestiae quis est et. Eum officiis maiores maxime aut explicabo consectetur qui et.</p><p>Quas et in recusandae. Nemo natus ad modi et quae est reiciendis. Labore consequatur doloremque dolore tenetur aut ut. Molestiae voluptatem eveniet dolor.</p><p>Modi libero sed molestiae omnis quaerat quae enim. Cum ea rerum sunt quidem et quis optio.</p><p>Ut qui recusandae est. Quia sunt et neque unde consequuntur cumque tenetur. Quo eos delectus esse voluptas qui.</p><p>Facere accusamus modi ad rerum ut nemo deserunt consectetur. Et sit voluptates neque laudantium qui. Ipsum blanditiis consectetur porro.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(2, 2, 3, 'Ea voluptas earum dignissimos.', 'et-quam-quos-quo-sed-perferendis-quos-quis-vel', NULL, 'Optio dignissimos fuga molestias mollitia ea pariatur occaecati. Velit enim nemo suscipit reprehenderit nobis. Assumenda iusto numquam rerum praesentium ullam non recusandae. Deleniti enim eum magni facilis. Eum fugiat perspiciatis qui possimus quia.', '<p>Officia harum nemo eum in recusandae aut. Quidem eos sed autem qui tenetur illum. Dolorem est dolorem in maiores maxime laborum animi. Neque nostrum magni laudantium ut.</p><p>Itaque nihil aliquid doloribus alias sapiente ea. Illo harum necessitatibus vel harum rerum. Ipsam quae sunt atque iure non.</p><p>Ullam molestiae quia ab ea qui quia. Aut quaerat velit consectetur eum quia porro. Amet quia quo pariatur harum ea in repellendus. Vel perspiciatis adipisci perferendis necessitatibus enim quasi iusto earum.</p><p>Eius ut porro ipsum quia ea. Voluptates rerum veniam voluptatem id in. Qui facilis hic perspiciatis sapiente sit autem et quas. Impedit iste mollitia labore mollitia omnis nemo.</p><p>Laboriosam sed aut iusto qui doloremque neque aliquid. Et fugit cumque consequatur. Optio vero sit nihil sunt et.</p><p>Quis ullam culpa et est illum voluptatem. Impedit itaque sunt et dolore perferendis magni. Quidem maiores et mollitia minus id ut voluptatem hic. Enim adipisci qui nemo optio deleniti exercitationem. Itaque quaerat in molestiae est nemo odit ullam modi.</p><p>Qui molestiae magni eum sit doloribus fuga. Porro ipsum eligendi non sint eaque quia quibusdam. Sed sed ab omnis voluptatem qui.</p><p>Sed eaque aut est omnis nihil voluptatem iure. Quaerat aspernatur cupiditate exercitationem laudantium qui. Omnis qui a nesciunt et natus reiciendis consequuntur.</p><p>Rem id saepe eum eum quia officia quos. Incidunt rem et omnis ad. Voluptas doloremque asperiores quo delectus in. Ipsa vel sed qui nobis molestiae.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(3, 2, 3, 'Labore qui dicta aut labore.', 'non-consectetur-maxime-culpa-atque', NULL, 'Deserunt occaecati non qui provident itaque praesentium doloremque. Praesentium debitis et et adipisci ullam. Voluptas dolorum dolores atque et laboriosam ipsum. Sed deleniti consequuntur sed blanditiis et.', '<p>Laboriosam non et ducimus saepe omnis sed quia. Esse exercitationem quidem et occaecati qui. Nisi et asperiores praesentium.</p><p>Vitae et officia dolor aut ad voluptas. Magnam qui nemo consequatur non ipsam et. Maxime quasi omnis ad ad omnis. Non perferendis eius iste ea ab sint.</p><p>Assumenda commodi dolores quidem iure veritatis. Illo qui odit ratione nemo qui. Dolorem porro architecto veritatis laboriosam. Corrupti et ut quasi vero quaerat esse dolorem.</p><p>Quo quisquam omnis voluptates laudantium alias. Maxime explicabo aut necessitatibus dolor. Sit sequi est quia ab. Eligendi quia rerum dolores pariatur rerum eos.</p><p>Molestiae labore placeat similique perferendis aperiam deleniti ducimus. Ut eveniet facere fugit sit autem corrupti enim. Ex magni et id aliquam amet non officia. Sunt optio vel velit voluptas ipsum suscipit id.</p><p>Quos voluptas ea distinctio eligendi recusandae aut explicabo. Tempora dolores sit aut ut inventore qui aut. Vel veniam aperiam maxime quas esse recusandae sint. Atque eum modi velit maiores tempora.</p><p>Non veniam asperiores voluptatibus voluptatem. Accusantium aperiam quae pariatur blanditiis laborum.</p><p>Eius autem ut voluptatum consequatur. Recusandae sed veniam magni voluptatem. Dolorum possimus ex non adipisci dolorem.</p><p>Aperiam est et corrupti ducimus aut ratione. Facilis eos sapiente exercitationem dolores. Error iusto quia quis ipsum.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(4, 1, 1, 'Eligendi aut eveniet nulla in.', 'rem-qui-eos-adipisci-qui-facilis', NULL, 'Officiis eum voluptatem quo recusandae ipsam deserunt ipsa. Sit aspernatur est saepe id temporibus. Qui excepturi et officiis consequuntur. Et atque facilis doloribus.', '<p>Quae laboriosam iusto quos dolorem qui rem quia. Ipsam voluptas cumque alias dolores dolorem asperiores. Qui vitae iusto quis quo quos quia deleniti. Ex voluptatum modi occaecati labore id ut vel.</p><p>Eos laudantium a velit maxime tempore. Voluptate et dolor debitis provident in tenetur. Suscipit repellendus porro in dolore qui eius quia.</p><p>Molestias atque fugit saepe blanditiis deserunt nulla. Mollitia repellendus asperiores nisi culpa cumque minus qui. Qui voluptatem nulla sequi molestiae distinctio.</p><p>Reprehenderit nisi atque ut. Ab natus beatae et quas quos sed asperiores. Assumenda quis et qui voluptas omnis qui doloribus error.</p><p>Doloribus similique blanditiis non eos explicabo. Ipsum ipsam sunt aut quasi molestias ab. Quam nulla quia earum ut molestias.</p><p>Aut error alias numquam quos eligendi qui. Nihil voluptas maiores quia. Vel beatae temporibus magni blanditiis accusantium error. Et tempora molestiae autem autem.</p><p>Officiis voluptatibus maiores corporis rerum et. Sint soluta quae illo. Dolorum reiciendis similique tempora et qui.</p><p>Ab porro similique cumque. Accusantium nulla illo ut aut voluptas rerum a. Consectetur eos et necessitatibus ullam. Exercitationem autem possimus dolores sint enim autem dolor.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(5, 2, 3, 'Est aut inventore ullam rerum.', 'veniam-officiis-odio-officia-iste-rerum', NULL, 'Neque et non et corrupti. Modi omnis omnis vel. Cum aut dolor non iusto.', '<p>Omnis tempora rerum molestiae quia perferendis sit dolorem. Ut saepe neque aut quas eum quae doloremque. Non quasi vitae fuga.</p><p>Neque unde omnis neque omnis enim temporibus. Tenetur doloremque vel nulla a reprehenderit occaecati impedit. Aspernatur hic porro iste ipsa. Qui molestiae suscipit doloremque sapiente.</p><p>Amet eum voluptatem et quos. Maxime exercitationem ab consequatur molestiae est esse. Voluptate perspiciatis rem dolores quibusdam.</p><p>Dicta veniam quo corrupti incidunt in. Officia est quis quo non enim aperiam. Et sed voluptate aperiam in et. Placeat eveniet quod adipisci delectus voluptatem eligendi quaerat deserunt. Quia ab debitis rerum laudantium.</p><p>Sit veritatis assumenda laborum quia deleniti quam dolorem. Et et quibusdam ducimus temporibus. Optio sint dolorum similique harum et eaque. Ut consequatur non odio voluptatem et aut.</p><p>Nemo ducimus nesciunt ipsam numquam nihil. Saepe sit dolorum et necessitatibus incidunt dolor itaque eos. Qui architecto non eos laborum est sint. Consequatur vitae doloremque aut.</p><p>Exercitationem ad repellat dolores. Quia culpa sequi explicabo adipisci quis. Eum autem dolor repellendus deleniti sit. Et voluptas esse vero sunt sit qui et.</p><p>Est est nam voluptate ducimus amet laboriosam et pariatur. Et vitae qui qui aliquam rerum impedit. Fugiat ea molestiae soluta officiis nobis eos. Pariatur saepe blanditiis quo earum rerum illo aut.</p><p>Nihil dolor quo velit. Voluptas necessitatibus qui amet necessitatibus quod nihil. Reprehenderit quis saepe amet quis.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(6, 1, 2, 'Rem numquam magni beatae consequatur et recusandae.', 'et-quas-tempora-quis-cumque-incidunt-quos-et', NULL, 'Natus dolores tempora explicabo et quia impedit ut illo. Animi doloribus rerum excepturi nisi. Suscipit est quidem ut accusamus labore a vero. Quas inventore et qui aut maxime debitis.', '<p>Eaque sapiente recusandae et harum optio. Id sed fugiat molestias recusandae exercitationem. Ullam minus tempore sunt nobis sapiente sunt. Neque enim nam ipsam modi eveniet excepturi.</p><p>Sunt fugiat aut aliquid aut non dolorum necessitatibus. Deserunt et omnis suscipit hic qui. Et cupiditate aut qui quisquam itaque et. Repellat sit aut voluptatibus.</p><p>Officiis et omnis et quibusdam deserunt et. Aut nemo in necessitatibus quod quisquam. Commodi id sit est.</p><p>Dolorem incidunt facilis qui blanditiis perferendis. Voluptas optio laboriosam sapiente. Vero sunt ut qui expedita cum. Laborum deserunt ut blanditiis facilis itaque.</p><p>Temporibus earum facere alias quibusdam excepturi sunt laborum. Vel qui est nulla. Et sint aliquam esse vero ut consequuntur consequatur ut.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(7, 1, 1, 'Mollitia quibusdam qui a.', 'alias-deleniti-exercitationem-vero-quis-neque-iusto-quia', NULL, 'Aut molestias aut quidem laudantium laboriosam rerum suscipit. Ab vel quis reiciendis dolorem et recusandae. Sapiente nihil excepturi aut et blanditiis voluptatem quam.', '<p>Et excepturi possimus iure doloribus qui nihil. Consequuntur vel consequatur quia illum voluptas numquam aut. Doloremque ullam eos doloremque quo sint. Est adipisci vero commodi deleniti quos aperiam sunt ut.</p><p>Eos laudantium nobis velit incidunt quos est alias. Qui iure ab consequatur magni. Provident non tempore est illo quis aut ullam.</p><p>Non maxime ab delectus molestiae qui. Ut culpa officia ut et. Natus quasi corrupti dolore cumque atque. Adipisci omnis repellendus consectetur commodi et non neque.</p><p>Aperiam aperiam repellat iste voluptatibus et. Totam qui aliquid quia veniam et ut nesciunt. Et praesentium dolor corrupti ut maxime natus dolore. Eveniet totam est similique delectus.</p><p>Eius facilis atque officia incidunt. Quibusdam est occaecati asperiores sed pariatur qui iste. Aut architecto tempora voluptas dolorem voluptatem commodi reprehenderit. Tempora quidem qui numquam fugiat aspernatur eius.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(8, 3, 2, 'Consectetur ut modi dicta accusamus quos debitis ea dolore.', 'fuga-nihil-deleniti-minus', NULL, 'Corporis et aspernatur et accusantium cum unde. Accusantium aut impedit officia est est voluptatibus et. Ab debitis corrupti esse accusamus alias. Occaecati dolorem aut magni alias omnis.', '<p>Corporis cum perspiciatis ipsum. Sint repellendus libero aut est quaerat quisquam repellat. Eaque sint officia aut ea sit. Qui ducimus optio enim iure hic officia.</p><p>Sit id ut ut. Delectus iste ea aut.</p><p>Asperiores quod iusto commodi itaque quo mollitia. Fugiat autem deserunt in officia sunt qui et. Dolores aut aut magnam ratione natus aut eum.</p><p>Eveniet omnis nobis et accusamus sed. Nemo sapiente esse dolore facilis est quod enim. Quam quasi rem in.</p><p>Numquam corporis molestiae quidem in. Ducimus et rerum dolor. Laudantium quia corporis nisi inventore deleniti.</p><p>Et doloremque minus ut vitae dolorum consequatur. Reprehenderit sit corporis ducimus vel quos animi. Odit omnis ex laudantium eos fugiat rem.</p><p>Nisi voluptatem deleniti dolore minima fuga tempore cum laborum. Error recusandae odio ea placeat quo beatae excepturi molestiae. Deserunt in molestiae repudiandae repellendus at atque et. Cupiditate culpa repellat repudiandae. Magni explicabo sed nihil numquam officiis ad.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(9, 2, 2, 'Ut ut magnam unde voluptatem molestiae in.', 'reprehenderit-dicta-ex-veritatis', NULL, 'Earum adipisci placeat laudantium odio laudantium provident et. Rerum enim dignissimos nemo. Molestiae consequuntur et modi esse qui possimus quaerat.', '<p>Nostrum quasi ducimus qui possimus. Molestiae omnis nemo nesciunt enim quas quis.</p><p>Occaecati dolores aspernatur atque nesciunt laudantium. Et a voluptatem eligendi et veritatis. Et deserunt labore asperiores harum veritatis. Veritatis exercitationem quos occaecati exercitationem architecto in quae.</p><p>Eos aperiam quia velit debitis et. Fuga temporibus doloremque et quia sapiente sint. Doloremque incidunt ut officia molestias qui sunt et. Sint aut ut quasi quos.</p><p>Voluptatum pariatur facere deleniti et. Illum ducimus expedita eligendi perspiciatis quis omnis.</p><p>Vel recusandae commodi maiores non animi officiis animi. Soluta soluta delectus et eum sint accusantium culpa. Aliquam quisquam et accusamus natus. Veniam et accusantium consectetur modi.</p><p>Nam in voluptas est. Aut ipsa dolores voluptates enim. Laborum natus necessitatibus vel quisquam.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(10, 2, 3, 'Et quo corporis quis quaerat.', 'quia-ducimus-fuga-commodi-non-rem-eius-hic', NULL, 'Ipsa eum non aliquam voluptatem voluptate ut facere. Occaecati consequatur ut odio facilis possimus. Et veniam iste excepturi architecto cupiditate est suscipit. Ea laudantium molestias reprehenderit dignissimos consequatur.', '<p>Rem blanditiis unde ab et dolor eos. Et quia repudiandae ullam saepe ut. Velit et quis voluptates omnis unde voluptatem.</p><p>Nihil et laborum in incidunt et amet ipsum. Aliquam aut quis provident fugit ab non. Quisquam facilis provident tempora accusamus. Vero culpa sit sed aut.</p><p>Quas molestiae nesciunt omnis non maiores. Iusto ratione nam vel aut nulla totam porro. Et distinctio minima quidem laboriosam. Qui in earum voluptatem non eligendi provident.</p><p>Corrupti illum natus veritatis quis eveniet. Doloribus est voluptatibus dolores eveniet mollitia eos. Quisquam ipsum aut mollitia temporibus deserunt earum nihil. Facilis incidunt exercitationem voluptatem qui vel enim.</p><p>Ut aperiam nesciunt exercitationem voluptatem asperiores accusamus commodi neque. Maiores delectus ad quas. Distinctio sapiente enim architecto. Ea et est eum est ipsam.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(11, 2, 1, 'Est ut et nam occaecati.', 'dicta-consequatur-est-non-suscipit-eos-dolorem', NULL, 'Eveniet reprehenderit animi iusto recusandae debitis. Quos sit qui suscipit earum soluta porro quod. Quibusdam harum laboriosam rerum quod cupiditate dolorem qui illo. Quibusdam nesciunt laudantium et fuga nihil omnis. Quibusdam ducimus et voluptas possimus sit recusandae.', '<p>Architecto eos quos dolore iusto possimus optio. Molestiae a est suscipit sed nam.</p><p>Id maxime blanditiis impedit. Laborum nisi nihil assumenda at magnam voluptatibus voluptate. Et et sed in rerum. Nostrum laudantium nostrum fugiat odio laboriosam non.</p><p>Delectus est enim voluptatem minima et et voluptas. Mollitia vel voluptas voluptatibus deleniti omnis. Et autem sequi ut maiores voluptas recusandae provident. Ipsum adipisci libero libero explicabo unde eum incidunt.</p><p>Est quos aut ipsa quos excepturi. Libero modi sint dolorum sit necessitatibus laborum est. Laudantium saepe veritatis placeat eveniet alias pariatur.</p><p>Repudiandae voluptatem vero ex quasi. Expedita perspiciatis ut nemo eos illum numquam. Voluptatibus harum assumenda unde. Possimus magnam ratione tempora sed aliquam. Dolor quo et animi sunt.</p><p>Ea dignissimos repellendus suscipit ipsa. Voluptatum earum perferendis molestiae debitis repellat animi illo. Non rerum autem sapiente.</p><p>Voluptatem aut consequatur vitae consequatur. Sit animi exercitationem et nisi rerum. Ratione sequi accusantium placeat eligendi dolorem.</p><p>Assumenda id sed quos. Quod maiores sed ut quod.</p><p>Adipisci nisi provident nesciunt deleniti. Tempora ipsam quia ad. Aut sit temporibus cupiditate corporis provident aut.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(12, 1, 3, 'Ex sint impedit iure perspiciatis soluta.', 'deserunt-alias-veniam-quia-porro-consequatur-ad', NULL, 'Et commodi facere possimus. Esse ratione autem dolorem hic. Quod ea quia quia perferendis dolores magni.', '<p>Dolore quia quia veritatis laboriosam. Temporibus et nostrum aspernatur maxime eum voluptatem. Hic aut atque molestias quaerat id non. Non sunt facilis ab sed porro odio est. Numquam ad officia dolorum ipsam et.</p><p>Esse laboriosam iure eos soluta laudantium. Illum voluptas praesentium adipisci quia deserunt fugit dolor. Enim fugiat molestiae eos molestiae autem.</p><p>Accusantium dolores qui similique numquam quis labore. Nobis dolorem optio occaecati qui ratione ipsam fugiat maxime. Placeat voluptatem animi delectus reprehenderit quo.</p><p>Voluptatem dicta neque in aut neque et doloribus. Quis cumque ea doloribus est ex. Tenetur repellat voluptatem eveniet eos ipsam. Consectetur vitae illo qui eum sit quas.</p><p>Corrupti dignissimos sint eaque aliquid et. Quibusdam hic perspiciatis aliquam. Ratione eum quisquam natus fuga eum quidem. Est iure et molestiae maiores nisi laborum qui suscipit.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(13, 1, 2, 'Quo commodi et corporis deleniti aut praesentium error rem doloribus.', 'est-dolores-laborum-expedita-architecto', NULL, 'Ut illum ea fugiat beatae possimus minus saepe culpa. Dolorem ullam omnis vero iure eum dolor. Voluptatem voluptatibus vitae temporibus doloribus illum. Et mollitia atque et unde suscipit neque. Totam ipsa vero ab accusamus.', '<p>Veritatis tenetur maxime commodi fuga corrupti. Totam est quia eius. Occaecati aut repudiandae omnis quia vel voluptatibus. Laudantium repellendus autem eos ut.</p><p>Voluptatum explicabo est aut quis amet qui totam. Soluta sint quos aut temporibus aperiam eum officiis. Molestias aut tempore optio reprehenderit. Est autem at est dolores tempore asperiores qui.</p><p>Rerum dolorem velit recusandae doloremque iste et. Unde eum veniam vel ratione minus.</p><p>Aut laudantium laborum blanditiis consequatur nihil molestiae asperiores. At architecto non rerum quidem dolorem est. Temporibus autem id eaque fugit accusantium quo occaecati. Eos maiores explicabo esse dolores rem. Eum odio voluptatum est odio.</p><p>Perferendis qui numquam quae dolorum nihil repudiandae velit. Iure et molestiae ipsam et. Eligendi harum ea sit et quo animi. Et voluptas sed fuga nesciunt.</p><p>Facilis odio et dolore voluptatem. Perspiciatis itaque rerum quasi provident. Quam enim reiciendis rerum blanditiis est architecto quam aliquid.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(14, 2, 3, 'Unde voluptas sed ut fugiat quis rem dolorem.', 'saepe-ex-et-sed-eveniet-iusto-aliquid', NULL, 'Optio eos quisquam sed voluptates fugiat omnis. Eveniet laborum modi tempore a neque. Iure sit qui molestiae.', '<p>Omnis modi voluptas molestiae. Minima illo doloremque repellendus atque odio voluptas voluptatem doloribus.</p><p>Laudantium ut et corrupti maxime qui et. Ea nihil dolores non eius tempora aperiam.</p><p>Rerum laborum ad voluptas placeat ea dolores cupiditate. Commodi dolore eos odio dolor rerum dolore. Aut id saepe perferendis magni. Dolor sit quas nostrum necessitatibus consequatur eos ea harum.</p><p>Voluptas eveniet omnis earum omnis reiciendis in ea. Molestiae iusto id cumque repellendus. Distinctio sit et illum pariatur. Inventore quia ipsam qui ipsam velit fugiat.</p><p>Inventore laboriosam impedit explicabo cupiditate. Consectetur illo velit deserunt inventore error consequatur veniam. Voluptatem facilis ipsam sapiente esse corporis. Enim laudantium velit hic ipsum tempore molestias. Esse ea at sed aut totam dignissimos odio ea.</p><p>Qui quia ut numquam consequatur. Excepturi aperiam accusamus et ipsa culpa cumque modi. Sed consequuntur praesentium vero laborum explicabo reprehenderit magnam incidunt.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(15, 1, 1, 'Corrupti minus illum ut et suscipit.', 'enim-quo-ullam-nihil-sint-aut-quia', NULL, 'Ullam illo eius enim amet dolorum. Et tempora impedit omnis reprehenderit rerum.', '<p>Aut animi odit ipsa sed illum possimus. Non omnis consequuntur eveniet sapiente optio ut.</p><p>Dicta officiis omnis ut dignissimos. Repudiandae cum eaque fugiat consequatur aut sunt modi. Assumenda atque ea tempora libero.</p><p>Officiis ducimus et aspernatur fugit. Consectetur nobis accusantium quas ex ratione eligendi. Non aut aliquam est nostrum non. Est eaque optio odit.</p><p>Earum perferendis vel dolor facilis eligendi eum. Blanditiis officia vero voluptatem quae ut in est. Praesentium cum quis hic minima.</p><p>Nihil vitae harum qui quo delectus et. Exercitationem assumenda voluptatum quis sed. Asperiores ea quia et quas incidunt.</p><p>Molestiae iste sit suscipit. Distinctio illum voluptas quae. Harum tenetur eligendi vel voluptatem ut fuga debitis. Fuga iste sed quis.</p><p>Ut et recusandae dolores laboriosam libero velit. Perferendis ut sapiente tenetur saepe commodi et enim. Ab mollitia quo quas deleniti cumque. Temporibus praesentium et cumque.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(16, 3, 1, 'Quae aut enim voluptates.', 'officia-eligendi-saepe-nam-sint-ab-voluptatem', NULL, 'Et autem quis minus et ipsum reprehenderit. Eos rerum qui id reprehenderit. Aut est magnam at ullam ea debitis tempora sed.', '<p>Sunt quis rerum dicta. Quisquam accusamus at totam et dolorem velit. Corrupti labore veritatis aspernatur fuga labore.</p><p>Maiores ut pariatur culpa adipisci facilis qui aut. Consequatur temporibus voluptas eos sit. Odio voluptatibus consequatur facere odit. Ut dicta ut sapiente.</p><p>Incidunt consequatur possimus odit et. Est minima tempore cupiditate similique fugit. Rem enim voluptas deserunt at soluta facere totam. Officia error dolorem mollitia veritatis molestiae ab accusamus.</p><p>Nihil facere facere iusto placeat doloribus. Reiciendis dolorem asperiores est aut sit tempora rerum.</p><p>Architecto et iure corrupti qui sit minima. Quibusdam consequuntur tenetur ullam omnis ullam iure. Fugiat aut accusantium corrupti molestiae est.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(17, 3, 2, 'Aut rerum quia nostrum harum velit optio.', 'nostrum-voluptatum-dolore-possimus', NULL, 'Beatae hic exercitationem ut id voluptatem dolore. Eos tempora dolorum unde assumenda. Officia aliquam dolorem odit sed. Quibusdam amet aut sit velit labore eaque.', '<p>Suscipit ea qui est. Rerum architecto dolorum cumque quidem natus. Natus exercitationem et sit eos asperiores voluptatibus et. Qui sunt rem voluptas eius in veniam assumenda.</p><p>Laborum autem minus sequi placeat. Deleniti sed optio omnis voluptate dolor illum. Ea et et dicta laudantium distinctio earum vero.</p><p>Et blanditiis corporis in laboriosam voluptas sint eum. Est ex dignissimos perferendis aliquid. Dolorem exercitationem enim enim vel odit. In impedit accusantium quod quis dolore modi qui.</p><p>Voluptatem est ut quia illum illum. Perferendis id consequuntur enim est quibusdam consequatur reiciendis est. Ipsa aut adipisci ipsam facere.</p><p>Assumenda ad aut sint iste. Qui et architecto et eum. Nulla ex odit nobis voluptas praesentium neque aut. Quia assumenda eum quidem porro molestias non est ullam.</p><p>Voluptatibus nihil sunt enim porro. Est illum qui facere tempore necessitatibus sit est. Doloremque tempore rerum delectus voluptatem veniam beatae illo alias. Ipsum libero facere eius voluptatem tenetur.</p><p>Dolore iste nobis non sunt qui. Itaque illo mollitia quidem amet iure. Vitae aut quis magni aspernatur ex voluptatem. Necessitatibus consequatur maxime reiciendis in.</p><p>Rerum officiis ipsum est incidunt ut molestiae. Nihil id non dolor dolor atque. Magni illum quas non officia sunt officia sequi. Similique adipisci illo beatae deserunt rerum.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(18, 2, 1, 'Numquam fugit nihil architecto quo autem sit.', 'velit-ratione-sed-doloremque-voluptates-qui-aut', NULL, 'Sed consequatur temporibus harum. Quo est vel occaecati est. Impedit vitae at aut rerum corrupti.', '<p>Delectus voluptatem magni fugiat praesentium. Eaque illo voluptatum animi. Debitis fugit est culpa est ea et atque.</p><p>Rerum sed expedita cum ad quo. Error deserunt quod quis. Eligendi reiciendis quia sint aut sit ab autem optio. Saepe nam soluta officiis quos totam id quibusdam.</p><p>Fugiat rerum laboriosam est non ut. Consequuntur quis laboriosam quod vero autem quod nihil. Recusandae sed repudiandae doloremque. Voluptates ea rerum dicta est quo.</p><p>Ullam est nemo rerum magnam id aut. Aut totam est quo voluptatem animi cupiditate deleniti. Explicabo assumenda minima voluptatem et et maxime. Velit atque sit possimus omnis fugiat et ad.</p><p>Occaecati natus quibusdam ad voluptatem ipsa fuga magni non. Saepe harum nobis dolores. Optio sunt magni enim minima quisquam non. Sint doloremque mollitia quia voluptatem quod eos.</p><p>Perferendis numquam atque nihil. Quas ut doloribus facilis omnis. Voluptas est culpa ipsam animi praesentium fugiat ut. Adipisci molestias quam debitis ullam qui dicta ipsam.</p><p>Pariatur omnis numquam sit quisquam blanditiis. Corporis itaque dolorem autem quasi neque. Veniam et cupiditate reiciendis quasi sed error nobis. Est eligendi possimus corrupti.</p><p>Molestiae corrupti adipisci perferendis veritatis aut. Voluptatem iste ea repudiandae. Excepturi accusantium debitis quasi commodi dolore. Quis velit accusantium cupiditate possimus rerum.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(19, 3, 2, 'Odio quos architecto nihil.', 'voluptatum-accusantium-saepe-dolores-similique-eveniet-temporibus-esse', NULL, 'Distinctio nesciunt adipisci iure cumque odio. Reprehenderit est consectetur ipsa ab a sunt commodi. Quo quae suscipit vel aut autem reprehenderit. Est mollitia illo similique. Modi possimus ratione et perspiciatis numquam velit.', '<p>Adipisci aliquam eligendi asperiores non et. Ea sunt at cupiditate tempora ut in.</p><p>Et ut voluptatem recusandae occaecati et cupiditate porro. Et rem vel reprehenderit amet voluptatem impedit nihil. Quasi minus voluptas facilis id eaque quae.</p><p>Nostrum illum cumque esse est ea. Et qui vero nihil aperiam illo ut aliquam. Omnis natus perferendis quasi.</p><p>Illum qui quae maiores asperiores. Doloremque et nemo vitae sit. Aut soluta et eius natus. Est eaque rem sit nam velit.</p><p>Ea enim sed vel ad quis omnis repellendus omnis. Iure dicta rem deserunt explicabo quia aut minima sit.</p><p>Possimus fugiat molestiae et qui et. Est sint est dolor hic quia. Dolorem officiis ut et commodi culpa ea. Blanditiis eos est qui sed at quibusdam.</p><p>Dolorem repellat consequatur libero quo ipsa aspernatur libero. Sapiente blanditiis id dolores blanditiis est est non. Repudiandae recusandae quia odio maiores earum.</p><p>Deleniti et nesciunt facere deleniti. Voluptatibus aliquid aut excepturi in libero eveniet explicabo. Molestiae est sit nesciunt culpa hic itaque adipisci.</p><p>Deleniti numquam totam corporis natus dignissimos. Repudiandae ea doloremque distinctio et non vitae est non. Quo qui et sunt provident dolorum nemo aut.</p><p>Et non ut et et quam nesciunt et. Et sed non voluptas eos. Consectetur cupiditate eligendi deserunt ducimus velit. Quo sapiente et nihil saepe et quis.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(20, 1, 1, 'Aut non voluptas magni debitis.', 'quia-natus-quo-soluta-officia', NULL, 'Iusto impedit quis doloribus animi autem. Est inventore sed facilis debitis assumenda aut quia. Similique facere ex temporibus dolores.', '<p>Vitae corporis molestiae harum adipisci suscipit. Delectus unde in est dolor. Eveniet culpa optio dolorem qui minima. Fugit et ut ut molestiae amet pariatur nisi.</p><p>Rerum aliquid est dolor distinctio sapiente ipsum. Quia deserunt nobis officia officiis qui. Saepe architecto ut iusto blanditiis rem. Optio commodi architecto et perferendis.</p><p>Esse iure eum qui libero rem. Laudantium accusamus similique sit ea consequatur neque. Ipsa perspiciatis voluptatem a et. Nulla iure facilis aliquam est laboriosam labore velit.</p><p>Doloribus aut vel omnis itaque est. Autem dolor dicta dicta fugit. Blanditiis iure sed nostrum dolore laudantium commodi. Totam ut ut explicabo debitis inventore.</p><p>Deserunt in vel omnis sequi in aut asperiores est. Fugiat voluptatem saepe distinctio magnam totam inventore recusandae. Non assumenda et dicta unde. Sint totam id perspiciatis. Voluptatibus molestias et velit sit non quis numquam.</p><p>Sapiente sunt ullam tempora voluptatibus. Sit inventore blanditiis voluptas nobis sunt voluptate rem. Tempora distinctio repudiandae aliquam sint.</p><p>Sint ducimus a et nihil ipsum sequi. Provident vel dolorem minus totam consequuntur error enim. Deserunt dolore nostrum quas. Vel dicta voluptates nam ab dolor pariatur.</p>', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27'),
(29, 2, 1, 'cara membuat', 'cara-membuat', 'post-images/FYn2DZgyXtJArHzjErPaAGl4O4zrYTlRutvMW3PK.jpg', 'tes', '<div>tes</div>', NULL, '2022-03-22 20:04:51', '2022-03-22 20:05:11');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Jon', 'jon@gmail.com', 'jon', NULL, '$2y$10$iTHyfwW3qnTXtbztalDoD.jG1cZy63rcbkDTE3ptbL9MHRDD2yaVm', NULL, '2022-03-22 04:06:27', '2022-03-22 04:06:27', 1),
(2, 'Kacung Suwarno', 'ami@example.com', 'kusuma77', '2022-03-22 04:06:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'mT6aD7j5OJN9QAf4nTp6ZMeEIoXIfsJu2RdE4cgaO39kwfnK0jhkWRaRgidf', '2022-03-22 04:06:27', '2022-03-22 04:06:27', 0),
(3, 'Chandra Danang Sinaga', 'indah67@example.org', 'puput.megantara', '2022-03-22 04:06:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'bFBcnBtKeQ', '2022-03-22 04:06:27', '2022-03-22 04:06:27', 0),
(4, 'Vanya Utami S.Gz', 'irawan.jasmani@example.net', 'prastuti.cahya', '2022-03-22 04:06:27', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '8HMEKIv9Ag', '2022-03-22 04:06:27', '2022-03-22 04:06:27', 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
