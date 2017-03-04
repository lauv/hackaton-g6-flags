class AddTurnoIdToUserChoices < ActiveRecord::Migration[5.0]
  def change
    add_reference :user_choices, :turnos, foreign_key: true
  end
end
