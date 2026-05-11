module.exports = {
  apps: [{
    name: 'openmaic-malaysia',
    script: 'pnpm',
    args: 'dev',
    cwd: '/home/azureuser/OpenMAIC-Malaysia',
    instances: 1,
    exec_mode: 'fork',
    env: {
      NODE_ENV: 'production',
      PORT: 3456,
      NODE_OPTIONS: '--max-old-space-size=3072'
    },
    log_file: '/home/azureuser/.pm2/logs/openmaic-malaysia.log',
    error_file: '/home/azureuser/.pm2/logs/openmaic-malaysia-error.log',
    out_file: '/home/azureuser/.pm2/logs/openmaic-malaysia-out.log',
    time: true,
    autorestart: true,
    max_restarts: 5,
    min_uptime: '10s',
    watch: false,
    kill_timeout: 5000,
    listen_timeout: 10000
  }]
};
