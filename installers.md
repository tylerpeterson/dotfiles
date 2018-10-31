# Installers
Applications to download and install on a fresh new machine.

## Critical First Few

* [1Password](https://1password.com/downloads/mac/) -- Get it installed and signed in so all the other licenses and passwords are easy to get to. [1Password-7.2.1.pkg](https://c.1password.com/dist/1P/mac7/1Password-7.2.1.pkg).
* [Chrome](https://www.google.com/chrome) -- Install and sign in so that bookmarks are easy to get to. See 1Password entry "Google, GMail". [googlechrome.dmg](https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg).
* Reinstall 1Password browser extensions. Chrome will automatically install them, but they won't work right until you uninstall them from chrome and install them again using 1Password -> Install Browser Extensions ...
* [Homebrew](https://brew.sh/) -- Can just run the script: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` Gets you ready to install open source tools.
* [DropBox](https://www.dropbox.com/install) -- Install and sign in so that files will start to sync onto the new computer. See 1Password entry "DropBox". [installer 60 for mac](https://dl-web.dropbox.com/installer?build_no=60.4.107&plat=mac&tag=eJwFwbERgDAMA8BVuEyArcgWLEMDRRpSuMyxO_-r1VM15nuNu52bI-VHdgo0mgRFN5IRSTnTtUP4fqvRDdg~%40META&tag_token=ALo2e5JnEJBVYuz2u1pntH2zTKRMAYHv-0ki34EKVFS63A).
* [Box](https://app.box.com/settings/sync) -- Install and sign in so that files start to sync. See 1Password entry "Box.net, Work". [Box Sync Installer.dmg](https://e3.boxcdn.net/box-installers/sync/Sync+4+External/Box%20Sync%20Installer.dmg).
* [SetApp]() -- Install and sign in so that you can install from their library. [installer]().

## Core Tools

* [zsh](http://zsh.sourceforge.net/) -- optional -- `brew install zsh`. Mac comes with a version of ZSH, but when you brew install it then you get something several minor revisions newer.
* [zplug](https://github.com/zplug/zplug) -- `brew install zplug`. The official site disclaims support for the brew installation, but if you use the brew installation then your `.zplug` directory will end up in the same place no matter what username you use on that computer.  That makes it match the `.zshrc` file in this repo.
* [OmniFocus](https://www.omnigroup.com/download/) -- Select latest Pro version for Mac. Sign in to get tasks syncing. See 1Password entry "OmniSync". [OmniFocus-3.1.2.dmg](https://downloads.omnigroup.com/software/MacOSX/10.13/OmniFocus-3.1.2.dmg)
* [iTerm](https://iterm2.com/downloads.html) -- Download. Unzip. Drag to Applications. Configure it to launch `zsh` instead of default bash. Preferences [CMD+,] -> Profiles -> Command `/usr/local/bin/zsh` (The brew version -- it's a little newer). You can use the built-in zsh at `/bin/zsh`, too. [iTerm2-3_2_4.zip](https://iterm2.com/downloads/stable/iTerm2-3_2_4.zip)TODO can this preference be set from the command line? 
* [MacVim](https://github.com/macvim-dev/macvim/releases) Ideally, could install this with `brew install macvim`. Unfortunately, there is a temporary incomatibility with Mojave. So install from download. [MacVim.dmg](https://github-production-release-asset-2e65be.s3.amazonaws.com/5641441/a9d541b8-9f48-11e8-892a-766c221f7990?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20181025%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20181025T212617Z&X-Amz-Expires=300&X-Amz-Signature=3358246972abd01fe1dee40557858e5fa2787ad7396b144ac6072fbb2d220d40&X-Amz-SignedHeaders=host&actor_id=1307450&response-content-disposition=attachment%3B%20filename%3DMacVim.dmg&response-content-type=application%2Foctet-stream)

## Additional Development Tools

* [Sourcetree](https://www.sourcetreeapp.com/) -- Download. Unzip. Drag to Applications. [Sourcetree_3.0.zip](https://product-downloads.atlassian.com/software/sourcetree/ga/Sourcetree_3.0_200.zip?_ga=2.120251662.764915753.1541008431-1226971220.1541008431)

## Additional Office Tools

* [MS Office](https://www.office.com/) Click "Install Office" -> "Office 365 Apps". People are going to give you office documents and it's just more effective to use the real apps to interact with them. [Microsoft_Office_16_Installer.pkg](https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_Office_16.18.18101400_Installer.pkg)
* [Alfred](https://www.alfredapp.com/) Download and install. Activate with license. Search 1Password for "Alfred Mega Supporter License". [Alfred_3.7.dmg](https://cachefly.alfredapp.com/Alfred_3.7_938.dmg)
* Run `~/.dotfiles/import-alfred-searches.sh` now that Alfred is installed.
* [TextExpander](https://textexpander.com/textexpander-standalone-apps/) Search page for "Download". Download. Unzip. Drag to Applications. NOTE: Have to use OLD version 5 since the new one is a cloud service that isn't worth paying for, yet, imho. Consider moving snippets to RocketTypist or Alfred since you already have those alternatives available to you. So long as TextExpander 5 works, though, I am happy with it. [TextExpander_5.1.5.zip](https://cdn.textexpander.com/mac/TextExpander_5.1.5.zip?ignore=ignore&_ga=2.260944781.1438225599.1540490179-708089489.1540490179&_gac=1.51715547.1540490179.Cj0KCQjw08XeBRC0ARIsAP_gaQB8Lh1CHBSL995TtPW8MEM_T1o4wSq1Drlc0FkrZxGq_-iOOxLOMEUaAuFTEALw_wcB) Enable sync with TextExpander -> Preferences (CMD+,) -> Sync -> "Link to Snippets" -> `Dropbox/TextExpander/Settings.textexpander`.
* Paste from **SetApp**. CTRL+SHIFT+SPACE (to launch SetApp search) -> "Paste". Let is install. Set up sync with Paste -> Preferences -> Sync -> Enable iCloud Sync. Now you can easily share work between computers you are signed in to. Also, enable direct paste and the paste helper with Paste -> Preferences -> General -> Enable Direct Paste.
* [Droplr](https://droplr.com/apps/) Download. Unzip. Drag to Applications. Sign in. Now you can easily share annotated screenshots and short videos. [Dropler-224.zip](https://files.droplr.com/apps/mac/Droplr-224.zip).
* [OmniGraffle](https://www.omnigroup.com/download/) Download latest Pro version. Install. Use for making sweet, sweet diagrams.

## App Store Apps

Make sure the following purchases are installed from the App Store:

* Keynote -- a presentation alternative to PowerPoint
* Pages -- a word processing alternative to MS Word.
* Numbers -- a table-oriented document alternative to Excel.
* CreatorQR -- For creating 2 dimensional bar-codes that you can print out and post on things. Makes it more convenient to remember/access a url based on location.
* PopClip -- For easily copying and processing highlighted text. Make sure to integrate with TextSoap from SetApp.
* Due -- for pleasant reminders and countdowns that sync with my phone.
* Mousepose -- for creating a clean space to make presentations from my laptop.
* Notability -- for better sketch support in a notebook than Evernote, secured notebooks, and syncing with my other devices.
* GIF Brewery -- for more control in making GIFs than other free tools.
* Quiver -- for excellent coding notes.  NOTE: Set sync location to `~/Dropbox/Not Apps/Quiver/Quiver.qvlibrary`.  It gets corrupted sometimes when opened simultaneously on multiple machines, so include that directory in time machine backups and habitually close the app. Kinda dumb, but still a great notebook.
* FullContact -- for merging contact information and easily filling in missing details about people.
* Day One -- For a wonderful journal. Use it for recording a diary, or just free writing while working through a problem. Put pictures in it. Make more small entries.
* DaisyDisk -- For tracking down big files, or old ones you don't need. Perhaps Clean My Mac could replace this, but this simple app is better at it's one job that Clean My Mac is.
* Microsoft OneNote -- Maybe. Already have Evernote and Notability. But try to be a good boy and use MS for work related stuff.
* OneDrive -- For storing copies of your work documents in the MS Cloud. Protects your work from loss and good for the company.
* Slack -- because everyone else is doing it.
* Color Picker -- because you sometimes need to.
* Howler Timer -- because it is campy and is lower stress for people when it has to cut them off in a meeting.
* iA Writer -- because no MarkDown editor is so awesome that I only need one.
* Byword -- because... MarkDown.
* Sauce -- For cross browser testing in the cloud.
* Skitch -- for marking up pictures that I want to keep around in Evernote.
* CheatSheet -- because keyboard shortcuts are awesome to know, and impossible to learn.
* myPoint Light S -- because it's a wide, wide world and mouse pointers get lost out there.
* Droplr -- because you bought the service when it was cheap, and if you stop paying now it will go back to full price. So find some way to make use of it.
* Xcode -- because you know you are going to want to use iOS device simulators.
* Evernote -- because you have too many notes in there to think of consolidating to one cloud notebook.
* Twitter -- because all the cool people do it. And even though you don't, really, you can't admit to yourself that you'll never be that cool.

## Odds and Ends

* [Cisco Umbrella Root CA](https://docs.umbrella.com/deployment-umbrella/docs/rebrand-cisco-certificate-import-information) -- Search page for "Install the CA on Mac". Follow stepts. -- Without this cert, the web application for Droplr is untrusted in chrome when you access it on the corporate LAN. If you install the cert then you can use the site. Don't love messing with the trusted certs, so I should only do this to get around the problem when it happens. Avoid this step if you can. [Cisco_Umbrella_Root_CA.cer](https://d36u8deuxga9bo.cloudfront.net/certificates/Cisco_Umbrella_Root_CA.cer). [See also](https://support.umbrella.com/hc/en-us/articles/230903768--Your-connection-is-not-private-or-Cannot-connect-to-the-real-domain-com-HSTS-and-Pinning-Certificate-Errors-).