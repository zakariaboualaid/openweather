class JsonBaseConvert
  class << self
    def encode(source)
      Base64.strict_encode64(source.to_json) if source.is_a? Hash
    end

    def decode(source)
      JSON.parse Base64.strict_decode64(source) if source.is_a? String
    end

    # used by umbreo_service_client/master.json
    def encode_service_param(source)
      Base64.strict_decode64(source)
    end

    def decode_service_param(source)
      Base64.strict_decode64(source)
    end
  end
end
