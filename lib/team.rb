class Team
  attr_reader :name, :coach, :team
  def initialize(name, coach, team)
    @name = name
    @coach = coach
    @team = team
  end

  def total_salary
    @team.sum do |player|
      player.salary
    end
  end

  def captain
    @team.max_by do |player|
      player.salary
    end.name
  end

  def positions_filled
    positions = []
      @team.each do |player|
        positions.push(player.position)
      end
    positions
  end
end
