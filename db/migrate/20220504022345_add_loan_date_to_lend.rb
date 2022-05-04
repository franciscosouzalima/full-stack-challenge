class AddLoanDateToLend < ActiveRecord::Migration[6.1]
  def change
    add_column :lends, :loan_date, :date
  end
end
