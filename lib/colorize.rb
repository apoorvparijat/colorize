class Colorize

	# bg;fg;alpha; alpha(4) => underline;
	CODE = {
	    :red => "\033[31m", 
	    :green => "\033[32m", 
	    :blue => "\033[34m",
	    :underline => "\033[;;4m",
	    :highlight => "\033[100;38;5;208m",
	    :end => "\033[m"
	}

	COLOR_END = COLOR_STOP = CODE[:end]
	COLOR_RED = CODE[:red]
	COLOR_BLUE = CODE[:blue]
	COLOR_GREEN = CODE[:green]
	COLOR_HIGHLIGHT = CODE[:highlight]

    def self.method_missing(name, *args)
    	begin
        	color = name.to_sym
    		return CODE[color] + args[0].to_s + CODE[:end]
    	rescue => e
    		puts "Error with #{name}"
    		raise e
    	end
    end
end
