#!/bin/bash

# Buat file unit systemd
cat <<EOF > /etc/systemd/system/restart-haproxy.service
[Unit]
Description=Restart HAProxy every minute

[Service]
Type=simple
ExecStart=/bin/systemctl restart haproxy

[Install]
WantedBy=default.target
EOF

# Reload systemd
systemctl daemon-reload

# Tambahkan entri cron
(crontab -l 2>/dev/null; echo "* * * * * /bin/systemctl start restart-haproxy.service") | crontab -
