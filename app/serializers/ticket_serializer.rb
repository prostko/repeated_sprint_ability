class TicketSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :sprint_id, :point_estimate, :dev_begin_at, :dev_end_at, :merged_at, :bounces
end
