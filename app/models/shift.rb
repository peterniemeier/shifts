# == Schema Information
#
# Table name: shifts
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer          not null
#  start_at   :string           not null
#  end_at     :string           not null
#  role       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Shift < ApplicationRecord
validates :user_id, :start_at, :end_at, :role, presence: true

belongs_to :user
end
