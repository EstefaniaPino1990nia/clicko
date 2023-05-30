-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-05-2023 a las 13:31:12
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `usuariosclicko`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `PrimerApellido` varchar(255) NOT NULL,
  `SegundoApellido` varchar(255) NOT NULL,
  `Correo` varchar(255) NOT NULL,
  `Foto` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `Nombre`, `PrimerApellido`, `SegundoApellido`, `Correo`, `Foto`, `created_at`, `updated_at`) VALUES
(2, 'Estefania', 'pino', 'salazar', 'eps.estefania@gmail.com', 'uploads/X76r9fxxUtDw0y5kzynOyJyfWcEnjYDkUbt3RAp5.jpg', NULL, '2023-05-30 08:31:50'),
(3, 'Marta', 'garcia', 'prieto', 'marta20@gmail.com', 'uploads/DUUKn8VlFL5dVq0GQ7XiD0Z4nTorJoqm76rmtadK.jpg', NULL, NULL),
(6, 'Carlos', 'Sans', 'puig', 'carlos@hotmail.com', 'uploads/qHxQIvb3VUgw0bno2RIjn8Hzi9XbzvQXjl9KNAnL.jpg', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_05_29_134526_create_empleados_table', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sara', 'sara@gmail.com', NULL, '$2y$10$hzSuaGUI1ER5fWjTzecm4.MSAgobQ1YrCh.TtF/eaTVTIy1qFp0SW', NULL, '2023-05-29 17:05:49', '2023-05-29 17:05:49'),
(2, 'Estefania', 'eps.estefania@gmail.com', NULL, '$2y$10$a1fxtRbGApjY2eTusozk7.ue/lKQgNmB48DoYqWlNO2RwigslYmyC', NULL, '2023-05-29 17:43:44', '2023-05-29 17:43:44'),
(3, 'Prof. Heber Denesik Sr.', 'bessie.medhurst@example.net', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jumdGIHrA5', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(4, 'Dr. Brady Feeney I', 'malcolm88@example.net', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'daemrEDC12', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(5, 'Malinda Runolfsdottir', 'lawson93@example.com', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BNGs6bwgsh', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(6, 'Laury Johns', 'lharvey@example.com', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YSwDU9rTl2', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(7, 'Mrs. Annabell Johnson Jr.', 'johns.constantin@example.com', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'kf95xOH6BY', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(8, 'Brendon Lemke', 'jalen21@example.org', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'm1UWaLmL0S', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(9, 'Vernie Harber', 'kelley40@example.org', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Q3QegB4QoL', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(10, 'Mr. Jordi Deckow', 'arianna16@example.org', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'XzAT77RjH6', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(11, 'Kaya Hudson', 'mauricio.herzog@example.net', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'tzPbmYAmbu', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(12, 'Haven Feeney', 'bogan.yazmin@example.org', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'NSLI7hvWRJ', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(13, 'Mertie Farrell', 'qdaniel@example.net', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '2asQHMSmOG', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(14, 'Andre Ratke', 'freda.halvorson@example.org', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'BPxFONQSZi', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(15, 'Everette Kihn', 'chris51@example.net', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'TAdHQm8Gop', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(16, 'Lavada Aufderhar', 'savanah63@example.org', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KnIQX1xpzU', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(17, 'Harold Mitchell', 'ebony93@example.org', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'lFwHUMAoj9', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(18, 'Adan Goyette', 'tracy.braun@example.com', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'LVKhmiI3Ko', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(19, 'Dr. Herminio Boyer', 'adella68@example.net', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '3I5QorxuBU', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(20, 'Prof. Rachel Feeney IV', 'streich.tamara@example.org', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '7jpOsneUkb', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(21, 'Mr. Elmo Smitham I', 'lilian98@example.org', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'oMCvxcg9ZR', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(22, 'Alvah Tromp', 'hackett.destiney@example.net', '2023-05-29 19:13:46', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'V1gwZUi3nm', '2023-05-29 19:13:46', '2023-05-29 19:13:46'),
(23, 'Carlota', 'carlota@clicko.es', NULL, '$2y$10$AMZMIGqo3J/AgKBynqXZruBqkgM5Cg8/bNSi3IB2suQNIuijCLN2u', NULL, '2023-05-29 19:50:06', '2023-05-29 19:50:06'),
(24, 'marta', 'marta@clicko.es', NULL, '$2y$10$GOROemMFEuObAqyjtSeio.mQmXHb2arlekt3Q/81m88IFXBPNOPqa', NULL, '2023-05-29 19:50:44', '2023-05-29 19:50:44'),
(25, 'miguel', 'miguel@clicko.es', NULL, '$2y$10$hMvIh/ZwROjF8c5o9cgsj.JcnvfAvZEdT26AKZOKG8V2RFsllG/su', NULL, '2023-05-29 19:51:20', '2023-05-29 19:51:20'),
(26, 'noelia', 'noelia@clicko.es', NULL, '$2y$10$GjFag/M.nkRYOzplj9LE1.0.c.4Qru3.TcyOc3iZ4V9zpF8EqSymC', NULL, '2023-05-29 19:51:58', '2023-05-29 19:51:58'),
(27, 'blanca', 'blanca@clicko.es', NULL, '$2y$10$5SOZar751s3AlrOzZPbBTO1spLLs5slHcm2s8pdecEEzk8XsbLcn.', NULL, '2023-05-29 19:52:46', '2023-05-29 19:52:46'),
(28, 'dani', 'dani@gmail.com', NULL, '$2y$10$haTbN2dueBFhBhe1pe0GNu2AfrWWgmS2e8ElsyeHpt2rWf0g2X/Ua', NULL, '2023-05-29 19:53:22', '2023-05-29 19:53:22');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indices de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
