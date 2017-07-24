puts "Welcome! This is Beat Machine!"  

puts " "

#gather user input

print "Song 1 Name:"
  song_1_name = gets.chomp.upcase!
print "Length of #{song_1_name} (in seconds):"
  l1 = gets.chomp.to_i
    while l1 <= 0 
       print "Please enter only a positive number:"
       l1=gets.chomp.to_i
    end 
print "How many times have you played #{song_1_name}?:"
  t1 = gets.chomp.to_i
    while t1 <= 0 
       print "Please enter only a positive number:"
       t1=gets.chomp.to_i
    end 
total_play1 = l1*t1

puts " "

print "Song 2 Name:"
  song_2_name = gets.chomp.upcase!
print "Length of #{song_2_name} (in seconds):"
  l2 = gets.chomp.to_i
    while l2 <= 0 
       print "Please enter only a positive number:"
       l2=gets.chomp.to_i
    end 
print "How many times have you played #{song_2_name}?:"
  t2 = gets.chomp.to_i
    while t2 <= 0 
       print "Please enter only a positive number:"
       t2=gets.chomp.to_i
    end 
total_play2 = l2*t2

puts " "

print "Song 3 Name:"
  song_3_name = gets.chomp.upcase!
print "Length of #{song_3_name} (in seconds):"
  l3 = gets.chomp.to_i
    while l3 <= 0 
       print "Please enter only a positive number:"
       l3=gets.chomp.to_i
    end 
print "How many times have you played #{song_3_name}?:"
  t3 = gets.chomp.to_i
    while t3 <= 0 
       print "Please enter only a positive number:"
       t3=gets.chomp.to_i
    end 
total_play3 = l3*t3

puts " "

print "Song 4 Name:"
  song_4_name = gets.chomp.upcase!
print "Length of #{song_4_name} (in seconds):"
  l4 = gets.chomp.to_i
    while l4 <= 0 
        print "Please enter only a positive number:"
        l4=gets.chomp.to_i
    end 
print "How many times have you played #{song_4_name}?:"
  t4 = gets.chomp.to_i
    while t4 <= 0 
        print "Please enter only a positive number:"
        t4=gets.chomp.to_i
    end 
total_play4 = l4*t4

puts " "

#calculate total play time per song

puts "The total play time for:" 
puts "#{song_1_name}: " + total_play1.to_s + " second(s)"
puts "#{song_2_name}: " + total_play2.to_s + " second(s)"
puts "#{song_3_name}: " + total_play3.to_s + " second(s)"
puts "#{song_4_name}: " + total_play4.to_s + " second(s)"

puts " "

#calculate total play time for all songs

total_play = total_play1 + total_play2 + total_play3 + total_play4

puts "The total play time for all songs is " + total_play.to_s + " second(s)."

puts " "

#find the song with the longest play time and corresponding title

hash = {song_1_name => total_play1, song_2_name => total_play2, song_3_name => total_play3, song_4_name => total_play4}

max_seconds = hash.values.max
max_song = hash.key(max_seconds)

puts "You've listened to " + max_song + " the longest, for " + max_seconds.to_s + " second(s)!"

puts " "

if total_play <= 600
  puts "You're just getting warmed up..."
else 
  puts "You're an official party animal!"
end 

#things to fix:
#loop does not allow user to choose 0 for times played - also will not calculate correctly if error such as 123abc is entered (will read as 123). 
#if there is a tie for longest song play, program will only print first song with max value
#how can user input prompt be looped for each song, but print out unique song number in prompt and store unique variables?
