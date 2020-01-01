# Homebrew tap for Panoptes

This is a homebrew tap for [Panoptes](https://github.com/jamesdobson/panoptes).

It also serves as an example that you can use to pre-configure Panoptes with
specific dashboard URLs when it is installed.

## Installation

To install, first add the tap and then install the cask:

```console
~ % brew tap jamesdobson/panoptes
~ % brew cask install panoptes
```

## Customization

To customize, fork this repo and edit the list of URLs in `Casks/panoptes.rb`:

```ruby
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
```

Edit the lines after `"-array",` to be the URLs you want to use. You can have
as many as you'd like; the minimum is one.

To install, follow the installation instructions above but tap your forked
repo instead.
