# frozen_string_literal: true

# This migration comes from gallery (originally 20190404200557)
class CreateGalleryAudiences < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'uuid-ossp' unless extension_enabled?('uuid-ossp')
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :gallery_audiences, id: :uuid do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
