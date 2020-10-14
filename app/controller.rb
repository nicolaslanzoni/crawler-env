module App
    class Controller 
        def self.hello 
            puts 'hello_world'
        end

        def self.get_random_wiki
            agent = Mechanize::new
            page = agent.get 'https://en.wikipedia.org/wiki/Special:random'

            doc = Nokogiri::HTML(agent&.page&.body)

            node = doc.xpath('//*[@id="firstHeading"]')&.first

            return node.text
        end
    end

    
    
end
