class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
    @author = Author.new
  end

  def create
    @author = Author.new(author_params)
    if @author.save
      flash[:message] = "Author successfully created!"
      redirect_to author_path(@author)
    else 
      flash.now[:message] = @author.errors.full_messages[0]
      render :new 
    end 
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
