def awesome(func):
    def wrapper():
        func()
        print("No, you are awesome")
        pass
    return wrapper



#@awesome
def ordinary():
    print('I am ordinary')
    pass

#ordinary()
extra_ordinary = awesome(ordinary)
print(extra_ordinary)