def get_first_name_of_season_winner(data, season)
store_name = ""
winner = ""
data.each do |season_loop, contestants|
  if season_loop == season
  contestants.each do |name|
    name.each do |attrib, value|

      if attrib == "name"

        store_name = value
      end
      if value == "Winner"
        winner = store_name
      end
    end
  end
end
end
winner.split(" ")[0]
  # code here
end

def get_contestant_name(data, occupation)
chosen = ""
store_name = ""
data.each do |season_loop, contestants|
  contestants.each do |name|
    name.each do |attrib, value|

      if attrib == "name"

        store_name = value
      end
      if value == occupation
        chosen = store_name
      end
    end
  end
end
chosen  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season_loop, contestants|
    contestants.each do |name|
      name.each do |attrib, value|
        if value == hometown
          count += 1
        end
      end
    end
  end
count
end

def get_occupation(data, hometown)
  # code here
  chosen = ""
  store = 0
  match = ""
  counter = 0
  data.each do |season_loop, contestants|
    contestants.each do |name|
      name.each do |attrib, value|
        if value == hometown
          match = "yes"
        ##  binding.pry
        end
        while match == "yes" && store == 0 do
        ##  binding.pry
          if attrib == "occupation"
            chosen = value
            match = "no"
            store = 1
          ##  binding.pry
          else
            break
          end
        end
      end
    end
end
  chosen
end

def get_average_age_for_season(data, season)
  # code here
  list = []
  total = 0
  average = Float
  data.each do |season_loop, contestants|
    if season_loop == season
    contestants.each do |name|
      name.each do |attrib, value|
        if attrib == "age"
          list << value
        end
      end
    end
    end
  end

  list.each do |value|
    ##binding.pry
    total += value.to_i
  end
  ##binding.pry
  average = total.to_f/list.size.to_f
  average.round
end
