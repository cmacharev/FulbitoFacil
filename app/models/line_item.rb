class LineItem < ActiveRecord::Base
belongs_to :field
belongs_to :cart
end
