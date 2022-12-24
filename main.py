import customtkinter
import subprocess
from subprocess import run
from tkinter import filedialog
from tkinter import *
import platform

OS = platform.system()
# LEX and C compilation
# If you don't have defined flex as a env variable, replace the winflex argument by the path to your winflex.exe
output = run(["winflex", "-t", "./LEXcode.l"], stdout=subprocess.PIPE)
f = open("code.c", "wb")
f.write(output.stdout)
f.close()

output = run(["./win_flex.exe", "-t", "./LEXdecode.l"], stdout=subprocess.PIPE)
f = open("decode.c", "wb")
f.write(output.stdout)
f.close()

run(["gcc", "-o", "Comp", "./code.c"])
run(["gcc", "-o", "Decomp", "./decode.c"])

customtkinter.set_appearance_mode("dark")
customtkinter.set_default_color_theme("dark-blue")

root = customtkinter.CTk()
root.geometry("800x450")


def Code():
    filename = filedialog.askopenfilename(
        initialdir="/", title="Select a File", filetypes=(("Text files", "*.txt*"), ("all files", "*.*")))
    # Execution of the encoding function
    run(["Comp.exe", filename, "encodedFile.txt"])


def Decode():
    filename = filedialog.askopenfilename(
        initialdir="/", title="Select a File", filetypes=(("Text files", "*.txt*"), ("all files", "*.*")))
    # Execution of the decoding function
    run(["Decomp.exe", filename, "decodedFile.txt"])


frame = customtkinter.CTkFrame(master=root)
frame.pack(pady=20, padx=60, fill="both", expand=True)


label = customtkinter.CTkLabel(
    master=frame, text="Run-length encoding data compression and decoding", font=("Roboto", 24))
label.pack(pady=12, padx=10)


button1 = customtkinter.CTkButton(
    master=frame, text="Encode", command=Code)
button1.pack(pady=12, padx=10)
button2 = customtkinter.CTkButton(
    master=frame, text="Decode", command=Decode)
button2.pack(pady=12, padx=10)


root.mainloop()
