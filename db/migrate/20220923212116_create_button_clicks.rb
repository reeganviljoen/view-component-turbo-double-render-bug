class CreateButtonClicks < ActiveRecord::Migration[7.0]
  def change
    create_table :button_clicks do |t|

      t.timestamps
    end
  end
end
