require 'spec_helper'

describe "StaticPages" do
  #Tạo một đối tượng chứa giá trị chung tránh trùng lặp
  let(:base_title) { "Ruby on Rails Tutorial Sample App" }
	#Giống như thẻ title trong htlm, khi vào trang /static_pages/home thì tiêu đề của trang là Home pages
  describe "Home pages" do
  	#2 dòng này có nghĩa là khi vào trang /static_pages/home thì nội dung phải có Sample App
    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	#Dòng này sử dụng page variable với nghĩa là hy vọng khi thăm trang /static_pages/home thì nội dung trong trang là đúng
    	expect(page).to have_content('Sample App')
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
    end

    it "should have base title" do
      visit '/static_pages/home'
      expect(page).to have_title("#{base_title}")
    end

    it "should not have page title" do
      visit '/static_pages/home'
      expect(page).not_to have_title("| Home")
    end
  end

  describe "Help page" do
    it "should have the content 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_content('Help')
    end

    it "should have right title 'Help'" do
      visit '/static_pages/help'
      expect(page).to have_title("#{base_title} | Help")
    end
  end

  describe "About page" do
    it "should have the content 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_content('About Us')
    end

    it "should have right title 'About Us'" do
      visit '/static_pages/about'
      expect(page).to have_title("#{base_title} | About Us")
    end
  end
  describe "Contact page" do
    it "should have the content 'Contact'" do
      visit '/static_pages/contact'
      expect(page).to have_content('Contact')
    end

    it "should have right title" do
      visit '/static_pages/contact'
      expect(page).to have_title("#{base_title} | Contact")
    end
  end
end
