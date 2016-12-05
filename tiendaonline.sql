--
-- Base de datos: `tiendaonline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carrito`
--

CREATE TABLE `carrito` (
  `id_producto` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `cantidadPedido` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `carrito`:
--   `id_producto`
--       `productos` -> `id`
--   `id_user`
--       `users` -> `id`
--

--
-- Volcado de datos para la tabla `carrito`
--

INSERT INTO `carrito` (`id_producto`, `id_user`, `cantidadPedido`, `created_at`, `updated_at`) VALUES
(2, 4, 4, '2016-12-05 12:08:25', '2016-12-05 16:57:36'),
(21, 4, 2, '2016-12-05 12:14:23', '2016-12-05 18:08:48');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre_categoria` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `categorias`:
--

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre_categoria`, `created_at`, `updated_at`) VALUES
(3, 'armas principales', '2016-11-22 04:14:44', '0000-00-00 00:00:00'),
(4, 'armas de mano', '2016-11-22 04:14:44', '0000-00-00 00:00:00');

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
-- RELACIONES PARA LA TABLA `comentarios`:
--   `id_producto`
--       `productos` -> `id`
--   `id_user`
--       `users` -> `id`
--

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `id_producto`, `id_user`, `comentario`, `estrellas`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 'hola a todos', 5, '2016-12-05 15:49:25', '2016-12-05 15:49:25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `compras`:
--   `id_user`
--       `users` -> `id`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `compras_productos`
--

