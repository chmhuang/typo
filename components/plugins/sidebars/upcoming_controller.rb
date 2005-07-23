class Plugins::Sidebars::UpcomingController < Sidebars::Plugin
  def self.display_name
    "Upcoming"
  end

  def self.description
    "Events from upcoming.org"
  end

  def self.default_config
    {'count'=>4,'format'=>'rectangle'} #defaults
  end

  def content
    @upcoming=check_cache(Upcoming, @sb_config['feed']) rescue nil
  end

  def configure
  end
end
