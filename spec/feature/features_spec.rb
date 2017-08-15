feature 'Testing infrastructure' do

  scenario 'Checks if the page is working.' do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end