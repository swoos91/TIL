#!/usr/bin/env python3
import cgi
from botengine import make_reply
# 입력 양식의 글자 추출하기 --- (※1)
form = cgi.FieldStorage()
# 메인 처리 --- (※2)
def main():
    m = form.getvalue("m", default="")
    if   m == "" : show_form()
    elif m == "say" : api_say()
# 사용자의 입력에 응답하기 --- (※3)
def api_say():
    print("Content-Type: text/plain; charset=euc-kr")
    print("")
    txt = form.getvalue("txt", default="")
    if txt == "": return
    res = make_reply(txt)
    print(res)
# 입력 양식 출력하기 --- (※4)
def show_form():
    print("Content-Type: text/html; charset=euc-kr")
    print("")
    print("""
    <!DOCTYPE html>
<html>
<head>
    <meta charset="euc-kr">
    <title>Chatbot</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no" />
    <link rel="stylesheet" href="http://code.jquery.com/mobile/1.4.0-alpha.2/jquery.mobile-1.4.0-alpha.2.min.css">
    <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="http://code.jquery.com/mobile/1.4.0-alpha.2/jquery.mobile-1.4.0-alpha.2.min.js"></script>
</head>
<body>
    <style>
        h1   { background-color: #cf6940; }
        div  { padding:10px; }
        span { border-radius: 10px; background-color: #fab83e; padding:8px; }
        #chat { background-color: rgb(247, 232, 169); }
        .bot { text-align: left; }
        .usr { text-align: right; background-color: rgb(223, 181, 181); border-radius: 10px;}
    </style>
    <h1>대화하기</h1>
    <div id="chat"></div>
    <div class='usr'><input id="txt" size="40">
    <button onclick="say()">전송</button></div>    
    <script>
        var url = "./chatbot.py";
        function say() {
          var txt = $('#txt').val();
          $.get(url, {"m":"say","txt":txt},
            function(res) {
              var html = "<div class='usr'><span>" + esc(txt) +
                "</span>: 나</div><div class='bot'> 봇:<span>" + 
                esc(res) + "</span></div>";
              $('#chat').html($('#chat').html()+html);
              $('#txt').val('').focus();
            });
        }
        function esc(s) {
            return s.replace('&', '&amp;').replace('<','&lt;')
                    .replace('>', '&gt;');
        }
    </script>

</body>
</html>

    """)
main()