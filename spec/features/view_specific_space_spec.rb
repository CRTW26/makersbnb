feature "View specific space" do
  scenario "A customer can view specific space" do
    user = add_test_user()
    space = add_test_space(user)
    visit("/")
    click_button("Login")
    fill_in(:email, with: "test@test.com")
    fill_in(:password, with: "password123")
    click_button("login")
    click_button(space)
    expect(page).to have_content "Buckingham Palace"
    select "September", from: "months"
    click_button("Submit")
    expect(page).to have_button "2020-9-17"
  end
end
