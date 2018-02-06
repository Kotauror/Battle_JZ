feature 'form for entering names' do
  scenario 'it shows players names' do
    visit('/')
    fill_in('player1_name', with: "Daniel")
    fill_in('player2_name', with: "Justyna")
    click_button("Submit")
    expect(page).to have_content('Daniel vs Justyna')
  end

  scenario 'it shows players HP' do
    visit('/')
    fill_in('player1_name', with: "Daniel")
    fill_in('player2_name', with: "Justyna")
    click_button("Submit")
    expect(find('div.player1-hp')).to have_content('100')
    expect(find('div.player2-hp')).to have_content('100')
  end
end
