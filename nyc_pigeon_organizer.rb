require 'pry'
def nyc_pigeon_organizer(data)
  # write your code here!
  # get pigeon names by the gender tag into an array
  pigeons = {}
  pigeon_array = []
  males = data[:gender][:male]
  females = data[:gender][:female]
  pigeon_array.push(males)
  pigeon_array.push(females)
  birds = pigeon_array.flatten
    birds.each do  |x| 
     pigeons[x] = {:color => [], 
     :lives => [], 
     :gender => [] 
       
     }
     data[:color].each do |key, value|
     if data[:color][key].include? (x)
        pigeons[x][:color].push(key.to_s)
     end
   end
     data[:lives].each do |key, value|
     if data[:lives][key].include? (x)
       pigeons[x][:lives].push(key)
     end
   end
    if  females.include? (x)  
      pigeons[x][:gender].push("female") 
    else  
      pigeons[x][:gender].push("male")
    end  
end

return pigeons
binding.pry
end
