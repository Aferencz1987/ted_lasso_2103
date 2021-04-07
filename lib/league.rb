class League
  attr_reader :name, :teams
  def initialize(name)
    @name = name
    @teams = []
  end

  def add_team(team)
    @teams.push(team)
  end

  def captains
    players = []
    @teams.each do |team|
      players.push(team.team)
    end
    cap = []
    @teams.each do |team|
      cap.push(team.captain)
    end
    final_answer = []
    players.flatten.each do |player|
      if cap.include?(player.name)
        final_answer.push(player)
      end
    end
    final_answer
  end

  def players_by_team
    teams_hash = Hash.new
    @teams.each do |team|
      teams_hash[team] = team.team.map do |player|
        player.name
      end
    end
    teams_hash
  end

  def most_expensive_player
    players = []
    @teams.each do |team|
      players.push(team.team)
    end
    highest_paid = players.flatten.max_by do |player|
      player.salary
    end
    highest_paid.name.split
  end
end
