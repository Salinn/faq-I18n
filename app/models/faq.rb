class Faq < ActiveRecord::Base
  translates :question, :answer
end
