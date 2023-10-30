# Firefox

Open Application Menu, and open Settings. Change the following settings:

- Sync
	- Sign in
	- Device Name: Same as device name
- Home
	- Firefox Home Content
		- Web Search: Off
		- Shortcuts: Off
		- Recommended by Pocket: Off
		- Recent activity: Off
		- Snippets: Off
- Search
	- Default Search Engine: DuckDuckGo
	- Search Suggestions
      - Show search suggestions in address bar results: On
      - Show search suggestions ahead of browsing history in address bar results: Off
	- Search Shortcuts
		- Google: Off
		- Amazon.com: Off
		- Bing: Off
		- DuckDuckGo: Off
		- eBay: Off
		- Wikipedia (en): Off
		- Bookmarks: Off
		- Tabs: Off
		- History: Off
- Privacy & Security
	- Enhanced Tracking Protection: Strict
		- Send websites a "Do Not Track" signal that you don't want to be tracked: Always
	- Logins and Passwords
		- Ask to save logins and passwords for websites: Off
	- Forms and Autofill
		- Autofill addresses: Off
		- Autofill credit cards: Off
	- Address Bar - Firefox Suggest
		- Browsing history: Off
		- Bookmarks: Off
		- Open tabs: Off
		- Shortcuts: Off
		- Search engines: Off
		- Suggestions from the web: Off
		- Suggestions from sponsors: Off
	- Firefox Data Collection and Use
		- Allow Firefox to send technical and interation data to Mozilla: Off
		- Allow Firefox to install and run studies: Off

## Customize Toolbar

Right click empty space on the toolbar (same bar as the search bar), and go to Customize Toolbar. Complete the following actions:

- Insert one additional Flexible Space on both sides of the search bar
- Remove the Firefox account button
- Remove the New Tab button next to the open tabs
- Remove the Homepage button

Right click an empty space on the Bookmarks toolbar. Change the following setting:

- Bookmarks Toolbar: Never show

## Extensions

Open Settings, and click the Extensions & Themes button at the bottom. Under the Extensions tab, click "Find more add-ons." Search and install the following extensions:

- Bitwarden - Free Password Manager by Bitwarden Inc.
- Cookie AutoDelete by CAD Team
- Dark Reader by Alexander Shutau
- Enhancer for YouTube by Maxime RF
- OneTab by OneTab Team
- Progressive Web Apps by Filip S
- Return YouTube Dislike by Dmitry Selivanov
- SingleFile by gildas to Firefox
- SponsorBlock - Skip Sponsorships on YouTube by Ajay Ramachandran
- TWP - Translate Web Pages by Filipe Ps
- uBlock Origin by Raymond Hill
	- When prompted, allow to run in private windows

### Bitwarden

Click the Bitwarden extension button, and log in (making sure to check the remember login information), and go to Settings. Change the following setting:

- Other
	- Options
		- Autofill
			- General
				- Clear clipboard: 2 minutes
                - Ask to add login: Off
                - Ask to update existing login: Off

### Dark Reader

Open the extension, and switch Off to On if you would like website to be displayed in dark mode. Change the following settings:

- Contrast: -12

### Enhancer for YouTube

Click the Enhancer for YouTube extension button, and change the following settings:

- Theme
  - Dark theme: On (if wanted); YouTube-DeepDark (custom)
    - YouTube DeepDark (custom): ff0000; #242424; #292929; #454545
- Video player
	- Controls
		- Loop: Off
		- Reverse order: Off
		- Ads: Off
		- Mouse playback speed: Off
		- Shortcuts: Off
		- Options: Off
    - Ads management
      - Do not block ads for subscribed channels: On
	- Playback quality
		- Automatically select a playback quality
			- Videos: 4320p 8K
			- Playlists: 4320p 8K
			- Select a different playback quality when entering the full screen mode: On
				- Videos (full screen): 4320p 8K
				- Playlists (full screen): 4320- 8K
				- Pop-up player and embedded videos (full screen): 4320p 8K
			- Switch back to the previous playback quality when exiting full screen mode: Off
	- Autoplay
		- Disable autoplay: On
- Appearance
  - Use the available space based on the viewport dimensions to expand the video player: On
  - Automatically expand the videos descriptions: On
  - Hide chat: On
  - Hide Shorts: On (Change `layout.css.has-selector.enabled` to `true` in about:config)
  - Convert Shorts: On

