# -*- encoding : utf-8 -*-
# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
ContentApp::Application.initialize!

require File.expand_path('../../lib/patches/abstract_mysql2_adapter', __FILE__)