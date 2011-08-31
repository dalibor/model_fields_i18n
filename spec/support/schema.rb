ActiveRecord::Schema.define do
  self.verbose = false

  create_table :posts, :force => true do |t|
    t.string :title
    t.string :title_en
    t.string :title_fr
    t.string :content
    t.string :content_en
    t.string :content_fr
    t.timestamps
  end
end
