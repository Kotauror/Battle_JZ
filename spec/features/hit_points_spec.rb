feature 'hit points' do
  scenario 'it shows players HP' do
    sign_in_and_play
    expect(find('div.player1-hp')).to have_content('100')
    expect(find('div.player2-hp')).to have_content('100')
  end

  # scenario 'it descreases players HP' do
  #   sign_in_and_play
  #   click_button('Attack Justyna')
  #   expect(find('div.player2-hp')).to have_content('90')
  # end
end
