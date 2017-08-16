def sign_in_and_play
	visit('/')
	fill_in "player1", :with => "Olivia"
	fill_in "player2", :with => "Rolando"
	click_button "Submit"
end