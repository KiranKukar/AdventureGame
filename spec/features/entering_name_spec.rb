feature 'player can enter their name' do
  scenario 'player enters their name and can see it on the page' do
    visit('/')
    fill_in 'name', with: 'Pingu'
    click_on 'Begin'

    expect(page).to have_content 'Pingu'
  end
end