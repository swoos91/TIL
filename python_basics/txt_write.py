#f = open('mulcam.txt', 'w')
#for i in range(10):
#    f.write(f"this is line {i}. \n")
#f.close()

with open('mulcam2.txt', 'w') as f:
    for i in range(10):
        f.write(f"This is line {i}. \n")

#with open('mulcam.txt', 'r') as f:
 #   lines = f.readlines()
  #  for line in lines:
   #     print(line.strip())

with open('mulcam.txt', 'r') as f:
    nums = f.readlines()
    n=list()
    for num in nums:
        num = num.strip()
        num = int(num)
        n.append(num)
    so = n.sort(reverse=True)
    print(n)