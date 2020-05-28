feature "Check homepage text" do
  scenario "Visiting homepage" do
    visit('/')
    expect(page).to have_content("Name")
  end
end

feature "user adds name to form and then content is their name" do
  scenario "shows name" do
  visit('/')
  fill_in('player1', with: 'John')
  click_on("submit")
  expect(page).to have_content('John')
end
end
