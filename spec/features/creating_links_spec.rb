feature 'Adding links' do
  scenario 'I can add new links' do
    visit '/links/new'
    fill_in 'title', with: 'Geek Stall'
    fill_in 'url', with: 'http://geekstall.com'
    click_button 'Add link'
    expect(current_path).to eq '/links'
    within 'ul#links' do
      expect(page).to have_content('Geek Stall')
    end
  end
end
