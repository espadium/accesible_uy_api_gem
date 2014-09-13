module AccesibleUyApiGem
  class Client
    module Places
      def near_places(lat, long)
        get "places/near/#{lat}/#{long}"
      end

      def all_places
        get "places/"
      end

      def find_place(place_id)
        get "places/#{place_id}"
      end

      def new_place(name, lat, lon)
        post "places/", { lat: lat, lon: lon, name: name }
      end
    end
  end
end
