feature "Check homepage text" do
  scenario "Visiting homepage" do
    visit('/')
    expect(page).to have_content("Name")
  end
end

feature "user adds name to form and then content is their name" do
  scenario "shows name" do
  sign_in_and_play
  expect(page).to have_content('John Vs Dave')
end
end

feature "Player 2 has hit points" do
  scenario "Shows hit points" do
    sign_in_and_play
    expect(page).to have_content('HP = 100')
  end
end

feature 'player 1 can hit player 2' do
  scenario 'confirms hit' do
    sign_in_and_play
    click_on("attack")
    expect(page).to have_content('Player 2 has been hit')
  end
end

