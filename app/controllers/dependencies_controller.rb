class DependenciesController < ApplicationController

  respond_to :html

  def new
    @dependency = Dependency.new
  end

  def create
    @dependency = Dependency.find_or_create_by(name: dependency_params[:name])
    redirect_to(action: :show, dependency_name: @dependency.name)
  end

  def show
    @dependency = Dependency.find_or_create_by(name: params[:dependency_name])
  end

  private

    def dependency_params
      params.require(:dependency).permit(:name)
    end
end
