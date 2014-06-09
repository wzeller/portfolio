def shelf_experiment(n)
  
  green = 0
  white = 0
  shelf = []
  shelf[0] = ['w','w']
  shelf[1] = ['g','g']
  count = 0
  
  n.times do 
    shelf[2] = [['w','g'], ['g','w']].sample.flatten
    shelf_choice = shelf[rand(3)]
    if shelf_choice[0] == "g" 
      count += 1
      if shelf_choice[1] == "w"
        white += 1 
      else 
        green += 1
      end
    end 
  end
  
  green.to_f / (white + green)
  
end

p shelf_experiment(100000)

def shelf_experiment2(n)
  
  green = 0
  white = 0
  shelf = []
  shelf[0] = ['g','g']
  
  n.times do 
    shelf[1] = [['w','g'], ['g','w']].sample.flatten
    
    if shelf[1][0] == "g"
      shelf_choice = shelf[rand(2)] 
    else
      shelf_choice = shelf[0]
    end

    green += 1 if shelf_choice[1] == "g"
    white += 1 if shelf_choice[1] == "w"
  end

  green.to_f / (green + white) 

end

p shelf_experiment2(100000)