require('dotenv').config();
const { Pool } = require('pg');

// Configuración de la conexión a PostgreSQL (los datos vienen del archivo .env)
const pool = new Pool({
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
  database: process.env.DB_NAME,
});

// Función que verifica la conexión a la base de datos
async function verificarConexion() {
  try {
    const client = await pool.connect();
    console.log('✅ Conexión a PostgreSQL exitosa');
    client.release();
  } catch (error) {
    console.log('❌ Error de conexión:', error.message);
  }
}

module.exports = { pool, verificarConexion };

// Si se ejecuta directamente (node database.js), prueba la conexión
if (require.main === module) {
  verificarConexion().finally(() => pool.end());
}