#!/usr/bin/ruby
# おまじない
print "Content-type: text/html\n\n"
# cgiを使えるようにする
require "cgi"
# rubyスクリプト内でシェルコマンドを使えるようにする
require "shellwords"

# CGIの新規作成
input = CGI.new

# フォームからの値を取得（HTMLタグ内の name= で指定した名前を基準にして）
#data = input["data"].read
#mail = input["mail"].read

tantan = input["tantan"].read
maze = input["maze"].read
orange = input["orange"].read

sum = 0
val_tantan = 400
val_maze = 400
val_orange = 100

sum = val_tantan * tantan.to_i + val_maze * maze.to_i + val_orange * orange.to_i

`echo #{tantan},#{maze},#{orange} >> data.csv`

print <<EOM
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>

<head>
<title>CGIの出力</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="style.css">
</head>
<body>

<h1>CGIの出力</h1>
<h2>あなたの投稿したテキスト</h2>
#{sum}　円です
</body>
</html>
EOM
