# http://blog.jamesalmond.com/testing-subdomains-using-capybara/

class Capybara::Server
  def url(path)
    if path =~ /^http/
      path
    else
      (Capybara.app_host || "http://localhost:#{port}") + path.to_s
    end
  end
end
