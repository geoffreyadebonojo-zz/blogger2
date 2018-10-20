require "rails_helper"

describe "user sees one article" do
  describe "they link from the articles index" do
    it "displays information for one article" do

      article_1 = Article.create(title: "Title of First Article", body: "The body of the first article goes here")
      article_1 = Article.create(title: "Title of Second Article", body: "The body of the second article goes here")

      visit articles_path
      click_on "Create a New Article"
      # save_and_open_page
      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)


    end
  end
end
