xml.instruct! :xml, :version => "1.0" 
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "Stan's Summer Adventures"
    xml.description "A photoblog of Stan's adventures with out family."
    xml.link trips_url

    for trip in @trips
      xml.item do
        xml.title trip.location
        xml.description do
          xml.img nil, :src => trip.photo.url(:thumb)
          xml.p trip.description
        end
        xml.pubDate trip.created_at.to_s(:rfc822)
        xml.link trip_url(trip)
        xml.guid trip_url(trip)
      end
    end
  end
end
