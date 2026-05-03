puts "\n" + "=" * 60
puts "Welcome to the Girlie Passions Tracker!"
puts "=" * 60
puts "Discover what you love based on your vibes!\n\n"

 
print "What's your name, gorgeous?: "
name = gets.chomp

puts "\nHey #{name}! Let's explore your passions!\n\n"

passions = {
  1 => {
    category: "Books & Literature",
    emoji: "",
    genres: ["Romance", "Fantasy", "Mystery", "Self-help"],
    authors: ["Taylor Jenkins Reid", "Colleen Hoover", "Booker Prize Winners", "K-Dramas & Manhwa"]
  },
  2 => {
    category: "Flowers & Gardening",
    emoji: "",
    options: ["Rose Garden", "Wildflower Meadow", "Japanese Garden", "Succulent Collection"],
    benefits: ["stress relief", "aesthetic instagram content", "connecting with nature", "fresh bouquets"]
  },
  3 => {
    category: "Programming & Tech",
    emoji: "",
    languages: ["Python", "JavaScript", "Ruby", "CSS"],
    projects: ["Web Design", "Apps", "AI Projects", "Open Source"]
  },
  4 => {
    category: "Fashion & Style",
    emoji: "",
    vibes: ["Cottage Core", "Dark Academia", "Y2K", "Minimalist", "Maximalist"],
    items: ["Dresses", "Accessories", "Thrifting", "DIY Fashion"]
  },
  5 => {
    category: "Food & Recipes",
    emoji: "",
    cuisines: ["Baking & Pastries", "Healthy Bowls", "Italian Cuisine", "Aesthetically Pleasing Dishes"],
    skill_level: ["Beginner", "Intermediate", "Advanced Chef"]
  }
}

puts "What are you interested in today?"
puts "1. Books & Literature"
puts "2. Flowers & Gardening"
puts "3. Programming & Tech"
puts "4. Fashion & Style"
puts "5. Food & Recipes"
print "\nChoose (1-5): "

choice = gets.chomp.to_i

if passions[choice]
  passion = passions[choice]
  
  puts "\n" + "=" * 60
  puts "#{passion[:emoji]} #{passion[:category]} #{passion[:emoji]}"
  puts "=" * 60 + "\n"
  
  case choice
  when 1 
    puts "What type of books do you enjoy?"
    passion[:genres].each_with_index do |genre, index|
      puts "#{index + 1}. #{genre}"
    end
    print "\nChoose: "
    book_choice = gets.chomp.to_i
    selected_genre = passion[:genres][book_choice - 1] || passion[:genres][0]
    puts "\nGreat! #{selected_genre} books are *chef's kiss*!"
    puts "You should start with a cozy reading corner setup:"
    puts "   - Fuzzy blanket"
    puts "   - Hot tea"
    puts "   - Aesthetic bookends"
    
  when 2 
    puts "What type of garden vibe speaks to you?"
    passion[:options].each_with_index do |option, index|
      puts "#{index + 1}. #{option}"
    end
    print "\nChoose: "
    flower_choice = gets.chomp.to_i
    selected_garden = passion[:options][flower_choice - 1] || passion[:options][0]
    puts "\nA #{selected_garden} is perfect for your soul!"
    puts "Benefits you'll get:"
    puts "   - #{passion[:benefits].sample}"
    puts "   - #{passion[:benefits].sample}"
    
  when 3  
    puts "What's your programming vibe?"
    passion[:languages].each_with_index do |lang, index|
      puts "#{index + 1}. #{lang} coding"
    end
    print "\nChoose: "
    prog_choice = gets.chomp.to_i
    selected_lang = passion[:languages][prog_choice - 1] || passion[:languages][0]
    puts "\n#{selected_lang} is amazing! You're going to build incredible things!"
    puts "Project Ideas:"
    puts "   - #{passion[:projects].sample}"
    puts "   - #{passion[:projects].sample}"
    
  when 4 
    puts "What's your fashion aesthetic?"
    passion[:vibes].each_with_index do |vibe, index|
      puts "#{index + 1}. #{vibe}"
    end
    print "\nChoose: "
    fashion_choice = gets.chomp.to_i
    selected_vibe = passion[:vibes][fashion_choice - 1] || passion[:vibes][0]
    puts "\n#{selected_vibe} is SO YOU!"
    puts "Must-have items for this vibe:"
    puts "   - #{passion[:items].sample}"
    puts "   - #{passion[:items].sample}"
    
  when 5  
    puts "What's your cooking level?"
    passion[:skill_level].each_with_index do |level, index|
      puts "#{index + 1}. #{level}"
    end
    print "\nChoose: "
    food_choice = gets.chomp.to_i
    selected_level = passion[:skill_level][food_choice - 1] || passion[:skill_level][0]
    puts "\nPerfect! You're a #{selected_level.downcase} in the kitchen!"
    puts "Try these cuisines:"
    puts "   - #{passion[:cuisines].sample}"
    puts "   - #{passion[:cuisines].sample}"
  end
else
  puts "\nOops! That's not a valid choice. Try again, bestie!"
end

 
puts "\n" + "=" * 60
recommendations = [
  "You're absolutely amazing! Keep shining!",
  "Remember: Your passions make you unique!",
  "Keep being your authentic girlie self!",
  "You deserve to celebrate what you love!",
  "Never stop following your dreams, queen!"
]

puts recommendations.sample
puts "=" * 60
puts "\nHave a fabulous day, #{name}!\n\n"
