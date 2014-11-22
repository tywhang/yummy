class SectionsController < ApplicationController

  def create
    Section.create(section_params)
    redirect_to admin_index_path
  end

  def edit
    @section = Section.find(params[:id])
  end

  def update
    @section = Section.find(params[:id])
    @section.update(section_params)
    redirect_to admin_index_path
  end

  def destroy
    @section = Section.find(params[:id])
    @section.destroy
    redirect_to admin_index_path
  end

  private

  def section_params
    params.require(:section).permit(:name, :description)
  end
end
