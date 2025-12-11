FROM n8nio/n8n:latest

USER root

# --- 1. Python ve Resim İşleme (Pillow) ---
RUN apk add --update python3 py3-pip
RUN pip3 install Pillow --break-system-packages

# --- 2. Render Proxy Ayarı (YENİ VE KRİTİK) ---
# Bu satır n8n'e "Önünde 1 tane Render sunucusu var, ona güven" der.
ENV N8N_PROXY_HOPS=1

# --- 3. Veritabanı ve SSL Ayarları ---
ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_SSL=true
ENV DB_POSTGRESDB_SSL_REJECT_UNAUTHORIZED=false
ENV N8N_PORT=5678

# --- 4. Kullanıcı Yetkisi ---
USER node
