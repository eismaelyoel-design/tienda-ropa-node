# Tienda de Ropa - Conexión Node.js con PostgreSQL

**Alumno:** Ismael Yoel Estrada Ramos — Ingeniería de Software, UTP

Proyecto del examen final del curso de JavaScript. Se conecta a una base de datos PostgreSQL de una tienda de ropa usando la librería `pg` (node-postgres) y verifica la conexión.

## Estructura

- `database.js`: configuración de la conexión y función que verifica la conexión.
- `database/tienda_ropa.sql`: script que crea la tabla `productos` y inserta 5 productos de prueba.
- `.env.example`: plantilla de las variables de entorno.

## Base de datos

Tabla `productos`: `id`, `nombre`, `descripcion`, `precio`, `imagen` (URL de la imagen).

## Cómo ejecutarlo

1. Crear la base de datos en PostgreSQL: `CREATE DATABASE tienda_ropa;`
2. Ejecutar el script `database/tienda_ropa.sql` en esa base.
3. Copiar `.env.example` como `.env` y colocar la contraseña de PostgreSQL.
4. Instalar dependencias y ejecutar:

```bash
npm install
node database.js
```

## Resultado

- Conexión correcta: `✅ Conexión a PostgreSQL exitosa`
- Error de conexión: `❌ Error de conexión: <mensaje del error>`