require "test_helper"

class ProductMailerTest < ActionMailer::TestCase
  include Rails.application.routes.url_helpers

  setup do
    @product = products(:tshirt)
    @subscriber = subscribers(:david)
    @host = "example.com"
    Rails.application.routes.default_url_options[:host] = @host
  end

  test "in_stock" do
    mail = ProductMailer.with(product: @product, subscriber: @subscriber).in_stock

    assert_equal "Product Back in Stock", mail.subject
    assert_equal [ @subscriber.email ], mail.to
    assert_equal [ "from@example.com" ], mail.from
    assert_match "Good news!", mail.body.encoded
    assert_match "#{@product.name} is back in stock.", mail.body.encoded
    assert_match product_url(@product, host: @host), mail.body.encoded
  end
end
