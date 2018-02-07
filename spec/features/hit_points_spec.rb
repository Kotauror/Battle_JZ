feature 'hit points' do
  scenario 'it shows players HP' do
    sign_in_and_play
    expect(find('div.player1-hp')).to have_content('100')
    expect(find('div.player2-hp')).to have_content('100')
  end

  scenario 'it decreases players HP' do
    sign_in_and_play
    click_button('Attack Justyna')
    click_button('Go back to the battle arena')
    expect(find('div.player2-hp')).to have_content('90')
  end
end
