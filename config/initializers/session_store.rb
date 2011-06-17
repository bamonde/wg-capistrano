# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_wg-capistrano_session',
  :secret      => '8998fb414b09e074b6ed1031685622a9a5a312cdc56590b2757dc736a3be19a329ee39681f5f0743ea5bd60f0f278213afbd5f55f605ce450c54807022a7fd02'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
