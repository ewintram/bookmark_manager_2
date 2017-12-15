feature 'sign up form' do
  scenario 'signing up and entering as user' do
    visit('/signup')
    fill_in 'email_address', with: 'example@hotmail.com'
    fill_in 'password', with: 'password'
    click_button('Sign up')
    expect(current_path).to eq('/links')
  end

  scenario 'it shows welcome message' do
    visit('/signup')
    fill_in 'email_address', with: 'example@hotmail.com'
    fill_in 'password', with: 'password'
    click_button('Sign up')
    expect(page).to have_content('WELCOME example@hotmail.com')
  end

  scenario 'user count increases by 1' do
    sign_up
    expect{ sign_up }.to change(User, :count).by 1
  end
end
