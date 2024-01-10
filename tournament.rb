def tournament_scores(arr)
	#[Team, PT, GS, GD]
	teams_info = {} 

	arr.each do |match|
		home_team = match.split('-').first.split(' ').first
		home_goals = match.split('-').first.split(' ').last.to_i
		
		visitor_team = match.split('-').last.split(' ').last
		visitor_goals = match.split('-').last.split(' ').first.to_i

        teams_info[home_team] = { pt: 0, gs: 0, gd: 0 } unless teams_info.key?(home_team)
        teams_info[visitor_team] = { pt: 0, gs: 0, gd: 0 } unless teams_info.key?(visitor_team)
		
        home_points = match_points(home_goals, visitor_goals) 
        visitor_points = match_points(visitor_goals, home_goals)

        teams_info[home_team] = { 
            pt: teams_info[home_team][:pt] + home_points, 
            gs: teams_info[home_team][:gs] + home_goals, 
            gd: teams_info[home_team][:gd] + (home_goals - visitor_goals )
        }

        teams_info[visitor_team] = { 
            pt: teams_info[visitor_team][:pt] + visitor_points, 
            gs: teams_info[visitor_team][:gs] + visitor_goals, 
            gd: teams_info[visitor_team][:gd] + (visitor_goals - home_goals )
        }
	end
    # p teams_info
    teams_info.sort_by{ |k, v| [ -v[:pt], -v[:gs], -v[:gd] ] }.map{|team, scores| [team, scores[:pt], scores[:gs], scores[:gd]] }
end

def match_points(compare_to, comparable)
    if compare_to == comparable
        1
    elsif compare_to > comparable
        3
    else
        0
    end
end

p tournament_scores(["A 0 - 1 B", "C 2 - 0 D", "B 2 - 2 C", "D 3 - 1 A", "A 2 - 2 C", "B 2 - 0 D"])
p tournament_scores(["A 0 - 0 B", "C 3 - 5 D", "B 1 - 0 C", "D 1 - 1 A", "A 2 - 2 C", "B 1 - 0 D"])
p tournament_scores(["A 4 - 0 B", "C 2 - 1 D", "B 1 - 0 C", "D 3 - 2 A", "A 1 - 3 C", "B 2 - 1 D"])
p tournament_scores(["A 3 - 3 B", "C 0 - 6 D", "B 4 - 2 C", "D 0 - 1 A", "A 1 - 2 C", "B 2 - 1 D"])
p tournament_scores(["A 2 - 1 B", "C 3 - 0 D", "B 1 - 1 C", "D 1 - 0 A", "A 3 - 0 C", "B 2 - 4 D"])
p tournament_scores(["A 0 - 1 B", "C 2 - 0 D", "B 0 - 0 C", "D 0 - 1 A", "A 0 - 2 C", "B 3 - 1 D"])

