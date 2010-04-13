# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_trading-accounts_session',
  :secret      => '232bf90179908f0456fb9db5393deddedb6facfd2b3ebc3d6f1649633436520764b8c80704f0648434e115bbeb2262b5952df9b79d64cbb8d97f1732dc48d783'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
