Order.transaction do
(1..100).each do |i|
     Order.create(:name=>"Customer#{i}",:address=>"#{i}main street",
                   :email=>"#{i}.com",:pay_type=>"Check")
     end
end
