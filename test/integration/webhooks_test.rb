class WebhooksTest < ActionDispatch::IntegrationTest
	test 'charge created' do
    event = StripeMock.mock_webhook_event('charge.succeeded', id: 'abc123')
		product = Product.create(price: 100, name: 'food')
    sale = Sale.create(stripe_id: 'abc123', amount: 100, email: 'foo@bar.com', product: product)
    post '/stripe-events', id: event.id
    assert_equal "200", response.code
    #assert_equal 2, StripeMailer.deliveries.length
    #puts StripeWebhook.last.methods
    assert_equal 'abc123', StripeWebhook.first.stripe_id

	end
end