CREATE TABLE `compras_productos` (
  `id` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `importe` float NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `compras_productos`:
--   `id_compra`
--       `compras` -> `id`
--   `id_producto`
--       `productos` -> `id`
--

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
-- RELACIONES PARA LA TABLA `migrations`:
--

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

--
-- RELACIONES PARA LA TABLA `password_resets`:
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `precio` float NOT NULL,
  `cantidad` int(11) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `codigo` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `productos`:
--

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio`, `cantidad`, `imagen`, `codigo`, `created_at`, `updated_at`) VALUES
(1, 'cuchillo', 'Es un arma a distancia que puede lanzarse para dañar a los enemigos y causar hemorragia.', 25, 0, 'arma5.png', 123, '2016-12-05 09:40:46', '0000-00-00 00:00:00'),
(2, 'Lanzacohetes ', 'Con el Lanzacohetes se disparan misiles que viajan a una velocidad de aproximadamente 75''6Km/h.', 30, 4, 'RocketLauncher.png', 45567, '2016-11-22 08:12:44', '0000-00-00 00:00:00'),
(3, 'Jardinero', 'El Jardinero es un arma cuerpo a cuerpo contribuida por la comunidad para el Soldier.', 40, 3, 'MarketGardener.png', 45465, '2016-11-22 08:15:21', '0000-00-00 00:00:00'),
(12, 'Sniper Rifle', 'muy potente a larga distancia', 32, 3, 'sniper.png', 3435, '2016-11-22 13:48:46', '2016-11-22 13:48:46'),
(13, 'Desengrasador ', 'esta arma es mala por que no hace tanto daño como parese si tu tienes el dragon', 32, 3, 'BackpackDegreaser.png', 45467, '2016-11-22 08:19:34', '2016-11-22 14:18:27'),
(14, 'Paratenseco', 'Cada tiro dispara multiples perdigones de cuatro canones diferentes', 34, 4, 'paratenseco.png', 5643, '2016-11-29 10:40:06', '2016-11-29 10:40:06'),
(15, 'Retroescopeta', 'es un arma primaria creada por la comunidad para el Scout que fue introducida en la Actualizacion Amor & Guerra', 32, 5, 'retroescopeta.png', 6797, '2016-11-29 10:40:07', '2016-11-29 10:40:07'),
(16, 'Pistola', 'La pistolaÿes el arma secundaria para elÿscoutÿy elÿengineer', 22, 3, 'pistola.png', 5678, '2016-11-29 10:40:07', '2016-11-29 10:40:07'),
(17, 'Bate', 'Elÿbateÿes el armaÿcuerpo a cuerpoÿpor defecto para elÿscout', 23, 4, 'bate.png', 5673, '2016-11-29 10:40:07', '2016-11-29 10:40:07'),
(18, 'Caja Negra', 'Es un Lanzacohetes negro y rectangular con bordes curvos teniendo dos bandas cerradoras cerca del final frontal', 34, 6, 'cajanegra.png', 3577, '2016-11-29 10:40:07', '2016-11-29 10:40:07'),
(19, 'Pala', 'Es una pala plegable y portatil tambien conocidaa como un util de trinchera', 21, 3, 'pala.png', 2212, '2016-11-29 10:40:07', '2016-11-29 10:40:07'),
(20, 'Lanza llamas', 'Es un tubo largo de metal que va conectado a un tanque de propano', 43, 3, 'lanzallamas.png', 7890, '2016-11-29 10:40:07', '2016-11-29 10:40:07'),
(21, 'Bastón de Caramelo', 'Scout mientras tienes equipado el Bastón de Caramelo también dejará pack de Salud.', 222, 3, 'baston.png', 34423, '2016-12-05 09:44:07', '2016-11-29 11:44:15');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_categorias`
--

CREATE TABLE `productos_categorias` (
  `id_pc` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- RELACIONES PARA LA TABLA `productos_categorias`:
--   `id_categoria`
--       `categorias` -> `id`
--   `id_producto`
--       `productos` -> `id`
--

--
-- Volcado de datos para la tabla `productos_categorias`
--

INSERT INTO `productos_categorias` (`id_pc`, `id_producto`, `id_categoria`, `created_at`, `updated_at`) VALUES
(7, 1, 4, '2016-11-29 11:26:01', '2016-11-29 11:26:01'),
(8, 20, 3, '2016-11-29 11:30:37', '2016-11-29 11:30:37'),
(9, 21, 4, '2016-11-29 11:44:56', '2016-11-29 11:44:56'),
(10, 3, 4, '2016-11-29 12:06:37', '2016-11-29 12:06:37'),
(11, 17, 4, '2016-11-29 12:09:15', '2016-11-29 12:09:15'),
(12, 2, 3, '2016-12-01 02:16:16', '2016-12-01 02:16:16'),
(13, 12, 3, '2016-12-04 05:04:53', '2016-12-04 05:04:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- RELACIONES PARA LA TABLA `users`:
--

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `age`, `address`, `phone`, `email`, `password`, `remember_token`, `admin`, `created_at`, `updated_at`) VALUES
(1, 'joel', 0, '', '0', 'joel@hotmail.com', '$2y$10$Bo9XNgiYNwIcwW4pXfDAOuegxzYZMa23sC99aHRuAOy7iMUPhubPq', 'dKPvEEE15BwH8HcfieA0KReyqGf0XhuQKxoTOKwWo8KqU0cdep84SwcPamBH', 1, '2016-11-01 03:04:13', '2016-12-05 10:33:06'),
(4, 'jose', 19, 'barrancos', '223123', 'jgamezperez@gmail.com', '$2y$10$rhaiH9jm/6e31NLtcfxfBOGvAKXGz.a3cCS044r8q1bdlLv0F5YNO', 'mTc5j1iyS0nAFuzmXZ19NuHXKc2RyqEdoL48q1hAccyIxe1fEIlxucFVI2FB', 0, '2016-11-15 03:57:29', '2016-12-05 15:41:25'),
(5, 'daniela', 20, 'josefa ortiz', '665577', 'daniela@gmail.com', '$2y$10$SkTFLaUKlblfhCuXkSPElegYIkjakg9ISgImBaULq6dkZA92p20ri', 'qeQO0D8iXpqJc93wptBbTjQRwhkm9d43JZ5tZQSsbWH2xNoGnqxHjM109Nes', 0, '2016-11-16 10:15:50', '2016-11-21 07:43:16'),
(6, 'manuel', 23, 'barrancos', '23232', 'manu@gmail.com', '$2y$10$fbtuhH7DyCOSvUPumCBEIesPvLtgEZSNMhaXPl7jh39m2c6EzxSXu', 'LE0ygAngq0hwXDVLn1jT3w7oSeBWKAHQjzf27VFqmwJDlM3FwfQYBeRQVWRJ', 0, '2016-11-16 10:16:57', '2016-11-16 10:17:24'),
(7, 'david', 12, 'barrancos', '2344', 'david@gmail.com', '$2y$10$moBM1dc6LMFXZalhLRo5y.Ra0rGPBiIb.eB3YOCX/nYJUrxPsbTM.', 'LayM7gpJ26gLs4F9h7aH3LoXLXek87iIhc2UoN6bNF8GRDvPbhLMfU63lcUa', 0, '2016-11-16 23:55:09', '2016-11-16 23:56:33'),
(8, 'omar', 24, 'barranchos', '23242', 'omar@gmail.com', '$2y$10$ru01jfaRNVfPIcEsAuwXeuckd5PORGQ3LqPHmAy.kOvvmQnnl9dri', 'nhR4T9oIXXUOZS9g7XZvQbj2nJhNg4uJHDyBj360LaBilmR3dk5oo9dfX62r', 0, '2016-11-17 02:48:59', '2016-11-29 13:58:04');

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
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `compras_productos`
--
ALTER TABLE `compras_productos`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `compras_productos`
--
ALTER TABLE `compras_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `productos_categorias`
--
ALTER TABLE `productos_categorias`
  MODIFY `id_pc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
