RSpec.describe "POST /api/v1/admin/articles", type: :request do
  let(:journalist) { create(:user, role: "journalist") }
  let(:journalist_credentials) { journalist.create_new_auth_token }
  let(:journalist_headers) { { HTTP_ACCEPT: "application/json" }.merge!(journalist_credentials) }
  let(:image) do
    {
      type: "image",
      encoder: "iphone_picture",
      data: "hjdehjdhej",
      extension: "png",
    }
  end

  describe "successfully" do
    before do
      post "/api/v1/admin/articles",
           params: { article: {
             title: "My title",
             teaser: "My teaser",
             content: "My content",
             category: "sports",
             premium: false,
             image: image,
           } },
           headers: journalist_headers
    end

    it "is expected to respond with create status" do
      expect(response).to have_http_status :ok
    end

    it "is expected to return success message" do
      expect(response_json["message"]).to eq "successfully saved"
    end

    it "is expected to create an article" do
      article = Article.last
      expect(article.title).to eq "My title"
    end

    it "an article to be linked to a journalist" do
      expect(journalist.articles.first.teaser).to eq "My teaser"
    end
    it "an article is not premium" do
      expect(Article.last.premium).to eq false
    end
  end

  describe "create premium article" do
    before do
      post "/api/v1/admin/articles",
           params: { article: {
             title: "My title",
             teaser: "My teaser",
             content: "My content",
             category: "sports",
             premium: true,
           } },
           headers: journalist_headers
    end

    it "an article is premium" do
      expect(Article.last.premium).to eq true
    end
  end

  describe "unsuccessfully, missing article content" do
    before do
      post "/api/v1/admin/articles",
           params: {
             article: {
               title: "My title",
               teaser: "My teaser",
               content: "",
               category: "sports",
             },
           },
           headers: journalist_headers
    end

    it "is expected to return a response status" do
      expect(response).to have_http_status :unprocessable_entity
    end

    it "is expected to return an error message" do
      expect(response_json["message"]).to eq "Content can't be blank"
    end
  end

  describe "unauthozired user" do
    let!(:unauthozired_user) { create(:user, role: "registered") }
    let(:unauthozired_user_credentials) { unauthozired_user.create_new_auth_token }
    let(:unauthozired_headers) { { HTTP_ACCEPT: "application/json" }.merge!(unauthozired_user_credentials) }
    before do
      post "/api/v1/admin/articles",
           params: { article: {
             title: "My title",
             teaser: "My teaser",
             content: "My content",
             category: "sports",
           } }, headers: unauthozired_headers
    end
    it "is expected to return unauthozired response status" do
      expect(response).to have_http_status :unauthorized
    end
    it "is expected to return error message" do
      expect(response_json["message"]).to eq "Sorry, you don't have the necessary permission"
    end
  end
end
