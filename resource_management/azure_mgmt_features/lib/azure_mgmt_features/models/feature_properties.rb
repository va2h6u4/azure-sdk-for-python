# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Features
  module Models
    #
    # Previewed feature information.
    #
    class FeatureProperties

      include MsRestAzure

      # @return [String] Gets or sets the state of the previewed feature.
      attr_accessor :state

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        # Nothing to validate
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.state
        output_object['state'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [FeatureProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = FeatureProperties.new

        deserialized_property = object['state']
        output_object.state = deserialized_property

        output_object
      end
    end
  end
end