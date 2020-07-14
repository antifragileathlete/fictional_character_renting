class CharactersController < ApplicationController
  def index
    #@characters = Character.all
    @characters = policy_scope(Character)
    #authorize @characters
    if params[:search_by_name_and_genre].present?
      @characters = Character.search_by_name_and_genre(params[:search_by_name_and_genre])
    else
      @characters = Character.all
    end
  end

  def show
    @character = Character.find(params[:id])
    authorize @character
  end

  def new
    @character = Character.new
    authorize @character
  end

  def create
    @character = Character.new(character_params)
    @character.user = current_user
    authorize @character
    if @character.save!
      redirect_to character_path(@character)
    else
      render 'new'
    end
  end

  def destroy
    @character = Character.find(params[:id])
    authorize @character
    @character.destroy
    redirect_to root_path
  end

  private

  def character_params
    params.require(:character).permit(:name, :genre, :user_id, :photo)
  end
end
