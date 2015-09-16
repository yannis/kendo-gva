class RobotsGenerator
  # Use the config/robots.txt in production.
  # Disallow everything for all other environments.
  def self.call(env)
    body = if ENV["ROBOTS"] == "allow"
      File.read Rails.root.join('config', 'robots.txt')
    else
      "User-agent: *\nDisallow: /"
    end

    # Heroku can cache content for free using Varnish
    headers = {
      'Content-Type'  => 'text/plain',
      'Cache-Control' => "public, max-age=#{1.year.seconds.to_i}"
    }

    [200, headers, [body]]
  rescue Errno::ENOENT
    headers = { 'Content-Type' => 'text/plain' }
    body    = '# A robots.txt is not configured'

    [404, headers, [body]]
  end
end
