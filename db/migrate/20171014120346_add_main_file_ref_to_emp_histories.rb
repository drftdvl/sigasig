class AddMainFileRefToEmpHistories < ActiveRecord::Migration
  def change
    add_reference :emp_histories, :main_file, index: true, foreign_key: true
  end
end
