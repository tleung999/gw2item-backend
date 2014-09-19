class WeaponsController < ApplicationController
  def index
    @weapon_list = Weapon.where(["created_at > ? AND restriction_level > ?", Time.zone.now.to_date, 0]).paginate(:page => params[:page], :per_page => 50)
    @total = Weapon.where(["created_at > ?", Time.zone.now.to_date]).count
    @pages = Weapon.where(["created_at > ?", Time.zone.now.to_date]).count/50
    @rare = Rare.all
    @subtype = Subtype.where(type_id: 18)
    @type = Type.all
  end

  def show
    @weapon = Weapon.where(:data_id => params[:id]).order(:created_at => :desc)
    @line_chart_data = get_line_chart_data(@weapon)
  end

end
