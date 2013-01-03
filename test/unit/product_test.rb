require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "product attributes must not empty."do
	product=Product.new
	assert product.invalid?
	assert product.errors[:title].any?
	assert product.errors[:description].any?
	assert product.errors[:image_url].any?
	assert product.errors[:price].any?
  end
  test "price must be positive"do
	product=Product.new(:title=>'price test',:description=>'price test',:image_url=>'z.jpg')
	product.price=-1
	assert product.invalid?
	assert_equal "must be greater than or equal to 0.01",
		product.errors[:price].join(';')
	product.price=0
	assert product.invalid?
	assert_equal "must be greater than or equal to 0.01",
		product.errors[:price].join(';')

  	product.price=1
	assert product.valid?
  end

  test "product is not valid without a unique title" do
	product=Product.new(:title=>products(:ruby).title,:description => "unique test",:price => 1,:image_url => "ruby.jpg")
	assert !product.save
	assert_equal "has already been taken",product.errors[:title].join(';')
  end


end
