module App
    class Controller 
        def self.hello 
            puts 'hello_world'
        end

        def self.get_random_wiki
            agent = Mechanize::new
            page = agent.get 'https://en.wikipedia.org/wiki/Special:random'

            doc = Nokogiri::HTML(agent&.page&.body)

            title = doc.xpath('//*[@id="firstHeading"]')&.first
            desc = doc.xpath('//*[@id="mw-content-text"]/div[1]/p[1]')&.first
            puts "#{title.text} \n \n #{desc.text}"
            nil
        end
    end

    
    
end
