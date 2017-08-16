feature Battle do

	scenario 'loads players form' do
		visit('/')
		expect(page).to have_content 'Enter players'
	end

	scenario 'checks if the names are in the form' do
		visit('/')
		fill_in "player1", :with => "Olivia"
		fill_in "player2", :with => "Rolando"
		click_button "Submit"
		expect(page).to have_content "Olivia and Rolando are going to battle!"
	end

	scenario 'checks if Player 2 has 100 HP' do
		visit('/')
		fill_in "player1", :with => "Olivia"
		fill_in "player2", :with => "Rolando"
		click_button "Submit"
		expect(page).to have_content "Rolando: 100 HP / 50 MP"
	end

end
