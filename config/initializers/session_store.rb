# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_simpleCRM_session',
  :secret      => 'aee76f7940b49f4a774e68eb347ec5083f195cbf6b56c4c5a50eda11b6cde6dd9d12c00ddffbdf960559582f386a05d710ed3da71b2693ce4ccd43a450f40f8a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
