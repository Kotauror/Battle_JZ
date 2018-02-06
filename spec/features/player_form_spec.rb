feature 'form for entering names' do
  scenario 'it shows players names' do
    visit('/')
    fill_in('player1_name', with: "Daniel")
    fill_in('player2_name', with: "Justyna")
    click_button("Submit")
    expect(page).to have_content('Daniel vs Justyna')
  end
end
