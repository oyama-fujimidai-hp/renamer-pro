# Nginxベースイメージを使用
FROM nginx:alpine

# srcディレクトリの内容をNginxの公開ディレクトリにコピー
COPY src/ /usr/share/nginx/html/

# Nginxの設定ファイルをコピー（オプション）
COPY nginx.conf /etc/nginx/conf.d/default.conf

# ポート8080で公開（Cloud Runのデフォルト）
EXPOSE 8080

# Nginxを起動
CMD ["nginx", "-g", "daemon off;"]
