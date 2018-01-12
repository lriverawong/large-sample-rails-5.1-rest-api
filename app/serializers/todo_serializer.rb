# Serializers allow for custom representations of JSON responses. Active model serializers make it easy to define which model attributes and relationships need to be serialized.
class TodoSerializer < ActiveModel::Serializer
  # attributes to be serialized  
  attributes :id, :title, :created_by, :created_at, :updated_at
  # model association
  has_many :items
end
