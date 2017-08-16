feature Battle do

	scenario 'loads players form' do
		visit('/')
		expect(page).to have_content 'Enter players'
	end

	scenario 'checks if the names are in the form' do
		sign_in_and_play
		expect(page).to have_content "Player 1 and Player 2 are going to battle!"
	end

	scenario 'checks if Player 2 has 100 HP' do
		sign_in_and_play
		expect(page).to have_content "Player 2: 100 HP / 50 MP"
	end

	scenario 'allows Player 1 to attack Player 2' do
		sign_in_and_play
		expect(page).to have_content "Player 1 attacks Player 2! It's super effective!"
	end

end
