cask 'panoptes' do
    version '1.0.0'
    sha256 '8569ce3eac92961e9b0c8c2dbab13a3a2dd4523dc3ae2d575b37d7a81c0ceba4'

    url "https://github.com/jamesdobson/panoptes/releases/download/v#{version}/Panoptes.zip"
    appcast 'https://github.com/jamesdobson/panoptes/releases.atom'
    name 'Panoptes Screensaver'
    homepage 'https://github.com/jamesdobson/panoptes'

    screen_saver 'Panoptes.saver'
end
