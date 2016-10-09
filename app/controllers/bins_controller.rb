class BinsController < ApplicationController
  def index
    @bins = Bin.all
  end

  def show
    @bin = Bin.find(params[:id])
  end

  def new
    @bin = Bin.new
  end

  def create
    @bin = Bin.new
    @bin.user_id = params[:user_id]

    if @bin.save
      redirect_to "/bins", :notice => "Bin created successfully."
    else
      render 'new'
    end
  end

  def edit
    @bin = Bin.find(params[:id])
  end

  def update
    @bin = Bin.find(params[:id])

    @bin.user_id = params[:user_id]

    if @bin.save
      redirect_to "/bins", :notice => "Bin updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @bin = Bin.find(params[:id])

    @bin.destroy

    redirect_to "/bins", :notice => "Bin deleted."
  end
end
