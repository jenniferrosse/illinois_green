module ProjectsHelper
  def url_with_protocol(url)
    /^http/i.match(url) ? url : "http://#{url}"
  end
end