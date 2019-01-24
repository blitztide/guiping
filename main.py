from tkinter import *
import os

class MyFirstGUI:
	def __init__(self, master):
		self.master = master
		master.title("Guiping")
		self.title = Label(root, text="Please insert destination ip address:").pack()
		self.entrybox = Entry(root)
		self.entrybox.pack()
		self.button =  Button(root, text="Stop", width=25, command=self.greet)
		self.button.pack()

	def greet(self):
		print("Greetings")
		response = os.system("ping -c 1 google.com")
		if response == 0:
			print("up")
		else:
			print("down")

root = Tk()
mygui = MyFirstGUI(root)
root.mainloop()
