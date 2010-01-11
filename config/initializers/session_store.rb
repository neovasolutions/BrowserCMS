# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_browser_cms_v1_session',
  :secret      => '76b26e66155c4546e24bd287983fb97e94951d502600ff32bb5f76b394298ab38ec05efac22f2c4cc4d3ed4f4dc941824ee4510cc20065b54b54fadb2a97f6bc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
