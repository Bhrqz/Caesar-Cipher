require "pry"
#WE propose a hash with our sistem, assign a number to every letter, cap or not

our_code = {"A"=>1,"B"=>2,"C"=>3,"D"=>4,"E"=>5,"F"=>6,"G"=>7,"H"=>8,'I'=>9,'J'=>10,'K'=>11,'L'=>12,'M'=>13,'N'=>14,'O'=>15,'P'=>16,'Q'=>17,'R'=>18,'S'=>19,'T'=>20,'U'=>21,'V'=>22,'W'=>23,'X'=>24,'Y'=>25,'Z'=>26,'a'=>101,'b'=>102,'c'=>103,'d'=>104,'e'=>105,'f'=>106,'g'=>107,'h'=>108,'i'=>109,'j'=>110,'k'=>111,'l'=>112,'m'=>113,'n'=>114,'o'=>115,'p'=>116,'q'=>117,'r'=>118,'s'=>119,'t'=>120,'u'=>121,'v'=>122,'w'=>123,'x'=>124,'y'=>125,'z'=>126}
array_code = []
#We need the user enters a string.

puts "What phrase do you want to Cypher with Caesar-Cypher?"
  string = gets.chomp
  
#and a shift, a number.

puts "and what Caesar Shift do you want to use?"
  shift = gets.chomp.to_i

#That string we need to separate them into individual characters

array = string.split("")
p array

#connect them with the asociated our CODE!
#recognizing if they are Low or Up Case.

array.each do |letter| 

  p our_code[letter]
  
  if our_code[letter]!=nil
    p our_code[letter]+shift
#Now we are taking care of the Wrap of the alphabet

    code = our_code[letter]+shift
    if code > 126 
      code = 100+(our_code[letter]+shift)-126
    
    elsif code > 26 && code <101
      code = (our_code[letter]+shift)-26

    end
    #binding.pry
    array_code.push(our_code.key(code))
  
  else
    array_code.push(letter)
  end
end


#join the string and return it
puts "This is the sentence coded with a shift of #{shift}: #{array_code.join("")}"