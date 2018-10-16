class AddCompanyToCustomers < ActiveRecord::Migration[5.2]
  def change
    add_reference :customers, :company, polymorphic: true
  end
end
