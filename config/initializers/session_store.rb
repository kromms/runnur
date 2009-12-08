# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_runr_session',
  :secret      => 'bca5bf35293b50ba48cea5aff4ff278a6ea63ce1cf86883ea2663b8abf0817cb8c671e27a8414280e9036c35f664ec2800d6897e953c26e67809c9d2b6810af8'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
