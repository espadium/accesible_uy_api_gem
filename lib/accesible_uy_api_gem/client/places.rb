module AccesibleUyApiGem
  class Client
    module Places
      def near(lat, long)
        get "places/near/#{lat}/#{long}"
      end
    end
  end
end
