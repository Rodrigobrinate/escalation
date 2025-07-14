# Usa uma imagem base leve do Nginx para servir arquivos estáticos
FROM nginx:alpine

# Copia os arquivos HTML, CSS e JavaScript para o diretório de serviço do Nginx
# Certifique-se de que seus arquivos HTML, CSS e JS estão na mesma pasta que o Dockerfile
COPY . /usr/share/nginx/html

# Expõe a porta 80, que é a porta padrão do Nginx
EXPOSE 3335

# Comando para iniciar o Nginx quando o contêiner for executado
CMD ["nginx", "-g", "daemon off;"]
