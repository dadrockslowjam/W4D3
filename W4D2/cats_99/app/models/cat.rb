# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date
#  color       :string
#  name        :string
#  sex         :string(1)
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
    include ActionView::Helpers::DateHelper

    validates :color, inclusion: {in: %w(white black blue red orange brown green)}
    validates :sex, inclusion: {in: %w(M F)}
    def age
        ((Time.zone.now - self.birth_date.to_time) / 1.year.second).floor
    end
end
