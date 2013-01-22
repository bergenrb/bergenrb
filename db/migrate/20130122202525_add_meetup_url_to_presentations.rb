class AddMeetupUrlToPresentations < ActiveRecord::Migration
  def change
    add_column :presentations, :meetup_url, :string
  end
end
