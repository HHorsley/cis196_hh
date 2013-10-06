Hunter Horsley


--------------
RESPONSE TO #4
--------

my_array = [0,10,20,30,40,50,60,70,80,90,100]
my_array.delete_if {|x| x < 50}



--------------
RESPONSE TO #6
--------

def double_open (filename1, filename2) do |f1, f2|
	until eof? 
		File.open (filename1) do |f1|
			File.open (filename2) do |f2|
				print f1.readline
					print f2.readline
		end
	end
end


double_open "hi.txt", "jargon.txt" do |f1, f2|
	until f1.eof? or f2.eof?
	puts f1.readline.rstrip + " | " + f2.readline.rstrip
	end
end

