module.exports = {
  webhookUrl: 'https://n8n-krut74.onrender.com',
  webhookTestUrl: 'https://n8n-krut74.onrender.com',
  webhookTunnelUrl: 'https://n8n-krut74.onrender.com',
  editorBaseUrl: 'https://n8n-krut74.onrender.com',
  host: '0.0.0.0',
  protocol: 'https',
  port: 3000,
  path: '/',
  publicApiDisabled: false,
  webhookDebug: true,
  encryptionKey: process.env.N8N_ENCRYPTION_KEY,
  database: {
    type: 'postgresdb',
    tablePrefix: '',
    postgresdb: {
      host: process.env.DB_POSTGRESDB_HOST,
      port: process.env.DB_POSTGRESDB_PORT,
      database: process.env.DB_POSTGRESDB_DATABASE,
      user: process.env.DB_POSTGRESDB_USER,
      password: process.env.DB_POSTGRESDB_PASSWORD,
    },
  },
  nodes: {
    exclude: [],
    include: [],
  },
  security: {
    basicAuth: {
      active: true,
      user: process.env.N8N_BASIC_AUTH_USER,
      password: process.env.N8N_BASIC_AUTH_PASSWORD,
      excludePaths: ['/googlec3a587cefb639c53.html'],
    },
  },
  metrics: {
    enabled: true,
  },
  diagnostics: {
    enabled: true,
  },
  hiringBanner: {
    enabled: false,
  },
  versionNotifications: {
    enabled: true,
  },
  userManagement: {
    disabled: false,
  },
}; 