import os
import sys
import curses

os.environ["TERM"] = 'xterm-256color'

class StdOutWrapper:
    text = ""
    def write(self,txt):
        self.text += txt
        self.text = '\n'.join(self.text.split('\n')[-30:])
    def get_text(self,beg,end):
        return '\n'.join(self.text.split('\n')[beg:end])


if __name__ == '__main__':
    screen = curses.initscr()
    try:
        curses.cbreak()
        pad = curses.newpad(10, 10)
        size = screen.getmaxyx()
        pad.refresh(0, 0, 0, 0, size[0] - 1, size[1] - 1)

    finally:
        curses.nocbreak()
        curses.endwin()

if __name__ == '__main__':
    try:
        stdscr = curses.initscr()
        curses.noecho()
        curses.cbreak()
        stdscr.keypad(1)
        # while 1:
        #     c = stdscr.getch()
        #     if c == ord('p'):
        #         stdscr.addstr("I pressed p")
        #     elif c == ord('q'): break
    finally:
        curses.nocbreak(); stdscr.keypad(0); curses.echo()
        curses.endwin()



# if __name__ == "__main__":
#     # http://stackoverflow.com/questions/14010073/print-to-standard-console-in-curses
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
