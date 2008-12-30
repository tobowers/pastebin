class CreateLanguages < ActiveRecord::Migration
  def self.up
    create_table :languages do |t|
      t.string      :name
      t.timestamps
    end
    ["javascript", "actionscript", "css", "ruby", "ruby_on_rails", "html", "plain_text"].each do |name|
      Language.create(:name => name)
    end
  end

  def self.down
    drop_table :languages
  end
end
