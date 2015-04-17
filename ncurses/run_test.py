import os
import curses

os.environ["TERM"] = 'xterm-256color'

# if __name__ == '__main__':
#     screen = curses.initscr()
#     try:
#         curses.cbreak()
#         pad = curses.newpad(10, 10)
#         size = screen.getmaxyx()
#         pad.refresh(0, 0, 0, 0, size[0] - 1, size[1] - 1)

#     finally:
#         del os.environ["TERM"]
#         curses.nocbreak()
#         curses.endwin()


# class StdOutWrapper:
#     text = ""
#     def write(self,txt):
#         self.text += txt
#         self.text = '\n'.join(self.text.split('\n')[-30:])
#     def get_text(self,beg,end):
#         return '\n'.join(self.text.split('\n')[beg:end])

# if __name__ == "__main__":
#     mystdout = StdOutWrapper()
#     sys.stdout = mystdout
#     sys.stderr = mystdout

#     screen = curses.initscr()
#     curses.noecho()
#     curses.cbreak()

#     # do your stuff here
#     # you can also output mystdout.get_text() in a ncurses widget in runtime

#     screen.keypad(0)
#     curses.nocbreak()
#     curses.echo()
#     curses.endwin()
#     sys.stdout = sys.__stdout__
#     sys.stderr = sys.__stderr__
#     sys.stdout.write(mystdout.get_text())
