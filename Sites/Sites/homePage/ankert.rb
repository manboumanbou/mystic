
print "Content-type: text/html\n\n"
require "cgi"
require "shellwords"
require "date"

input = CGI.new

time = "date"
family = input["family"].read
data = input["data"].read
data2 = input["data2"].read
dt = Date.today

`echo #{dt} ,　#{family} , #{data} , #{data2} >> text.csv`


a=input["family"].read
b=int(input["data1"].read)
c=int(input["data2"].read)


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

<p class="data">
  #{family} #{data1} #{data2}
  回答ありがとうございました。
</p>

<p>
投稿日時：#{time}
</p>

</body>
</html>
EOM
