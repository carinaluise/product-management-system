require "test_helper"

class ProductTest < ActiveSupport::TestCase
  include ActionMailer::TestHelper

  setup do
    @product = products(:tshirt)
  end

  test "sends email notifications when back in stock" do
    # Set product out of stock
    @product.update!(inventory_count: 0)

    # Set product back in stock and check for emails
    assert_emails 2 do
      @product.update!(inventory_count: 99)
    end
  end
end
