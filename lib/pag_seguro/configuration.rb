module PagSeguro
  class Configuration
    include Singleton

    attr_accessor :email, :token, :redirect_url
  end

  def self.configure
    yield Configuration.instance
  end

  def self.config
    Configuration.instance
  end
end
