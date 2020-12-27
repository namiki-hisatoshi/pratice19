class Product
  @@count = 0
  def initialize(product_params)
    @id = @@count += 1
    @name = product_params[:name]
    @price = product_params[:price]
  end
end

class Greengrocer
  attr_reader :products
  def initialize(product_params)
    @products = []
    product_params.each do |param|
      @products << Product.new(param)
    end
  end

  def disp_products(product_params)
    puts "いらっしゃいませ！商品を選んでください。"
    products.each do |product|
      puts "#{product.id}. #{product.name} (#{product.price}円)"
    end
  end


end

class User

end


product_params = [
  {name:"トマト", price: 100},
  {name:"きゅうり", price: 200},
  {name:"白菜", price: 300},
  {name:"なす", price: 400}
]

greengrocer = Greengrocer.new(product_params)

user = User.new

greengrocer.dsip_products(product_params)
