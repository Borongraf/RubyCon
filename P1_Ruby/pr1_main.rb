# frozen_string_literal: true

if (ARGV[0] == "Paper" && ARGV[1] == "Stone") ||
   (ARGV[0] == "Scissors" && ARGV[1] == "Paper") ||
   (ARGV[0] == "Stone" && ARGV[1] == "Scissors")
    puts ("First player win")
elsif (ARGV[0] == "Stone" && ARGV[1] == "Paper") ||
      (ARGV[0] == "Paper" && ARGV[1] == "Scissors") ||
      (ARGV[0] == "Paper" && ARGV[1] == "Scissors")
    puts ("Second player win")
else puts ("Stone, Scissors or Paper please")
end

