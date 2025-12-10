FROM n8nio/n8n:latest

USER root

# --- 1. Python ve Resim İşleme Kütüphanesini (Pillow) Kur ---
RUN apk add --update python3 py3-pip
RUN pip3 install Pillow --break-system-packages

# --- 2. Ayarları Sabitle (Render Hatalarını Önler) ---
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_SSL=true
ENV DB_POSTGRESDB_SSL_REJECT_UNAUTHORIZED=false
ENV N8N_PORT=5678

# --- 3. Yetkiyi Tekrar Kullanıcıya Ver (Güvenlik) ---
USER node
