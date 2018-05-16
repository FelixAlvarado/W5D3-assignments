require 'json'

class Session
  # find the cookie for this app
  # deserialize the cookie into a hash
  def initialize(req)
    @req = req
    unless @cookie
      Rack::Response.cookies['_rails_lite_app']
    end
  end

  def [](key)
    x = key
    self[x]
  end

  def []=(key, val)
    x,y = key, val
    self[x] = y
  end

  # serialize the hash into json and save in a cookie
  # add to the responses cookies
  def store_session(res)
  end
end
