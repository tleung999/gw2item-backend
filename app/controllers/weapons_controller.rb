class WeaponsController < ApplicationController
  include WeaponsHelper
  def index
    @weapon_list = Weapon.where(["created_at > ? AND restriction_level > ?", Time.zone.now.to_date, 0]).paginate(:page => params[:page], :per_page => 50).order(profit_margin: :desc)
    @total = Weapon.where(["created_at > ?", Time.zone.now.to_date]).count
    @pages = Weapon.where(["created_at > ?", Time.zone.now.to_date]).count/50
    @rare = Rare.all
    @subtype = Subtype.where(type_id: 18)
    @type = Type.all
    @current_page = params[:page]
  end

  def show
    @weapon = Weapon.where(:data_id => params[:id]).order(:created_at => :desc)
    @line_chart_data = WeaponsHelper.get_line_chart_data(@weapon)

  end

end
