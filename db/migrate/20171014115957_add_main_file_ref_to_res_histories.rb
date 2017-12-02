class AddMainFileRefToResHistories < ActiveRecord::Migration
  def change
    add_reference :res_histories, :main_file, index: true, foreign_key: true
  end
end
