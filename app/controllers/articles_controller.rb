class ArticlesController < ApplicationController
  before_filter :authenticate_user!

  # GET /articles/1/edit
  def edit
    @article = Article.find(params[:id])
    @type = Type.all
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(params[:article])
    @type = Type.all
    @minute = @article.minute

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article.minute }
        format.json { render json: @article, status: :created, location: @article }
      else
        format.html { render "minutes/show" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /articles/1
  # PUT /articles/1.json
  def update
    @article = Article.find(params[:id])

    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to @article.minute }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article = Article.find(params[:id])
    @article.destroy

    respond_to do |format|
      #format.html { redirect_to articles_url }
      format.html { redirect_to :back  }
      format.json { head :ok }
    end
  end
end
