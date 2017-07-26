feature "Adding tags to links" do
  scenario "I can add multiple tags" do
    visit '/links/new'
    fill_in 'url',   with: 'http://www.makersacademy.com/'
    fill_in 'title', with: 'Makers Academy'
    fill_in 'tags',  with: 'education ruby'
    click_button 'Add link'
    link = Link.first
    expect(link.tags.map(&:name)).to include('education', 'ruby')
  end
end
