# Core Concept
	
	This repo contains Covers Basic Ruby on Rails conecept.

## Requirements/Dependencies

1. Ruby (check gemfile/.ruby-version for version)
1. Bundler
1. Rails
1. PostgreSQL


## Getting Started

1. Read the Readme
1. Confirm Ruby version (.ruby-version)
1. Confirm Bundle installation and afterwards, bundle install
1. Confirm Postgresql is properly installed and configured
    - Copy `config/database.yml.example` to `config/database.yml`
    - Change authentication in `database.yml` to your PostgreSQL user authentication
1. `$ rake db:create` to create database in local
1. `$ rake db:migrate` to migrate schema to local empty database
1. `$ rake db:seed` to create User and AdminUser
