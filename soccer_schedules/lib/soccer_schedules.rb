class SoccerSchedules

  def initialize(league, mode)
    @league = league
    @mode = mode
    #call create schedule here based on mode
    create_easy_schedule
  end

  def create_easy_schedule
    game = []
    schedule = []
    @league.each do |team|
      game = [] if game.length == 2
      unless schedule.include?(team) || game.include?(team)
        game << team
      end
      schedule << game if game.length == 2
    end
    schedule
    end
end

# Imagine you run a soccer league and you need to create a schedule. Each team
#         plays only one game per week on Saturday.
#         #### Easy
#         Your league has eight teams. Generate (to the screen or to a file), a schedule that has each team play each other team exactly once.
#         ##### Medium
#         #Your league has two divisions of eight teams. Each team should play the other
#         #teams in their division twice and the teams in the other division just once.
#         ##### Hard
#         Your league has four divisions of eight teams. Each team should play each team
#         in their division twice and any two teams from each other division.
# a_league = ["team_1a", "team_2a", "team_3a", "team_4a", "team_5a", "team_6a", "team_7a", "team_8a"]
# game = []
# schedule = []
# a_league.each do |team|
#   game = [] if game.length == 2
#   #binding.pry
#   unless schedule.include?(team) || game.include?(team)
#     game << team
#   end
#   schedule << game if game.length == 2
#   #binding.pry
# end

# schedule.each do |match|
#   #binding.pry
#   puts "Week 1: #{match[0]} vs #{match[1]}"
# end