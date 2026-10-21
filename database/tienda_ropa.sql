-- Base de datos: tienda_ropa
-- Crear en PostgreSQL con: CREATE DATABASE tienda_ropa;

CREATE TABLE productos (
    id SERIAL PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion TEXT,
    precio NUMERIC(10,2) NOT NULL,
    imagen VARCHAR(255)
);

INSERT INTO productos (nombre, descripcion, precio, imagen) VALUES
('Polo básico blanco', 'Polo de algodón manga corta, talla M', 39.90, 'https://example.com/imagenes/polo-blanco.jpg'),
('Jean clásico azul', 'Jean corte recto de mezclón, talla 32', 119.90, 'https://example.com/imagenes/jean-azul.jpg'),
('Casaca de cuero negra', 'Casaca ligera con cierre frontal, talla L', 249.90, 'https://example.com/imagenes/casaca-negra.jpg'),
('Vestido floral', 'Vestido largo con estampado de flores, talla S', 159.90, 'https://example.com/imagenes/vestido-floral.jpg'),
('Zapatillas urbanas', 'Zapatillas blancas para uso diario, talla 40', 189.90, 'https://example.com/imagenes/zapatillas.jpg');