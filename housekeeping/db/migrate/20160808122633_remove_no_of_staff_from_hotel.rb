class RemoveNoOfStaffFromHotel < ActiveRecord::Migration[5.0]
  def change
    remove_column :hotels, :no_of_staff, :int
  end
end
