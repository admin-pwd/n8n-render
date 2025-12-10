FROM n8nio/n8n:latest

# --- GÖMÜLÜ AYARLAR (Render'ı Devre Dışı Bırakıyoruz) ---

# 1. Veritabanı Türü
ENV DB_TYPE=postgresdb

# 2. SSL Sorununu Çözen Kritik Ayarlar (Burası Çok Önemli)
ENV DB_POSTGRESDB_SSL=true
ENV DB_POSTGRESDB_SSL_REJECT_UNAUTHORIZED=false

# 3. Port Ayarı
ENV N8N_PORT=5678

# --- Kullanıcı Yetkisi ---
USER node
