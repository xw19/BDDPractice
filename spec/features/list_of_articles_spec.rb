require 'rails_helper'

RSpec.feature "ListOfArticles", type: :feature do
  describe "article listing", type: :feature do
    before :each do
      @articles = create_list(:article, 10)
    end

    it "goes to home page and checks for a list of articles" do
      visit '/'
      @articles.each do |article|
        expect(page).to have_content(article.title)
      end
    end

    it "shows article" do
      article = @articles.first
      visit '/'
      click_link(article.title)
      expect(page).to have_content(article.title)
    end
  end
end
