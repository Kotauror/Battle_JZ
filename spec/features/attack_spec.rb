feature 'attack player' do
  scenario 'click attack, attack player 2, and get confirmation message' do
    sign_in_and_play
    click_button "Attack!"
    expect(page).to have_content("Daniel attacked Justyna")
  end
end
