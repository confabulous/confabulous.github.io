module DocFinder
    class Generator < Jekyll::Generator
        def generate(site)
            site.data['resources'] = []
            site.data['messages'] = []
            site.pages.each {|page|
                if page.data.has_key?('resource')
                    site.data['resources'] << {'path' => page.data['resource'], 'file' => page.basename}
                end

                if page.data.has_key?('message')
                    site.data['messages'] << {'kind' => page.data['message'], 'file' => page.basename}
                end
            }
            site.data['resources'].sort! {|x, y| x['path'] <=> y['path']}
            site.data['messages'].sort! {|x, y| x['kind'] <=> y['kind']}
        end
    end
end
