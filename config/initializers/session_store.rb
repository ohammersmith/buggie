# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_buggie_session',
  :secret      => '2d141ebc8495f037ce238ca06f35a2d5640c544755f64ffaf1b82dd6e5b113eacc3f68ae2c68b9fc4ee4242bb3bd9b9952bae47ea8ae9d82bb22de357105d0a6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
