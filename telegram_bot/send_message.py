import requests
from decouple import config

# 기본 설정

token = config('TELEGRAM_BOT_TOKEN')
app_url = f'https://api.telegram.org/bot{token}'

# 응답 내용 저장하기

update_url = f"{app_url}/getUpdates"
response = requests.get(update_url)
response = response.json()

# chat_id 추출

chat_id = config("CHAT_ID")

# 메시지 보내기

message_url = f"{app_url}/sendMessage?chat_id={chat_id}&text=안녕"
print(requests.get(message_url))

