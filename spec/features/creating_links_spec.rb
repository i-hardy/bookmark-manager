feature 'Adding links' do
  before do
    visit '/links/new'
    fill_in 'title', with: 'Geek Stall'
    fill_in 'url', with: 'http://geekstall.com'
    fill_in 'tags', with: 'shopping'
    click_button 'Add link'
  end

  scenario 'I can add titles to new links' do
    expect(current_path).to eq '/links'
    within 'ul#links' do
      expect(page).to have_content('Geek Stall')
    end
  end

  scenario 'I can add urls to new links' do
    within 'ul#links' do
      expect(page).to have_content('geekstall.com')
    end
  end

  scenario 'I can add tags to new links' do
    link = Link.last
    expect(link.tags.map(&:name)).to include('shopping')
  end
end
