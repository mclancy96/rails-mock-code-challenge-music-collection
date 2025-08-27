class CollectionsController < ApplicationController
  def index
    @collections = Collection.all
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.create(collection_params)
    redirect_to @collection
  end

  private

  def collection_params
    params.require(:collection).permit(:name, :address)
  end
end
