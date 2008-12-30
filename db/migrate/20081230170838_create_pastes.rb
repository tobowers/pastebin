class CreatePastes < ActiveRecord::Migration
  def self.up
    create_table :pastes do |t|
      t.text          :content
      t.string        :title
      t.belongs_to    :class, :language
      t.timestamps
    end
  end

  def self.down
    drop_table :pastes
  end
end
