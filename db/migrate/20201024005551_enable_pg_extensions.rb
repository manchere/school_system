class EnablePgExtensions < ActiveRecord::Migration[6.0]
  def change
    enable_extension  'pgcrypto'
    enable_extension 'uuid-ossp'
    enable_extension 'hstore'
  end
end
