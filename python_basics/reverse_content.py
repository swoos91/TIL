#1. line 불러오기
with open('mulcam.txt', 'r') as f:
    lines = f.readlines()

#2. 뒤집기
lines.reverse()

#3. line 작성하기
with open('mulcam.txt', 'w') as f:
    f.writelines(lines)