class AddTestData < ActiveRecord::Migration
  def self.up
    Product.delete_all

    Product.create(:title => 'Pragmatic Project Automation',
    :description => 
    %{<p>
       <em>Pragmatic Project Automation</em> shows you how to improve the 
       consistency and repeatability of your project's procedures using 
       automation to reduce risk and errors.
      </p>
      <p>
        Simply put, we're going to put this thing called a computer to work 
        for you doing the mundane (but important) project stuff. That means 
        you'll have more time and energy to do the really 
        exciting---and difficult---stuff, like writing quality code.
      </p>},
    :image_url =>   '/images/vsn.jpg',    
    :price => 29.95)


   

  end

end
