
feature 'Testing infrastructure' do
  scenario 'can run app and check content' do
    visit '/'
    expect(page).to have_content('Welcome to the battle!')
    expect(page).to have_content("Enter the combatants' names:")
  end
end

feature 'Player name form' do
  scenario 'takes player names as input and displays them on the /play page' do
    enter_names_and_play
    expect(page.status_code).to eq(200)
    expect(page).to have_content("Yu")
    expect(page).to have_content("Ameno-sagiri")
  end

  scenario 'displays the HP of each player on the /play page' do
    enter_names_and_play
    expect(page.status_code).to eq(200)
    expect(page).to have_content("hp")
    expect(page).to have_content("200")
  end
end

feature 'Attacking' do
  scenario 'Player 1 attacks Player 2' do
    enter_names_and_play
    click_link 'Attack'
    expect(page).to have_content('Yu attacks Ameno-sagiri')
  end
end