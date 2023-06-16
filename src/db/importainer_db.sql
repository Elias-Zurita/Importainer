-- Creacion de la Base de Datos
CREATE DATABASE importainer_db;

-- Seleccion de la Base de Datos
USE importainer_db;

DROP TABLE IF EXISTS categoria;
-- Creacion de tabla de categoria
CREATE TABLE IF NOT EXISTS categoria (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(100) NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL
);

-- Ingreso de datos a categoria
INSERT INTO categoria (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Casa Classic', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(2, 'Casa Comfort', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(3, 'Casa Premium', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(4, 'Casa de Campo', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(5, 'Casa Tiny', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(6, 'Duplex', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(7, 'Combo', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(8, 'Exteriores', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(9, 'Emprendimientos', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(10, 'Oficinas', '2023-06-06 09:00:00', '2023-06-06 09:00:00');

DROP TABLE IF EXISTS proyecto;
-- Creacion de tabla de proyecto
CREATE TABLE IF NOT EXISTS proyecto (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(200) NOT NULL,
  precio INT NOT NULL,
  descripcion text NOT NULL,
  superficie INT NOT NULL,
  ambientes INT NOT NULL,
  baños INT NOT NULL,
  adhesion mediumint NOT NULL,
  resumen text NOT NULL,
  detalle_baño text NOT NULL,
  cocina text NOT NULL,
  aberturas text NOT NULL,
  revestimientos text NOT NULL,
  equipamiento text NOT NULL,
  instalacion_electrica text NOT NULL,
  instalacion_agua text NOT NULL,
  tipos_de_pisos text NOT NULL,
  video varchar(200) NOT NULL,
  imagenes varchar(200) NOT NULL,
  categoria_id INT UNSIGNED NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP
);

-- Ingreso de datos a proyecto (es importante que vaya ultima ya que tiene datos con claves foraneas, y si esas tablas no tienen insertados datos no funciona la db)
INSERT INTO `proyecto` (`id`, `nombre`, `precio`, `descripcion`, `superficie`, `ambientes`, `baños`, `adhesion`, `resumen`, `detalle_baño`, `cocina`, `aberturas`, `revestimientos`, `equipamiento`, `instalacion_electrica`, `instalacion_agua`, `tipos_de_pisos`, `video`, `imagenes`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'Casa container 15M2', 4769333, 'Si estás buscando una casa económica y de rápida realización, nuestra casa classic de 15m² es la opción ideal para vos, es amplia, luminosa y cuenta con la capacidad perfecta para habitar con todas las comodidades. Posee aislación térmica y acústica de paredes, cuenta con instalación eléctrica y de agua; viene equipada con el mobiliario necesario para cocina y baños. Además, es completamente personalizable.', '15', '2', '1', '165000', '2 Ambientes, 1 Baño, Cocina Comedor', 'Vanitory, lavamanos, inodoro, ducha en box de 0.80 x 0.80 cm y mampara de vidrio. Griferias Marca (Pazza, Moza o Hidro) *El Baño contará con revestimiento cerámico (a media altura, box de ducha de piso a techo).', '1 Bajo mesada de 1.20m hasta 1.60m. Mesada de granito sintético de 1.20m hasta 1.60m. Bacha de acero inoxidable', 'Ventanas Línea Herrero con rejas como medida de seguridad. 1 Ventanas de 1.50 x 1.10 m con traba interior. Ventanas de 0.60 x 0.40 m para baño. Ventanas de 1.00 x 0.40 hasta 1.50 x 0.40 m para cocina. 1 Puerta de entrada doble chapa o mitad vidrio y mitad aluminio. Opcional: El Cliente tendra la opción de cambiar la puerta de ingreso por ventana balcon 1.50 x 2.00 m Opcional: 1 Portón Romano de 1.50 x 2.00 m.', 'Interior: Placa de yeso color blanco (Durlock) o como opción machimbre de PVC color blanco. Exterior: Esmalte sintético, color a eleccion de línea Emapi o Tersuave, colores estándar a decidir por el cliente. Aislación térmica y acústica: Lana de vidrio de 50mm.', '1 Termotanque eléctrico de 30 litros. 1 Aires acondicionados Split de 2200 F (frio/calor)', 'Instalación reglamentaría por cañería emburidas, con 10 tomas distribuidos entre tomacorrientes simples y tomacorrientes dobles.Caja para térmicas de luz con 12 módulos. 3 Llaves de encendido. 3 Luces Led en cielorraso de alta calidad y de bajo consumo. 3 Luces exteriores tipo tortuga de PVC', 'Fría y Caliente. Caños termofusión de 20. Desagues Aguaduc de 110, 40, 50 y 60.', 'Vinílico símil madera (alto tránsito) Hidrolaqueado, pisos original del contenedor con dos manos de hidrolaca. Flotante simil madera (a cotizar).', 'casa-container-15m2-classic-importainer.mp4', 'casa-container-15-m2-classic-importainer.jpg','1', '2023-06-06 10:00:00', '2023-06-06 10:00:00');

DROP TABLE IF EXISTS modelo;
-- Creacion de tabla de modelo
CREATE TABLE IF NOT EXISTS modelo (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(100) NOT NULL,
  created_at TIMESTAMP NULL DEFAULT NULL,
  updated_at TIMESTAMP NULL DEFAULT NULL
);

-- Ingreso de datos a modelo
INSERT INTO modelo (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Casa Classic', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(2, 'Casa Comfort', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(3, 'Casa Premium', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(4, 'Casa de Campo', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(5, 'Casa Tiny', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(6, 'Duplex', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(7, 'Combo', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(8, 'Exterior', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(9, 'FoodTruck', '2023-06-06 09:00:00', '2023-06-06 09:00:00'),
(10, 'Oficinas', '2023-06-06 09:00:00', '2023-06-06 09:00:00');

DROP TABLE IF EXISTS entrega;
-- Creacion de tabla de entrega
CREATE TABLE IF NOT EXISTS entrega (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(200) NOT NULL,
  descripcion text NOT NULL,
  superficie INT NOT NULL,
  ubicacion varchar(200) NOT NULL,
  video varchar(200) NOT NULL,
  imagen varchar(200) NOT NULL,
  modelo_id INT UNSIGNED NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP
);

-- Ingreso de datos a entrega (es importante que vaya ultima ya que tiene datos con claves foraneas, y si esas tablas no tienen insertados datos no funciona la db)
INSERT INTO `entrega` (`id`, `nombre`, `descripcion`, `superficie`, `ubicacion`, `video`, `imagen`, `modelo_id`, `created_at`, `updated_at`) VALUES
(1, 'CASA', 'Nuestro cliente Alfredo buscaba una solución habitacional cómoda y de rápida construcción, que le permitiera mudarse lo antes posible a su lugar soñado en Chapadmalal. En importainer encontró la solución a su necesidad, nuestra alta experiencia en construcciones con containers y numerosas entregas le ayudaron a tomar la decisión de dejar en nuestras manos el sueño de su casa propia.Por nuestra parte fuimos responsables de la dirección y mano de obra completa de la casa container: acondicionamos el contenedor y equipamos los distintos ambientes con el mobiliario solicitado por el cliente. Además, fuimos responsables del traslado de su vivienda container desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en el terreno, ubicado en Chapadmalal, Provincia de Buenos Aires.', 15, 'Chapadmalal', 'https://www.youtube.com/embed/WXRArcY70TQ', 'entrega-chapadmalal-casa-container-15-m2-classic-importainer-1.jpg', 1, '2023-06-06 16:00:00', '2023-06-06 16:00:00'),
(2, 'CASA', 'Jorge y su esposa soñaban con construir una casa para disfrutar en familia, buscaban una solución constructiva rápida; sin esfuerzo. En importainer, encontraron no sólo la oportunidad de iniciar su proyecto vacacional a base de contenedores, sino la opción de personalizar su casa tal cual como la soñaban.  Desde Importainer, fuimos responsables de la dirección y mano de obra completa de la casa modular: acondicionamos el contenedor, equipamos los distintos ambientes con el mobiliario necesario para los distintos ambientes, y agregamos un hermoso deck, a pedido de nuestros clientes. Además, fuimos responsables del traslado de su vivienda container desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en el terreno, ubicado en Villa Yacanto, Provincia de Buenos Aires.', 30, 'Yacanto, Córdoba', 'https://www.youtube.com/embed/z_WzzzcP_G4', 'imagen1686252408903.JPG', 1, '2023-06-08 22:26:48', '2023-06-08 22:26:48'),
(3, 'CASA', 'Nuestra cliente Daniela buscaba una solución habitacional 100% sustentable, de rápida construcción, práctica y de bajo costo. En Importainer encontró la solución a todas sus necesidades. Estuvimos encargados de la dirección y mano de obra completa de su vivienda modular, desde los materiales necesarios para el inicio del proyecto, como la compra del mobiliario para el equipamiento de los distintos ambientes de la casa container como: cocina, baño y habitaciones. Fuimos responsables del traslado de su vivienda container desde nuestra fábrica ubicada en Buenos Aires hasta su instalación directa en el terreno, en la provincia de San Juan.', 30, 'Médano de Oro, San Juan', 'https://www.youtube.com/embed/VFhfe15HS9w', 'imagen1686253547982.JPG', 1, '2023-06-08 22:45:47', '2023-06-08 22:45:47'),
(4, 'OFICINA', 'En busca de subsanar el sistema de vacunación del municipio y brindar una mejor calidad de vida a los habitantes de la localidad. Nuestros clientes optaron por construir centros de vacunación u oficinas container. Pues su rápida construcción y practicidad en traslado, fue la solución ideal a su necesidad.  Desde Importainer, fuimos responsables de la dirección, mano de obra y personalización completa de la oficina contenedor, equipamos los distintos ambientes con el mobiliario requerido y agregamos una entrada alternativa para discapacitados, a pedido de la municipalidad. Además, fuimos responsables del traslado de su oficina container desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en el terreno, ubicado en la provincia de Chaco.', 15, 'Chaco, Roque Saenz Peña', 'https://www.youtube.com/embed/M3pDEldoUek', 'imagen1686316466371.JPG', 10, '2023-06-09 13:14:26', '2023-06-09 13:14:26'),
(5, 'DUPLEX', 'Fuimos parte del sueño de la familia Licoff, quiénes ya teniendo una casa propia, optaron por vivir la experiencia de vivir en la tendencia del momento ¡Una casa container!  En Importainer s.a encontraron la solución ideal para la construcción de su proyecto a base de contenedores marítimos. Estuvimos encargados de la dirección y mano de obra completa de su vivienda modular, desde los materiales necesarios para el inicio del proyecto, como la compra del mobiliario para el equipamiento de los distintos ambientes de la casa container como: cocina, baño y habitaciones. Fuimos responsables del traslado de su vivienda container desde nuestra fábrica ubicada en Buenos Aires hasta su instalación directa en el terreno, en la provincia de Santa Cruz.', 30, 'Puerto Deseado, Santa Cruz', 'https://www.youtube.com/embed/Cb-2FXzFNhk', 'imagen1686317164028.jpg', 6, '2023-06-09 13:26:04', '2023-06-09 13:26:04'),
(6, 'CASA', 'Nuestros clientes Pablo y Giselle buscaban una solución constructiva más económica, de rápida construcción, fácil de trasladar, con posibilidad de ampliar y personalizar. En Importainer S.A. encontraron la solución ideal a su necesidad y de inmediato se contactaron con nosotros.  Por nuestra parte le ofrecimos la posibilidad de adquirir su casa completamente financiada y pagarla en cómodas cuotas. Fuimos responsables de la dirección y mano de obra completa de su casa, desde el acondicionamiento del container con los materiales que se requieren para hacerlo completamente habitable, hasta el equipamiento de los distintos ambientes con el mobiliario para la cocina y baño. Además, nos encargamos del traslado del módulo container desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en Brandsen, provincia de Bs. As.', 15, 'Brandsen', 'https://www.youtube.com/embed/GE-DBw5_9Sg', 'imagen1686317351709.jpg', 1, '2023-06-09 13:29:11', '2023-06-09 13:29:11'),
(7, 'CASA', 'Nuestro cliente Carlos buscaba una solución habitacional distinta, de rápida construcción y con terminaciones de calidad. En Importainer S.A. encontró la solución ideal a su necesidad y de inmediato se contactó con nosotros.  Por nuestra parte fuimos responsables de la dirección y mano de obra completa de su casa, desde el acondicionamiento del container con los materiales que se requieren para hacerlo completamente habitable, hasta el equipamiento de los distintos ambientes con el mobiliario para la cocina y baño. Además, nos encargamos del traslado del módulo container desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en Villa la Angostura, Neuquén.', 15, 'Villa la Angostura', 'https://www.youtube.com/embed/Hp886NiMC9w', 'imagen1686317610358.jpg', 1, '2023-06-09 13:33:30', '2023-06-09 13:33:30'),
(8, 'CASA', 'Fuimos contactados para realizar la construcción de una casa container. Nos encargamos de la dirección y mano de obra completa, acondicionamos el contenedor con los materiales que se requieren para hacerla completamente habitable y equipamos los distintos ambientes con el mobiliario solicitado por el cliente. Además, fuimos responsables del traslado de su vivienda desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en el terreno ubicado en Mar del sur, Provincia de Buenos Aires.', 30, 'Mar del Sur', 'https://www.youtube.com/embed/EiI4DqodcbM', 'imagen1686317736549.jpg', 1, '2023-06-09 13:35:36', '2023-06-09 13:35:36'),
(9, 'CASA', 'Nuestra cliente Marcela buscaba una solución habitacional de rápida construcción, y cómodo de trasladar. En Importainer S.A. encontró la solución ideal a su necesidad y de inmediato se contactó con nosotros.  Por nuestra parte fuimos responsables de la dirección y mano de obra completa de su casa, desde el acondicionamiento del container con los materiales que se requieren para hacerlo completamente habitable, hasta el equipamiento de los distintos ambientes con el mobiliario solicitado por nuestra cliente. Además, fuimos responsables del traslado de su vivienda desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en Cachirulo, provincia de la Pampa.', 15, 'Cachirulo', 'https://www.youtube.com/embed/pIcOs-eRAtU', 'imagen1686318512606.jpg', 1, '2023-06-09 13:48:32', '2023-06-09 13:48:32'),
(10, 'CASA', 'Hoy Juliana y su familia, disfrutan de su casa propia gracias al plan de financiación y cuotas de nuestra compañía. Nuestra cliente nos contó, que hace un tiempo logró comprar su terreno, pero, por la situación económica del país, se le dificulto acceder a un préstamo para iniciar su construcción. En Importainer s.a encontró la solución ideal a todos sus problemas.  Le brindamos la oportunidad de acceder a nuestro sistema de financiación, sin papeleos, y nos comprometimos a entregar su casa lista para habitar. Estuvimos encargados de la financiación entera del proyecto, mano de obra, compra de los materiales necesarios para el acondicionamiento del contenedor, y el equipamiento de los distintos ambientes de su vivienda modular. Además, fuimos responsables del traslado de su casa container desde nuestra fábrica ubicada en Buenos Aires, hasta la instalación directa en el terreno, en Villa Rada Tilly, Chubut.', 90, 'Villa Rada Tilly, Chubut', 'https://www.youtube.com/embed/g3C59UE98tc', 'imagen1686318908702.JPG', 1, '2023-06-09 13:55:08', '2023-06-09 13:55:08'),
(11, 'CASA', 'Fuimos contactados para realizar la construcción de una casa container completamente personalizada por el cliente. Nos encargamos de la dirección y mano de obra completa, acondicionamos el contenedor con los materiales que se requieren para hacerla completamente habitable y equipamos los distintos ambientes con el mobiliario solicitado por el cliente. Además, fuimos responsables del traslado de su vivienda desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en el terreno ubicado en Merlo, Provincia de Buenos Aires.', 30, 'Merlo, Buenos Aires', 'https://www.youtube.com/embed/fwmm_KYtfhk', 'imagen1686319244021.jpg', 1, '2023-06-09 14:00:44', '2023-06-09 14:00:44'),
(12, 'CASA', 'Nuestra cliente Paola buscaba una solución habitacional de rápida construcción, accesible en costos y que no le demandará tiempo ni esfuerzo. En Importainer S.A. encontró la solución ideal a su necesidad, por lo cual nos contactó por internet y se trasladó hasta nuestras oficinas para empezar hacer su sueño realidad.  Por nuestra parte la ayudamos a tener su casa 100% financiada y de inmediato nos pusimos en marcha en la construcción de su sueño. Nos encargamos de la dirección y mano de obra completa de su casa modular, acondicionamos el contenedor con los materiales que se requieren para hacerlo completamente habitable y equipamos los distintos ambientes con el mobiliario solicitado por el cliente. Además, fuimos responsables del traslado de su vivienda desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en el terreno ubicado en Bahía Blanca, Provincia de Buenos Aires.', 60, 'Bahia Blanca, Buenos Aires', 'https://www.youtube.com/embed/ESgnLPjnawA', 'imagen1686319773280.jpg', 1, '2023-06-09 14:09:33', '2023-06-09 14:09:33'),
(13, 'CASA', 'Nuestro cliente Sandro buscaba una solución constructiva moderna, más económica y de rápida construcción. En importainer encontró la solución a su necesidad. ¡Eligió construir su casa a base de contenedores marítimos y nosotros nos pusimos en marcha!  Fuimos responsables de la dirección y mano de obra completa de su casa modular: acondicionamos el contenedor, equipamos los distintos ambientes con el mobiliario necesario para los distintos ambientes. Además, fuimos responsables del traslado de su vivienda container desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en el terreno ubicado en Marcos Paz, Provincia de Buenos Aires.', 30, 'Marcos Paz, Buenos Aires', 'https://www.youtube.com/embed/rihMX9I3_wI', 'imagen1686319886799.JPG', 1, '2023-06-09 14:11:26', '2023-06-09 14:11:26'),
(14, 'CASA', 'Nuestro cliente Lucas buscaba una solución habitacional de rápida construcción y accesible en costos. En Importainer S.A. encontró la solución ideal a su necesidad y de inmediato se contactó con nosotros.  Por nuestra parte fuimos responsables de la dirección y mano de obra completa de su casa, desde el acondicionamiento del container con los materiales que se requieren para hacerlo completamente habitable, hasta el equipamiento de los distintos ambientes con el mobiliario solicitado por el cliente. Además, fuimos responsables del traslado de su vivienda desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en San Carlos de Bariloche.', 30, 'San Carlos de Bariloche', 'https://www.youtube.com/embed/0xe2oR9ugqk', 'imagen1686320048966.jpg', 1, '2023-06-09 14:14:08', '2023-06-09 14:14:08'),
(15, 'BAR', 'Nuestro cliente Álvaro es propietario de un complejo deportivo y en busca de agregar nuevos servicios al lugar, decidió construir un patio cervecero en el predio. Para él la mejor solución fue llevar a cabo su proyecto, mediante el sistema de construcción modular a base de containers marítimos. Pues la rentabilidad en mano de obra y practicidad en traslado fue su solución ideal.  ¡ÁLVARO NOS CONTACTO Y EN IMPORTAINER NOS PUSIMOS EN MARCHA!  Estuvimos encargados de la dirección, mano de obra y personalización completa del bar container. Equipamos los distintos ambientes con el mobiliario necesario. Y fuimos responsables del traslado de su proyecto modular desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en el terreno ubicado en la provincia de Córdoba.', 30, 'Coronel Moldes, Cordoba', 'https://www.youtube.com/embed/Z1BcwPuXZ-k', 'imagen1686320705968.JPG', 9, '2023-06-09 14:25:05', '2023-06-09 14:25:05'),
(16, 'QUINCHO', 'Nuestros clientes Telesco buscaban una empresa especializada en construcciones modulares, con opción de personalización y de rápida fabricación, para la realización de un quincho container. En Importainer S.A. encontraron la solución a su necesidad y de inmediato nos contactaron.  Por nuestra parte, inmediatamente nos pusimos en marcha en la construcción del proyecto. Nos encargamos de la dirección y mano de obra completa, desde el acondicionamiento del contenedor con los materiales que se requieren para hacerlo completamente habitable, hasta la personalización de nuevas aberturas para mayor luminosidad del espacio a pedido del cliente. Además, nos encargamos del equipamiento de los distintos ambientes con el mobiliario requerido para acondicionar la cocina y el baño y trasladamos el quincho desde nuestra fábrica ubicada en Buenos Aires hasta su instalación completa en la municipalidad de Roque Pérez.', 15, 'Roque Perez', 'https://www.youtube.com/embed/0_XKKkjhc-4', 'imagen1686321040839.jpg', 8, '2023-06-09 14:30:40', '2023-06-09 14:30:40'),
(17, '2 CASAS DE ', 'Nuestros clientes Molles buscaban un sistema constructivo moderno y de rápida realización para llevar a cabo el sueño de construir en su terreno dos casas para disfrutar en familia cada fin de semana. En Importainer S.A encontraron la solución ideal a su necesidad y de inmediato se contactaron con nosotros.  Fuimos responsables del proyecto desde la dirección y mano de obra completa de las casas, como del acondicionamiento de cada uno de los contenedores con los materiales requeridos para hacerlos completamente habitables. Además, nos encargamos del equipamiento de los distintos ambientes con el mobiliario solicitado y trasladamos cada módulo desde nuestra fábrica en Buenos Aires hasta su ensamblaje en la localidad de Virrey del Pino.', 30, 'Virrey del Pino', 'https://www.youtube.com/embed/X009wdhfYF8', 'imagen1686321177983.jpg', 1, '2023-06-09 14:32:57', '2023-06-09 14:32:57'),
(18, 'CASA', 'Nuestra cliente Marina se crió en una familia nómada, donde alquilar y mudarse frecuentemente era lo normal. En busca de hacer un cambio radical a su estilo de vida, se propuso alcanzar la meta de tener su propia casa sustentable. En importainer, encontró no sólo la opción de construir su sueño ecológico, sino también la posibilidad de adquirirla 100% financiado por la empresa.  Por nuestra parte nos comprometimos a entregarle su casa tal cual como ella la soñó. Estuvimos encargados de la dirección y mano de obra completa de su vivienda modular, desde los materiales necesarios para el inicio del proyecto, como la compra del mobiliario para el equipamiento de su monoambiente. Además, fuimos responsables del traslado de su vivienda container desde nuestra fábrica hasta su instalación completa en el terreno, ubicado en Miramar, Provincia de Buenos Aires.', 15, 'Miramar, Buenos Aires', 'https://www.youtube.com/embed/Sk09dNsj9K4', 'imagen1686321306423.JPG', 1, '2023-06-09 14:35:06', '2023-06-09 14:35:06'),
(19, 'CASA', 'Nuestra cliente Olinda buscaba una solución habitacional accesible y de rápida fabricación. En importainer S.A encontró no solo la posibilidad de construir su casa, sino también la opción de financiar y pagar en cómodas cuotas.  Por nuestra parte fuimos responsables de la dirección y mano de obra completa de su casa, desde el acondicionamiento del container con los materiales que se requieren para hacerla completamente habitable, hasta el equipamiento de los distintos ambientes con el mobiliario para la cocina y baño. Además, nos encargamos de que la vivienda llegara en buen estado desde nuestra fábrica ubicada en Buenos Aires hasta su instalación en Mar del Sur, provincia de Bs. As.', 15, 'Mar del Sur', 'https://www.youtube.com/embed/QsVFjlJ6ZIs', 'imagen1686321387559.jpg', 1, '2023-06-09 14:36:27', '2023-06-09 14:36:27');

DROP TABLE IF EXISTS perfil; 
-- Creacion de tabla de perfil
CREATE TABLE IF NOT EXISTS perfil (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP
  );

-- Ingreso de datos a perfil
INSERT INTO perfil (`id`, `nombre`, `created_at`, `updated_at`) VALUES
(1, 'Administrador', '2023-06-15 00:09:56', '2023-06-15 00:09:56'),
(2, 'Cliente', '2023-06-15 00:09:56', '2023-06-15 00:09:56');

DROP TABLE IF EXISTS usuario;
-- Creacion de tabla de usuario
CREATE TABLE IF NOT EXISTS usuario (
  id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre varchar(50) NOT NULL,
  apellido varchar(50) NOT NULL,
  email varchar(50) NOT NULL,
  contraseña varchar(150) NOT NULL,
  perfil_id INT UNSIGNED,
  created_at TIMESTAMP DEFAULT current_timestamp(),
  updated_at TIMESTAMP
);

-- Creacion de Foreign Key proyecto
ALTER TABLE proyecto
ADD FOREIGN KEY (categoria_id) REFERENCES categoria(id);

-- Creacion de Foreign Key proyecto
ALTER TABLE entrega
ADD FOREIGN KEY (modelo_id) REFERENCES modelo(id);
