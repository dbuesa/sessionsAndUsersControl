-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 21-10-2023 a las 23:05:15
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pt03_david_buesa`

DROP DATABASE IF EXISTS `pt03_david_buesa`;
--
CREATE DATABASE IF NOT EXISTS `pt03_david_buesa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pt03_david_buesa`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `descripcio` text NOT NULL,
  `usuari_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `articles`
--

INSERT INTO `articles` (`article_id`, `descripcio`, `usuari_id`) VALUES
(1, 'Smartphone de última generación: Este innovador smartphone cuenta con una pantalla OLED de 6.5 pulgadas que ofrece colores vivos y un contraste impresionante. Además, su cámara de 108 MP te permitirá capturar imágenes nítidas y detalladas, incluso en condiciones de poca luz. Es la combinación perfecta de estilo y rendimiento para mantenerte conectado en todo momento.', NULL),
(2, 'Zapatillas deportivas ideales para correr: Estas zapatillas están diseñadas pensando en los corredores exigentes. Incorporan una tecnología de amortiguación avanzada que absorbe el impacto y proporciona una sensación de comodidad incomparable. Ya sea que estés entrenando para una maratón o dando un paseo, estas zapatillas te brindarán el soporte necesario para tus pies.', NULL),
(3, 'Elegante reloj de pulsera: Este reloj es una obra maestra de la relojería. Su correa está hecha de cuero genuino de alta calidad y su movimiento es automático, lo que significa que se carga con el movimiento de tu muñeca, eliminando la necesidad de baterías. Su diseño elegante y atemporal lo convierte en un accesorio perfecto para cualquier ocasión.', NULL),
(4, 'Libro bestseller de ciencia ficción: Sumérgete en un emocionante mundo de ciencia ficción con este libro bestseller. Sus páginas están llenas de intriga, personajes cautivadores y un argumento que te mantendrá en vilo desde la primera página. Una lectura imprescindible para los amantes del género.', NULL),
(5, 'Set de utensilios de cocina de acero inoxidable: Este set de utensilios de cocina no solo es duradero, sino que también es elegante. Fabricados con acero inoxidable de alta calidad, estos utensilios son resistentes a la corrosión y fáciles de limpiar. Prepara deliciosos platillos con la confianza de que estás utilizando herramientas de alta calidad.', NULL),
(6, 'Bicicleta de montaña todoterreno: Para los amantes de la aventura al aire libre, esta bicicleta de montaña es perfecta. Con neumáticos diseñados para todo tipo de terrenos, suspensiones de alta calidad y un cuadro resistente, te llevará a través de rutas desafiantes con facilidad y comodidad.', NULL),
(7, 'Juego de sábanas de algodón egipcio: Transforma tu dormitorio en un oasis de comodidad con este juego de sábanas de algodón egipcio. Su suavidad y transpirabilidad te aseguran una noche de sueño reparador, mientras que su elegante diseño aporta un toque de lujo a tu habitación.', NULL),
(8, 'Cámara de acción resistente al agua: Captura tus aventuras al aire libre con esta cámara de acción resistente al agua. Graba videos en alta definición y toma fotos espectaculares en condiciones extremas. Ya sea que estés haciendo snorkel en el océano o escalando una montaña, esta cámara estará a la altura del desafío.', NULL),
(9, 'Mochila de senderismo con sistema de hidratación: Esta mochila de senderismo está diseñada para los entusiastas de la naturaleza. Cuenta con un sistema de hidratación integrado que te permite mantenerse bien hidratado durante tus excursiones. Además, ofrece un amplio espacio de almacenamiento y una construcción resistente para enfrentar los rigores del aire libre.', NULL),
(10, 'Teclado mecánico para gaming: Los jugadores serios adorarán este teclado mecánico diseñado especialmente para gaming. Sus interruptores mecánicos ofrecen una respuesta táctil precisa y una durabilidad excepcional, mientras que la retroiluminación RGB personalizable te permite crear un ambiente de juego único.', NULL),
(11, 'Secador de pelo iónico de alta potencia: Olvídate del frizz y el daño causado por el calor con este secador de pelo iónico de alta potencia. Su tecnología avanzada reduce el tiempo de secado y deja tu cabello suave y brillante. Un aliado imprescindible en tu rutina de cuidado capilar.', NULL),
(12, 'Cafetera de espresso automática: Prepara el café perfecto con esta cafetera de espresso automática. Con solo tocar un botón, podrás disfrutar de espresso, cappuccinos y lattes de calidad profesional en la comodidad de tu hogar. Su diseño elegante complementará tu cocina a la perfección.', NULL),
(13, 'Máquina de ejercicios de resistencia: Mantén tu cuerpo en forma con esta máquina de ejercicios de resistencia. Ofrece una amplia variedad de ejercicios para tonificar y fortalecer todos los grupos musculares. Su diseño compacto te permite usarla en casa o llevarla contigo a donde vayas.', NULL),
(14, 'Bolso de cuero genuino para laptop: Este bolso de cuero genuino es la combinación perfecta de estilo y funcionalidad. Además de tener espacio para tu laptop, cuenta con múltiples bolsillos para organizar tus pertenencias. Ideal para el trabajo o los viajes de negocios.', NULL),
(15, 'Set de pinceles de maquillaje profesional: Logra un look impecable con este set de pinceles de maquillaje profesional. Cada pincel está diseñado para una aplicación precisa y uniforme de maquillaje. Ya seas un profesional o un aficionado, estos pinceles elevarán tu juego de maquillaje.', NULL),
(16, 'Altavoz Bluetooth resistente al agua: Lleva la música contigo a todas partes con este altavoz Bluetooth resistente al agua. Su diseño resistente te permite usarlo en la piscina o la playa sin preocupaciones. Además, ofrece un sonido claro y potente para animar cualquier reunión.', NULL),
(17, 'Kit de herramientas para bricolaje: Este completo kit de herramientas es imprescindible para cualquier entusiasta del bricolaje. Incluye una amplia gama de herramientas de alta calidad, desde destornilladores hasta martillos, en un estuche resistente y fácil de transportar.', NULL),
(18, 'Tetera de hierro fundido con diseño tradicional: Disfruta del ritual del té con esta tetera de hierro fundido con un diseño tradicional japonés. Conserva el calor durante mucho tiempo y realza el sabor de tus tés favoritos. Además, su aspecto estético es un encanto para cualquier hogar.', NULL),
(19, 'Silla ergonómica de oficina: Trabaja con comodidad y estilo en esta silla ergonómica de oficina. Su diseño ajustable y su soporte lumbar te ayudarán a mantener una postura saludable durante largas horas de trabajo. Un mueble esencial para tu espacio de trabajo en casa.', NULL),
(20, 'Set de maletas de viaje a juego: Prepara tus maletas con estilo gracias a este set de maletas de viaje a juego. Con diferentes tamaños para adaptarse a tus necesidades de empaque, cuentan con ruedas giratorias y asas retráctiles para facilitar tus desplazamientos.', NULL),
(21, 'Purificador de aire con filtro HEPA: Mejora la calidad del aire en tu hogar con este purificador de aire equipado con un filtro HEPA de alta eficiencia. Elimina alérgenos, polvo y partículas contaminantes para crear un ambiente más saludable. Ideal para personas con alergias o problemas respiratorios.', NULL),
(22, 'Sartén antiadherente de cerámica: Cocina de manera más saludable con esta sartén antiadherente de cerámica. Su revestimiento libre de PFOA facilita la preparación de alimentos con menos aceite y una fácil limpieza. La distribución uniforme del calor garantiza resultados deliciosos.', NULL),
(23, 'Kit de jardinería para principiantes: Si estás interesado en la jardinería, este kit es perfecto para comenzar. Incluye herramientas esenciales, semillas de flores y una guía paso a paso para ayudarte a cultivar un hermoso jardín.', NULL),
(24, 'Cepillo de dientes eléctrico de última generación: Mantén tu sonrisa brillante y saludable con este cepillo de dientes eléctrico de última generación. Ofrece una limpieza superior y cuenta con modos de cepillado personalizables. La tecnología avanzada te ayuda a mejorar tu salud bucal.', NULL),
(25, 'Manta de lujo con reverso de felpa: Envuélvete en la suavidad y el lujo de esta manta con reverso de felpa. Perfecta para noches frías de invierno o para relajarte en el sofá. Su diseño elegante y colores vibrantes la convierten en un complemento decorativo para tu hogar.', NULL),
(62, 'hola mundo', 44),
(67, 'Hola mundo cruel', 27),
(69, 'aaa', 42),
(74, 'aaaa', 46),
(76, 'Hola', 27);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuaris`
--

CREATE TABLE `usuaris` (
  `usuari_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuaris`
--

INSERT INTO `usuaris` (`usuari_id`, `username`, `password`) VALUES
(27, 'dbuesa', '$2y$10$k5UojF4XwnLI85nsrs9hZOURksnt1IEgZJYIbtCf58cvDFBvQnkbG'),
(39, 'd.buesa@sapalomera.cat', '$2y$10$2ytUQ87t/SIBuk0jeZu1se0/WZ7IVJO8kOMqp5M67IDpW3ICbABZO'),
(40, 'd.buesa@sapalomera.cataa', '$2y$10$cDcVrBhtsqKAmS3A./jnSerc.SnpZAAg1W0KQAG6EU9l36LJutVAy'),
(41, 'd.buesa@sapalomera.cataaa', '$2y$10$P5rDD9IzWI383v1TMKoxXOkauT1U7fqUuNUkpSnpbW6hN6o/YaMBe'),
(42, 'dbuesa2', '$2y$10$JFczNbNafIV2qT4Y88LQ6.4N6XEpLHlXxnkK0vFN2quNTXLQR.hGq'),
(43, 'd.buesa', '$2y$10$VVfm53Yicj.PuJOFxf0KqepFhlrgWWbI0jdursrGlXgt.qwNjO.kO'),
(44, 'olguita', '$2y$10$eH3/27FfMAJRIPy1RHNnTOFWUgGPHQ.I8Am1kKuFEZoLR7F7.cNIu'),
(45, 'dbuesa4', '$2y$10$3VPicsM3wCIDT0bvAVxbtu0eT40lU2nyPOsDm1g5/d4c3e3Uo.NQq'),
(46, 'joselu', '$2y$10$E5CPqrs9xK0N001DSZ7JFO.8UYDZ5JWu4ZlZ4dvATkROOVsrwVtMi'),
(47, 'helena22', '$2y$10$v1EgsdUpQa9Lm5KUESPpVenssWR0BRtFrMPXNG.xxtHtWP3ysR7iG'),
(48, 'dddddd', '$2y$10$TBeutFezvUUS3OS7RQyGC.NZJh.HBKDk5V2UjKP.GHtSqiaMCl3XW'),
(49, 'heleeeee', '$2y$10$aYB3KWooJ3BHBRGjIKyVOO6pJEq6ZlgDJYDqe4RCjtrc/vGGrXVAK');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `fk_articles_usuari_id` (`usuari_id`);

--
-- Indices de la tabla `usuaris`
--
ALTER TABLE `usuaris`
  ADD PRIMARY KEY (`usuari_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `usuaris`
--
ALTER TABLE `usuaris`
  MODIFY `usuari_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `fk_articles_usuari_id` FOREIGN KEY (`usuari_id`) REFERENCES `usuaris` (`usuari_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
