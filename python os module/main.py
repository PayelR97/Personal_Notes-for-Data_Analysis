import os 

os.mkdir("Main_Directory")
for i in range(0,100):
    os.mkdir(f"Main_Directory/Child {i+1}")
    # os.mkdir(f"child/baby {i+1}")

    