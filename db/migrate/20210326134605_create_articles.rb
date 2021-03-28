class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    # Call to create_table specifies how the articles table should be constructed
    create_table :articles do |t|
      # two columns are defined 
      t.string :title
      t.text :body

      # .timestamps method defines two add'l columns named created_at and updated_at
      t.timestamps
    end
  end
end
