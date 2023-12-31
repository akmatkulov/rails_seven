require "rails_helper"
require "spec_helper"

describe Article do
  describe "validation" do
    it { should validate_presence_of :title }
    it { should validate_presence_of :text }
  end

  describe "association" do
    it { should have_many :comments }
  end

  describe "#subject" do
    it "returns the article title" do
      # создаем обьект article  хитрым способом
      article = create(:article, title: 'Lorem Ipsum')
      expect(article.subject).to eq 'Lorem Ipsum'
    end
  end

  describe "#last_comment" do
    it "returns last comment" do
      # создаем обьект article  хитрым способом
      article = create(:article_with_comments)

      expect(article.last_comment.body).to eq 'comments body 3'
    end
  end
end