class RessourcesController < ApplicationController
  before_action :set_ressource, only: [:show]
  skip_before_filter :authenticate_user!, only: [:index, :show]
  # rajouter plus tard update et delete

  def index
    @ressources = Ressource.all
    @categories = Category.all
    @sub_categories = SubCategory.all
  end

  def show
  end

  def new
    @ressource = Ressource.new
    @categories = Category.all
    @sub_categories = SubCategory.all
  end

  def create
    @categories = @ressource.categories
    @sub_categories = @ressource.sub_categories
    @ressource = Ressource.new(ressource_params)

    if @ressource.save
      redirect_to ressource_path(@ressource)
      # vérifier le chemin pour l'id
    else
      render :new
    end
  end

  private

  def ressource_params
    params.require(:ressource).permit(:title, :content, :picture, :site, :address, :categories, :sub_categories)
  end

  def set_ressource
    @ressource = Ressource.find(params[:id])
  end
end
