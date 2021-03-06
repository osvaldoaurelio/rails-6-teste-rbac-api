# frozen_string_literal: true

class CreateGalleryScopes < ActiveRecord::Migration[5.2]
  def change
    enable_extension 'uuid-ossp' unless extension_enabled?('uuid-ossp')
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :gallery_scopes, id: :uuid do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
