ENV['VERIFY_TOKEN'] = '268827d8bdbf5993d0f545cdf1127818' #will be used in webhook verifiction
ENV['PAGE_ACCESS_TOKEN'] = 'EAAFdjDf01VkBAJ8IVZBzxmUOYAOc7aqlfmiJeMC1zuR9WCCeCyVqgKHZBjPuQeC7XCkh5zdAQWs0USeZCxGbwz9WZBT7OY8ZBOZCEaqZAsL77Tf4QwqOlRPzbqvlvtnBhY0qjpQ9ePdi41qxjzzZCNIZC7FvZBsvaiylrJZAxVkZC1yxeAZDZD'

# YOUR_APP/config/initializers/messenger.rb
Messenger.configure do |config|
  config.verify_token      = ENV['VERIFY_TOKEN']
  config.page_access_token = ENV['PAGE_ACCESS_TOKEN']
end
