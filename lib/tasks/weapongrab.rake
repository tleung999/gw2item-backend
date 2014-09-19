task :getweapon => :environment do
  response = HTTParty.get("http://www.gw2spidy.com/api/v0.9/json/all-items/18")
  weapon_list = response.parsed_response["results"]
  weapon_list.each do |weapon|
    profit_margin = (weapon["min_sale_unit_price"] - weapon["max_offer_unit_price"]) - ((weapon["min_sale_unit_price"] - weapon["max_offer_unit_price"]) * 0.15)
    if profit_margin < 0
      profit_margin = 0
    end
    weapon["profit_margin"] = profit_margin
    Weapon.create(weapon)
  end
end