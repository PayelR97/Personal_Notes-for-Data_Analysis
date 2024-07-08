import os
folders = os.listdir("Main_Directory")
print(folders)

for folder in folders:
    print(folder)
    print(os.listdir(f"Main_Directory/{folder}"))