### OneTab

Click the OneTab extension icon, and unpin the newly created tab. Change the following settings:

- Startup: Do not open OneTab automatically
- Duplicates: Silently reject duplicates

## Progressive Web Apps

Follow the instructions presented by this extension when prompted. Make web apps for the following websites:

- https://app.logos.com
- https://calendar.google.com/calendar/
- https://devdocs.io

Now, sign in to your Firefox account to sync extensions. Sign out of your account once everything is synced, and uninstall every extension except for Dark Reader and uBlock Origin. Change Firefox's settings to follow this guide.

For the following websites, change the following settings:

- https://app.logos.com
  - Dark Reader
    - Filter
      - Brightness: +50
      - Contrast: -30
    - More
      - Filter+
- https://calendar.google.com/calendar/
  - Dark Reader
    - Filter
      - Brightness +10
      - Contrast: -10
- https://devdocs.io
  - Remove the Dark Reader extension
  - Website preferences
    - General
      - Automatically download documentation for offline use: On
- https://play.qobuz.com
  - Name: Qobuz
  - Icon URL: https://external-content.duckduckgo.com/ip3/www.qobuz.com.ico
- https://chat.openai.com/

Once all this is set up, open `about:support` and open the profile directory in a terminal. Create `/chrome/userChrome.css` and paste the following into it to hide the titlebar ([source](https://superuser.com/a/1619663)):

```
/* hides the title bar */
#titlebar {
  visibility: collapse;
}
```

Now, open `about:config`, and set `toolkit.legacyUserProfileCustomizations.stylesheets` to `true`, as well as adjusting the VA-API settings listed later in this document. Restart the app.

## GNOME Theme

Run the following to install a GNOME theme for Firefox (source: https://github.com/rafaelmardojai/firefox-gnome-theme):

```
git clone https://github.com/rafaelmardojai/firefox-gnome-theme && cd firefox-gnome-theme
./scripts/auto-install.sh
```

Enter `about:config` into the URL bar, and agree to enter. Click the + button for the following setting:

```
gnomeTheme.hideSingleTab
```

## Netflix 1080p

Follow the directions [here](https://github.com/vladikoff/netflix-1080p-firefox/issues/63#issuecomment-1470154520), downloading the file, renaming the file extension from `.zip` to `.xpi`, and installing it manually from the Firefox extensions page.

## VA-API

Go to `about:config`, and change the following settings:

```
media.ffmpeg.vaapi.enabled = true
media.ffvpx.enabled = false
media.rdd-vpx.enabled = false
```

# Other about:config changes

Also change the following from `about:config`:

```
browser.tabs.closeWindowWithLastTab = false
browser.tabs.insertAfterCurrent = true
browser.chrome.site_icons = false
```

## DuckDuckGo settings

Change the following settings for the DuckDuckGo search engine settings page:

- General
  - Instant Answers: Off
  - Infinite Scroll for Images, Videos, and Shopping: Off
  - Advertisements: Off
  - Units of Measure: US-based (pounds, feet, Fahrenheit)
  - Install DuckDuckGo: Off
  - Privacy Newsletters: Off
  - Show occasional reminders to sign up for the DuckDuckGo privacy newsletters: Off
  - Homepage Privacy Tips: Off
  - Help Improve DuckDuckGo: Off
- Appearance (for dark theme)
  - Theme: Terminal (dark)
  - Font: Custom; SF Pro Text (after following `fonts.md`)
  - Center Alignment: On
  - Background Color: #242424 (dark)
  - Header Behavior: On & Scrolling
  - Header Color: #292929 or #ebebeb (light)
  - Title Font: Custom; SF Pro Text (after following `fonts.md`)
  - Title Color: #87f1f3 (dark) or #438de6 (light)
  - Visited Title Color: #888888 (dark) or #869bb3 (light)
  - Snippet Color: #222222 (light)
  - URL Color: #888888 (dark) or #898888 (light)
  - URL Format: Domains Only
  - URL Placement: Below Snippet
  - Hover, Module, and Dropdown Background Color: #f7f7f7 (light)
  - Site Icons: Off
- Privacy
  - Video Playback: Open on third-party site
