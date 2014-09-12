module AccesibleUyApiGem
  class Client
    module Places
      def near_places(lat, long)
        get "places/near/#{lat}/#{long}"
      end

      def all_places
        get "places/"
      end
    end
  end
end
