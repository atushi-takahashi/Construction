class ChangeDataJobYearsToUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :job_years, :string
  end
end
