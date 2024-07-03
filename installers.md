# Installers
Applications to download and install on a fresh new machine.

## Critical First Few

* [1Password](https://1password.com/downloads/mac/) -- Get it installed and signed in so all the other licenses and passwords are easy to get to. [1Password-7.2.1.pkg](https://c.1password.com/dist/1P/mac7/1Password-7.2.1.pkg).
* [Chrome](https://www.google.com/chrome) -- Install and sign in so that bookmarks are easy to get to. See 1Password entry "Google, GMail". [googlechrome.dmg](https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg).
* Reinstall 1Password browser extensions. Chrome will automatically install them, but they won't work right until you uninstall them from chrome and install them again using 1Password -> Install Browser Extensions ...
* [Homebrew](https://brew.sh/) -- Can just run the script: `/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"` Gets you ready to install open source tools.
* [DropBox](https://www.dropbox.com/install) -- Install and sign in so that files will start to sync onto the new computer. See 1Password entry "DropBox". [installer 60 for mac](https://dl-web.dropbox.com/installer?build_no=60.4.107&plat=mac&tag=eJwFwbERgDAMA8BVuEyArcgWLEMDRRpSuMyxO_-r1VM15nuNu52bI-VHdgo0mgRFN5IRSTnTtUP4fqvRDdg~%40META&tag_token=ALo2e5JnEJBVYuz2u1pntH2zTKRMAYHv-0ki34EKVFS63A).
* OneDrive -- Preinstalled on corporate image. Just sign in. Prefer storing work-files here.
* [SetApp](https://setapp.com/) -- Install and sign in so that you can install from their library. [installer](https://setapp.com/download).
* [ChronoAgent]() -- Install and sign in so that you can quickly sync files back onto the machine. NOTE: Use only wired connections on the agent and server when transfering many gigabytes of data.

## Core Tools

* [zsh](http://zsh.sourceforge.net/) -- comes preinstalled on Mac now
* [OmniFocus](https://www.omnigroup.com/download/) -- Select latest Pro version for Mac. Sign in to get tasks syncing. See 1Password entry "OmniSync". [Omni Group Downloads](http://downloads.omnigroup.com/software/MacOSX/)
* Warp -- `brew install --cask warp`
* [MacVim](https://github.com/macvim-dev/macvim/releases) Install with `brew install --cask macvim`.
* Jabra Direct: `brew install --cask jabra-direct` -- For my headset
* LogiTune: `brew install --cask logitune` -- for my WebCam

## Additional Development Tools

* [Sourcetree](https://www.sourcetreeapp.com/) -- `brew install --cask sourcetree`

## Additional Office Tools

* [MS Office](https://www.office.com/) Click "Install Office" -> "Office 365 Apps". People are going to give you office documents and it's just more effective to use the real apps to interact with them. [Microsoft_Office_16_Installer.pkg](https://officecdn-microsoft-com.akamaized.net/pr/C1297A47-86C4-4C1F-97FA-950631F94777/OfficeMac/Microsoft_Office_16.18.18101400_Installer.pkg)
* [Alfred](https://www.alfredapp.com/) -- `brew install --cask alfred` Activate with license. Search 1Password for "Alfred Mega Supporter License".
* Run `~/.dotfiles/import-alfred-searches.sh` now that Alfred is installed.
* [TextExpander](https://textexpander.com/) `brew install --cask textexpander` [Log In Information](onepassword://search/4ofizs42zvdf7job5ccx4trtda) 
* Paste from **SetApp**. CTRL+SHIFT+SPACE (to launch SetApp search) -> "Paste". Let is install. Set up sync with Paste -> Preferences -> Sync -> Enable iCloud Sync. Now you can easily share work between computers you are signed in to. Also, enable direct paste and the paste helper with Paste -> Preferences -> General -> Enable Direct Paste.
* [Droplr](https://droplr.com/apps/) Download. Unzip. Drag to Applications. Sign in. Now you can easily share annotated screenshots and short videos. [Dropler-224.zip](https://files.droplr.com/apps/mac/Droplr-224.zip).
    * Should I just use CleanShot for the shot, and OneDrive for a shareable link?
* Unclutter from **SetApp**. CTRL+SHIFT+SPACE -> "Unclutter". Let it install. Open the preferences and set the file and note locations to `~/Dropbox/Not Apps/Unclutter-Patrujo`
* [OmniGraffle](https://www.omnigroup.com/download/) Download latest Pro version. Install. Use for making sweet, sweet diagrams.
* [OmniOutliner](https://www.omnigroup.com/download/) Download latest Pro version. Install. Use for awesome outlines, especially for Calibration meeting.

## SetApp Apps

* Aeon Timeline -- for making sense of time-oriented data when you're researching trends, or doing a post-mortem.
* Base -- because SQLite is the magic balance between JSON in plain-text, and running a local MySQL server.
* BusyCal -- because interacting with Exchange and Google Calendars together using Outlook or Apple Calendar is a pain.
    * Follow this [migration guide](https://support.busymac.com/help/98887-how-do-i-migrate-from-an-old-computer-to-a-new-computer) to expedite syncing and setting up accounts.
* BusyContacts -- great for taking notes when keeping in touch -- see migration guide above
* CleanMyMac X -- because even a clean install of OS X has a lot of wasted space in it that you can reclaim.
* CleanShot X -- Great screenshot tool. Does everything I used to rely on Clarify or Droplr for.
    * Follow instructions to let it be the default screen-shot tool
    * Add CMD-SHIFT-7 as shortcut for scrolling capture.
* Downie -- because YouTube isn't available when you need it most.
* Expressions -- because Regular Expressions are super useful and testing them is imperative.
* Jump Desktop -- because knowing anything about computers means you have to provide technical support to everyone you know and love that knows less than you about computers.
* Marked -- because you need to render all that markdown you wrote.
* Mosaic -- for tiling your windows about.
* Noizio -- because sometimes the best way to think is with the right noise. Seems to sync mixes automatically from older installations.
* Numi -- because calculators should be more like programming.
* Paste -- already installed above.
* Paw -- because poking api's over http will be with us forever.
* Auxl -- More api manipulating tools.
* Squash -- because sometimes you just want to quickly optimize and image and you don't want to figure out where you install cmozjpeg.
* Studies -- because there are all sorts of details you really ought to memorize -- no matter how stupid that makes you feel.
* TaskPaper -- because sometimes you are just going to declare task manager bankruptcy, and while you are getting your affairs in order you need a simple way to keep of the stuff flying at you.
* TextSoap -- because no human should have to make piles of tedious and programmable changes to text.
* TextSnipter -- for copying text that is actually an image -- like copying text from a screen cast.
* Timing -- because Know Thy Time is still one of the fundamental commandments of professionalism.
* Typeface -- because some bugs disappear when you install the font with the necessary glyphs, but you need to be able to easily remove and reinstall that font over and over again so that you can verify all sorts of stuff about your products.
* World Clock Pro -- because I will never remember how to do the math to convert UTC into my own timezone. Never.
* Lungo -- Keep my computer awake

### Honorable Mentions

Some SetApp apps that aren't important enough to install proactively.

* Bartender -- because status bars can't fit all the nifty apps I buy.
* BetterTouchTool -- because sometimes you just want to make a funky guesture that repeats a tedious task for you.
* BetterZip -- because it makes automating treatment of archives easy, and sometimes you just want to look inside the archive and not inflate it.
* Blogo -- because recruiters gotta blog. And it can be fun, too.
* Canary Mail -- because the NSA needs to spend some time cracking the encryption on my salsa recipe.
* CodeRunner -- because Dropzone tasks in python are nice to edit in CodeRunner.
* Dropzone -- because complex renaming rules are better left in a program that you can easily drop targets onto.
* Gemini -- because over time you make defensive copies of your files that eventually you ought to find and clean up.
* KeyKey Typing Tutor -- because Dvorak isn't just a composer and all the cool kids know that. You want to be cool... someday.
* Tayasui Sketches -- because the brushes are so beautiful.
* TripMode -- because people that don't turn off their file-syncing software at conferences are monsters.
* uBar -- because who *doesn't* want a gratuitous launcher replacement?
* Unclutter -- because having a sheet of paper to jot notes onto glued to the top of your computer screen is one of those things you never knew you always wanted.
* Unibox -- because I get way too much email to read all of it, so anything that helps me triage it quickly is awesomesauce.
* WaitingList -- because you need to look forward to big dates or life will just happen to you, man.
* Wallpaper Wizard -- because the same dog face, however cute, stops to be delightful if you look at it too much. Put a carousel of those things on your wallpaper.
* Workspaces -- because those reports you run once a month would go faster if you kept track of the tools and sites you needed to visit in order to write them.

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
* CheatSheet -- because keyboard shortcuts are awesome to know, and impossible to learn.
* myPoint Light S -- because it's a wide, wide world and mouse pointers get lost out there.
* Droplr -- because you bought the service when it was cheap, and if you stop paying now it will go back to full price. So find some way to make use of it.
* Xcode -- because you know you are going to want to use iOS device simulators.
* Evernote -- because you have too many notes in there to think of consolidating to one cloud notebook.
* Twitter -- because all the cool people do it. And even though you don't, really, you can't admit to yourself that you'll never be that cool.

## Odds and Ends

* [Cisco Umbrella Root CA](https://docs.umbrella.com/deployment-umbrella/docs/rebrand-cisco-certificate-import-information) -- Search page for "Install the CA on Mac". Follow stepts. -- Without this cert, the web application for Droplr is untrusted in chrome when you access it on the corporate LAN. If you install the cert then you can use the site. Don't love messing with the trusted certs, so I should only do this to get around the problem when it happens. Avoid this step if you can. [Cisco_Umbrella_Root_CA.cer](https://d36u8deuxga9bo.cloudfront.net/certificates/Cisco_Umbrella_Root_CA.cer). [See also](https://support.umbrella.com/hc/en-us/articles/230903768--Your-connection-is-not-private-or-Cannot-connect-to-the-real-domain-com-HSTS-and-Pinning-Certificate-Errors-).
