require 'rspec'
require 'page-object'
require 'pry'
require 'fileutils'
require 'watir'
require 'rest-client'
require 'json'

require_relative '../support/config/configuration'

PROJECT_DIR      ||= File.expand_path(File.dirname(__FILE__) + '../../..')

Fixtures.load_config("#{PROJECT_DIR}/config/config.yml")

World(PageObject::PageFactory)


