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
-- Creacion de tabla de producto
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

-- Ingreso de datos a producto (es importante que vaya ultima ya que tiene datos con claves foraneas, y si esas tablas no tienen insertados datos no funciona la db)
INSERT INTO `proyecto` (`id`, `nombre`, `precio`, `descripcion`, `superficie`, `ambientes`, `baños`, `adhesion`, `resumen`, `detalle_baño`, `cocina`, `aberturas`, `revestimientos`, `equipamiento`, `instalacion_electrica`, `instalacion_agua`, `tipos_de_pisos`, `video`, `imagenes`, `categoria_id`, `created_at`, `updated_at`) VALUES
(1, 'Casa container 15M2', 4769333, 'Si estás buscando una casa económica y de rápida realización, nuestra casa classic de 15m² es la opción ideal para vos, es amplia, luminosa y cuenta con la capacidad perfecta para habitar con todas las comodidades. Posee aislación térmica y acústica de paredes, cuenta con instalación eléctrica y de agua; viene equipada con el mobiliario necesario para cocina y baños. Además, es completamente personalizable.', '15', '2', '1', '165000', '2 Ambientes, 1 Baño, Cocina Comedor', 'Vanitory, lavamanos, inodoro, ducha en box de 0.80 x 0.80 cm y mampara de vidrio. Griferias Marca (Pazza, Moza o Hidro) *El Baño contará con revestimiento cerámico (a media altura, box de ducha de piso a techo).', '1 Bajo mesada de 1.20m hasta 1.60m. Mesada de granito sintético de 1.20m hasta 1.60m. Bacha de acero inoxidable', 'Ventanas Línea Herrero con rejas como medida de seguridad. 1 Ventanas de 1.50 x 1.10 m con traba interior. Ventanas de 0.60 x 0.40 m para baño. Ventanas de 1.00 x 0.40 hasta 1.50 x 0.40 m para cocina. 1 Puerta de entrada doble chapa o mitad vidrio y mitad aluminio. Opcional: El Cliente tendra la opción de cambiar la puerta de ingreso por ventana balcon 1.50 x 2.00 m Opcional: 1 Portón Romano de 1.50 x 2.00 m.', 'Interior: Placa de yeso color blanco (Durlock) o como opción machimbre de PVC color blanco. Exterior: Esmalte sintético, color a eleccion de línea Emapi o Tersuave, colores estándar a decidir por el cliente. Aislación térmica y acústica: Lana de vidrio de 50mm.', '1 Termotanque eléctrico de 30 litros. 1 Aires acondicionados Split de 2200 F (frio/calor)', 'Instalación reglamentaría por cañería emburidas, con 10 tomas distribuidos entre tomacorrientes simples y tomacorrientes dobles.Caja para térmicas de luz con 12 módulos. 3 Llaves de encendido. 3 Luces Led en cielorraso de alta calidad y de bajo consumo. 3 Luces exteriores tipo tortuga de PVC', 'Fría y Caliente. Caños termofusión de 20. Desagues Aguaduc de 110, 40, 50 y 60.', 'Vinílico símil madera (alto tránsito) Hidrolaqueado, pisos original del contenedor con dos manos de hidrolaca. Flotante simil madera (a cotizar).', 'casa-container-15m2-classic-importainer.mp4', 'casa-container-15-m2-classic-importainer.jpg','1', '2023-06-06 10:00:00', '2023-06-06 10:00:00');


-- Creacion de Foreign Key proyecto
ALTER TABLE proyecto
ADD FOREIGN KEY (categoria_id) REFERENCES categoria(id);
