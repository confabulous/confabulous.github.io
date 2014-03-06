module DocFinder
    class Generator < Jekyll::Generator
        def generate(site)
            site.data['resources'] = []
            site.data['messages'] = []
            site.pages.each {|page|
                if page.data['layout'] == 'resource'
                    site.data['resources'] << {'name' => page.data['name'], 'file' => page.basename}
                end

                if page.data['layout'] == 'message'
                    site.data['messages'] << {'name' => page.data['name'], 'file' => page.basename}
                end
            }
            site.data['resources'].sort! {|x, y| x['name'] <=> y['name']}
            site.data['messages'].sort! {|x, y| x['name'] <=> y['name']}
        end
    end
end
