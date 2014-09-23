module WeaponsHelper
  def self.get_line_chart_data(item_object)
    offer_price_list = []
    date_list = []
    sale_price_list = []
    item_object.each do |item|
      date_list << item.created_at.to_s
      offer_price_list << item.max_offer_unit_price/10000
      sale_price_list << item.min_sale_unit_price/10000
    end
    {date_list: date_list, offer_price_list: offer_price_list, sale_price_list: sale_price_list}
  end
end
