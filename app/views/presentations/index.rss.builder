xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "BergenRB Presenstations RSS Feed"
    xml.description "Presentations given at BergenRB"
    xml.link presentations_url

    @presentations.order('presented_at desc').each do |presentation|
      xml.item do
        xml.title presentation.title
        xml.description presentation.description
        xml.pubDate presentation.presented_at.to_time.to_s(:rfc822)
        xml.link presentation_url(presentation)
        xml.guid presentation.id
      end
    end
  end
end

