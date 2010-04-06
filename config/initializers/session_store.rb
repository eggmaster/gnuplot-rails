# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_gnuplot-rails_session',
  :secret      => 'd755b93e247e3100731c68b15fc877c7fd154515baf4be2bd15c0351d3a9e9536e732dfadef25ad0be11e535215d6e188546391db88f95254686dd990ee0ac60'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
