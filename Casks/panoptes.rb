cask 'panoptes' do
    version '1.1.0'
    sha256 '92e7c723d80b4542bde3b224105f8ed570ba97f3cd5bf6e6df93c7619f87b039'

    url "https://github.com/jamesdobson/panoptes/releases/download/v#{version}/Panoptes.saver.zip"
    appcast 'https://github.com/jamesdobson/panoptes/releases.atom'
    name 'Panoptes Screensaver'
    homepage 'https://github.com/jamesdobson/panoptes'

    installer script: {
        executable: "/usr/bin/defaults",
        args: [
            "write",
            "#{File.expand_path('~/Library/Containers/com.apple.ScreenSaver.Engine.legacyScreenSaver/Data/Library/Preferences/ByHost/com.softwarepunk.Panoptes')}",
            "urls",
            "-array",
            "https://weather.gc.ca/city/pages/on-143_metric_e.html",
            "https://www.apple.com",

        ],
    }

    screen_saver 'Panoptes.saver'
end
