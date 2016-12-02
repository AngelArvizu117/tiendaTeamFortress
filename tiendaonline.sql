-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-11-2016 a las 09:20:04
-- Versión del servidor: 10.1.16-MariaDB
-- Versión de PHP: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tiendaonline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`) VALUES
(1, 'armas principales'),
(2, 'armas secundarias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `comentario` varchar(245) NOT NULL,
  `estrellas` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_producto`, `id_user`, `comentario`, `estrellas`, `created_at`, `updated_at`) VALUES
(42, 2, 1, 'GG ez pz', 3, '2016-11-22 07:17:26', '2016-11-22 07:17:26'),
(43, 2, 1, 'me gusta esta arma :3', 2, '2016-11-22 07:19:32', '2016-11-22 07:19:32'),
(44, 2, 4, 'hola soy nuevo aqui', 5, '2016-11-22 07:32:31', '2016-11-22 07:32:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id_com` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras_productos`
--

CREATE TABLE `compras_productos` (
  `id_cp` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_p` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `codigo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_p`, `nombre`, `descripcion`, `precio`, `cantidad`, `imagen`, `codigo`, `created_at`, `updated_at`) VALUES
(1, 'cuchillo', 'Es un arma a distancia que puede lanzarse para dañar a los enemigos y causar hemorragia.', 25, 2, 'https://wiki.teamfortress.com/w/images/6/62/Flying_Guillotine_Blooded.png?t=20140203001103', 123, '2016-11-16 01:34:57', '0000-00-00 00:00:00'),
(2, 'Lanzacohetes ', 'Con el Lanzacohetes se disparan misiles que viajan a una velocidad de aproximadamente 75''6Km/h.', 30, 4, 'https://wiki.teamfortress.com/w/images/1/1d/Backpack_Rocket_Launcher.png?t=20120601003839', 45567, '2016-11-16 05:03:40', '0000-00-00 00:00:00'),
(3, 'Jardinero', 'El Jardinero es un arma cuerpo a cuerpo contribuida por la comunidad para el Soldier. Es una pala con un mango de madera amarrada con metal verde.', 40, 3, 'https://wiki.teamfortress.com/w/images/d/db/Backpack_Market_Gardener.png?t=20110624022316', 45465, '2016-11-16 05:14:33', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_categorias`
--

CREATE TABLE `productos_categorias` (
  `id_pc` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos_categorias`
--

INSERT INTO `productos_categorias` (`id_pc`, `id_producto`, `id_categoria`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `address`, `phone`, `email`, `password`, `remember_token`, `admin`, `created_at`, `updated_at`) VALUES
(1, 'joel', 0, '', 0, 'joel@hotmail.com', '$2y$10$Bo9XNgiYNwIcwW4pXfDAOuegxzYZMa23sC99aHRuAOy7iMUPhubPq', 'D65YG6WbfsFT0VTwTOF6TMd3KphxzDJJkczGNxUd4ywpHMeRKzlsWA5fu86d', 1, '2016-11-01 03:04:13', '2016-11-22 07:25:07'),
(2, 'angel', 0, '', 0, 'angel@gmail.com', '$2y$10$mHoTmlgbEad3GG3Yd4FSzOM1NaEDCAjBK3tb.WFjrpXDUcpSQQLnq', 'W8OalDop6dvXjICu7evHhPgftSJ0zUcVp6HmiIZyi2mTUt3l2hHWkKn91DqR', 0, '2016-11-01 03:26:00', '2016-11-21 08:56:14'),
(3, 'efrain', 0, '', 0, 'efrain@gmail.com', '$2y$10$POlS2QXdZgg6OYHz00OxzubqI62tXBcccCa.ZaH4m3TInHHOqNbPq', 'F4IHau72yO9612eBmb1oJ7TnD58Dnm1GjfMQ2cAukkFPrx4zQYOaqxTsV4QR', 0, '2016-11-08 03:14:34', '2016-11-08 03:15:37'),
(4, 'jose', 19, 'barrancos', 223123, 'jose@gmail.com', '$2y$10$rhaiH9jm/6e31NLtcfxfBOGvAKXGz.a3cCS044r8q1bdlLv0F5YNO', 'mI3weIvUJhNQV1dkEtNgG1tWLy7uGbXDeCOmDIvXwUh6bGwEFwfOQTj1gDfE', 0, '2016-11-15 03:57:29', '2016-11-21 08:54:39'),
(5, 'daniela', 20, 'josefa ortiz', 665577, 'daniela@gmail.com', '$2y$10$SkTFLaUKlblfhCuXkSPElegYIkjakg9ISgImBaULq6dkZA92p20ri', 'qeQO0D8iXpqJc93wptBbTjQRwhkm9d43JZ5tZQSsbWH2xNoGnqxHjM109Nes', 0, '2016-11-16 10:15:50', '2016-11-21 07:43:16'),
(6, 'manuel', 23, 'barrancos', 23232, 'manu@gmail.com', '$2y$10$fbtuhH7DyCOSvUPumCBEIesPvLtgEZSNMhaXPl7jh39m2c6EzxSXu', 'LE0ygAngq0hwXDVLn1jT3w7oSeBWKAHQjzf27VFqmwJDlM3FwfQYBeRQVWRJ', 0, '2016-11-16 10:16:57', '2016-11-16 10:17:24'),
(7, 'david', 12, 'barrancos', 2344, 'david@gmail.com', '$2y$10$moBM1dc6LMFXZalhLRo5y.Ra0rGPBiIb.eB3YOCX/nYJUrxPsbTM.', 'LayM7gpJ26gLs4F9h7aH3LoXLXek87iIhc2UoN6bNF8GRDvPbhLMfU63lcUa', 0, '2016-11-16 23:55:09', '2016-11-16 23:56:33'),
(8, 'omar', 24, 'barranchos', 23242, 'omar@gmail.com', '$2y$10$ru01jfaRNVfPIcEsAuwXeuckd5PORGQ3LqPHmAy.kOvvmQnnl9dri', 'bnV6OM8615B6eCIrA9PinKNmmDowgwKf1FUaUZL9PuHAtR8yUBVoG93TYWm3', 0, '2016-11-17 02:48:59', '2016-11-17 02:49:07');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id_com`);

--
-- Indices de la tabla `compras_productos`
--
ALTER TABLE `compras_productos`
  ADD PRIMARY KEY (`id_cp`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_p`);

--
-- Indices de la tabla `productos_categorias`
--
ALTER TABLE `productos_categorias`
  ADD PRIMARY KEY (`id_pc`);

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
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id_com` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `compras_productos`
--
ALTER TABLE `compras_productos`
  MODIFY `id_cp` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_p` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `productos_categorias`
--
ALTER TABLE `productos_categorias`
  MODIFY `id_pc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
