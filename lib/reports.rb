require 'fileutils'
class Reports
    def initialize(url, data)
        @url  = url
        @data = data
    end
    def data
        @data
    end
    def url
        @url
    end
    def save_site
        
        # Creates a "reports" directory if it does not exists
        # It will also create a directory with the name of url
        directory = File.join("reports", url)
        FileUtils.mkdir_p(directory)
        # Creates a new file with the name of URL.txt
        f = File.new(File.join(directory, "#{url}.txt"), 'a+')
        f.write(data.concat("\n"))
        f.close
    end
end