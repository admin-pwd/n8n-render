FROM n8nio/n8n:latest

USER root

# Python ve Pillow kütüphanesini kur (Mockup üretimi için gerekli)
RUN apk add --update python3 py3-pip
RUN pip3 install Pillow --break-system-packages

USER node
