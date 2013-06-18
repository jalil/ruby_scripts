require "curses"
include Curses
init_screen
begin
crmode
echo
ch = getstr #problem occurred here
noecho
ensure
close_screen
end

