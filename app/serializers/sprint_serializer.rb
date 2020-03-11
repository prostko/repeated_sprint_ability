class SprintSerializer
  include FastJsonapi::ObjectSerializer
  attributes :ending, :beginning

  has_many :tickets
end
