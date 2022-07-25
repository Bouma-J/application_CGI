# Démarrez le programme CGI pour recevoir et renvoyer des données
require 'cgi'
cgi = CGI.new

# データを受け取った後、HTMLの形式でレスポンス（反応）を返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 受け取ったデータcgi['input']で取り出し、ローカル変数に代入する
  # 目印の'input'から情報を取り出す
  get = cgi['goya1']

  #Return response in HTML
  "<html>
    <body>
      <p>La chaine de caractere saisie est la suivante: </p>
      <p>Vous avez saisie：#{get}</p>
    </body>
  </html>"
}