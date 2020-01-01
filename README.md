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

Here's an example:

```console
~ # mkdir homebrew-panoptes
~ # cd homebrew-panoptes
homebrew-panoptes # git init
Initialized empty Git repository in /Users/username/homebrew-panoptes/.git/
homebrew-panoptes # git remote add origin <your git repository>
homebrew-panoptes # git remote add upstream git@github.com:jamesdobson/homebrew-panoptes.git
homebrew-panoptes # git pull upstream master
remote: Enumerating objects: 28, done.
remote: Counting objects: 100% (28/28), done.
remote: Compressing objects: 100% (17/17), done.
remote: Total 28 (delta 7), reused 25 (delta 4), pack-reused 0
Unpacking objects: 100% (28/28), done.
homebrew-panoptes # vi Casks/panoptes.rb
... edit the list of URLs ...
homebrew-panoptes # git add Casks/panoptes.rb
homebrew-panoptes # git commit -m "Customized list of URLs."
homebrew-panoptes # git push --set-upstream origin master
...gets pushed...
homebrew-panoptes # brew tap custom/panoptes <your git repository>
homebrew-panoptes # brew cask install panoptes
```
