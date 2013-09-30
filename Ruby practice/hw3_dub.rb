#!/usr/bin/env ruby

def double_open (filename1, filename2)
	File.open (filename1) do |f1|
		File.open (filename2) do |f2| 
			yield f1, f2
		end
	end
end

double_open "hi.txt", "jargon.txt" do |f1, f2|
	until f1.eof? or f2.eof?
	puts f1.readline.rstrip + " | " + f2.readline.rstrip
	end
end