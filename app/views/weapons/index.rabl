object false
child(:@weapon_list) {
attributes :id, :data_id, :name, :rarity, :restriction_level, :img, :type_id, :sub_type_id, :price_last_changed, :max_offer_unit_price, :min_sale_unit_price, :offer_availability, :sale_availability, :profit_margin, :created_at
}
node(:total){@total}
node(:pages){@pages}
node(:rare){@rare}
node(:type){@type}
node(:subtype){@subtype}
node(:current_page){@current_page}
