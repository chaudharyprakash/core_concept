class RoomsController < ApplicationController

  before_filter :set_member,only: [:update, :destroy, :edit]

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(rooms_params)
    if @member.save
      flash[:success] = "Member Successfully Created.."
      redirect_to rooms_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @member.update_attributes!(rooms_params)
      flash.keep[:notice] = "Member Successfully Updated.."
      redirect_to rooms_path
    else
      redirect_to 'edit'
    end
  end

  def destroy
    @member.destroy
    flash[:success] = " Member Successfully Deleted.."
    redirect_to rooms_path
  end

  def index
    @members = Member.all
  end

  private
  
  def set_member
    @member = Member.find_by_id(params[:id])
  end

  def rooms_params
    params.require(:member).permit(:name, :phone, :rent)
  end

end
