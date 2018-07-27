class SearchController < ApplicationController

	def show
		@year = params["year"]
		@month = params["month"]
		articles = Article.all
		@relevant_articles = []

		articles.each do |article|
			if(@year == article.created_at.to_s[0..3]) &&
				(@month[0..1] == article.created_at.to_s[5..6])
					@relevant_articles << article
			end
		end
	end

	def index
		articles = Article.all
		@publishing_date = {}
		articles.each do |article|
			@publishing_date[article.id] = [article.created_at.to_s[0..3],
											article.created_at.to_s[5..6]]
		end
	end

	def create
		@search = Search.new
		redirect_to search_path(:show)
	end
end
