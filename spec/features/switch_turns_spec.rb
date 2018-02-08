feature 'Switch turns' do
  context 'seeing the current turn' do
    scenario 'at the start of the game' do
      sign_in_and_play
      expect(page).to have_content "Daniel's turn"
    end

    scenario 'after player 1 attacks' do
      sign_in_and_play
      click_button 'Attack Justyna'
      click_button 'Go back to the battle arena'
      expect(find('div.turn')).to have_content("Justyna's turn")
    end
  end
end
