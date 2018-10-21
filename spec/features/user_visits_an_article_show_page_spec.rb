require "rails_helper"

describe "user sees one article" do
  describe "they link from the articles index" do
    xit "displays information for one article" do

      # TODO: fix this test- it looks like it belonds in the create article feature test
      article_1 = Article.create(title: "Title of First Article", body: "The body of the first article goes here")
      article_2 = Article.create(title: "Title of Second Article", body: "The body of the second article goes here")

      visit articles_path
      click_on "Create a New Article"


      expect(page).to have_content(article_1.title)
      expect(page).to have_content(article_1.body)


    end
  end
end
