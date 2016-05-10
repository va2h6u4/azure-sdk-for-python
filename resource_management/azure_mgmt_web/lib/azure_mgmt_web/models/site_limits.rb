# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.16.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Represents metric limits set on a web app.
    #
    class SiteLimits

      include MsRestAzure

      # @return [Float] Maximum allowed CPU usage percentage
      attr_accessor :max_percentage_cpu

      # @return [Integer] Maximum allowed memory usage in MB
      attr_accessor :max_memory_in_mb

      # @return [Integer] Maximum allowed disk size usage in MB
      attr_accessor :max_disk_size_in_mb

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

        serialized_property = object.max_percentage_cpu
        output_object['maxPercentageCpu'] = serialized_property unless serialized_property.nil?

        serialized_property = object.max_memory_in_mb
        output_object['maxMemoryInMb'] = serialized_property unless serialized_property.nil?

        serialized_property = object.max_disk_size_in_mb
        output_object['maxDiskSizeInMb'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [SiteLimits] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = SiteLimits.new

        deserialized_property = object['maxPercentageCpu']
        deserialized_property = Float(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.max_percentage_cpu = deserialized_property

        deserialized_property = object['maxMemoryInMb']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.max_memory_in_mb = deserialized_property

        deserialized_property = object['maxDiskSizeInMb']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.max_disk_size_in_mb = deserialized_property

        output_object
      end
    end
  end
end