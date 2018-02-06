feature 'form for entering names' do
  scenario 'it shows players names' do
    sign_in_and_play
    expect(page).to have_content('Daniel vs Justyna')
  end
end
