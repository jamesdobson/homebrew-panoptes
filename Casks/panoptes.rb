cask 'panoptes' do
    version '1.2.0'
    sha256 '08448478281ef901cae09ece3f5bb4434f86e234c3457a4912656fb519beace3'

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
