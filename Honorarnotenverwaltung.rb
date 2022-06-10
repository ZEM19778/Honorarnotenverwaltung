require 'curses'
class Honorarnotenverwaltung
    def Menu.start(choices, values)
        menu = Menu.new(choices,values)
        return menu.menu_loop
    end

    def initialize(choices, values)
        @choices = choices
        @num_choices = choics.length
        @values = values
        @index = 0
    end

    def menu_loop
        while true
            display
        input = Curses.getch.to_s

            if "SW".include?(input) #Wenn Capslock an ist, wird die Größe klein gemacht
                input = input.downcase
            end 

            case input
            when "s"
                @index += 1
                if @index == @num_choices
                    @index = 0
                end
            when "w"
                @index -= 1
                if @index == -1
                    @index = @num_choices-1
                end
            when " "
                return @values[@index]
            end
        end
    end

    def display
        @num_choices.times do |i|
            Curses.setpos((i),0)
            Curses.addstr("     ")
            Curses.addstr("#{@choices[i]}")
        end

        Curses.setpos(@index,0)
        Curses.addstr("-->")

        Curses.refresh
    end
end