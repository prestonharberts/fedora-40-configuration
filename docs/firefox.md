# Firefox

## Settings

Open Application Menu, and open Settings. Change the following settings:

- Sync
	- Sign in
	- Device Name: Same as device name
- Home
	- New Windows and Tabs: Custom URLs
		- Homepage and new windows: `about:newtab`
	- Firefox Home Content
		- Web Search: Off
		- Shortcuts: Off
		- Recommended by Pocket: Off
		- Recent activity: Off
		- Snippets: Off
- Search
	- Default Search Engine: DuckDuckGo
	- Search Suggestions
		- Provide search suggestions: Off
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
	- Cookies and Site Data
		- Delete cookies and site data when Firefox is closed
	- Logins and Passwords
		- Ask to save logins and passwords for websites: Off
	- Forms and Autofill
		- Autofill addresses: Off
		- Autofill credit cards: Off
	- History
		- Clear history when Firefox closes
			- Settings
				- History
					- Form & search history: On
						- Active logins: On
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

## Bookmarks Toolbar

Open a new tab and right click an empty space on the Bookmarks toolbar. Change the following setting:

- Bookmarks Toolbar: Never show

## Extensions

Open Settings, and click the Extensions & Themes button at the bottom. Under the Extensions tab, click "Find more add-ons." Search and install the following extensions:

- "Bitwarden - Free Password Manager" by Bitwarden Inc.
- "Enhancer for YouTube" by Maxime RF
- "Return YouTube Dislike" by Dmitry Selivanov
- "SingleFile" by gildas to Firefox
- "SponsorBlock - Skip Sponsorships on YouTube" by Ajay Ramachandran
- "uBlock Origin" by Raymond Hill
	- When prompted, allow to run in private windows

### Bitwarden

Click the Bitwarden extension button, and log in (making sure to check the remember login information), and go to Settings. Change the following setting:

- Other
	- Options
		- Autofill
			- General
				- Clear clipboard: 2 minutes

### Enhancer for YouTube

Click the Enhancer for YouTube extension button, and change the following settings:

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
			- Videos: Use one resolution less than monitor resolution (max 1080p)
			- Playlists: Same as above
			- Select a different playback quality when entering the full screen mode: On
				- Videos (full screen): 2160p 4K
				- Playlists (full screen): 2160p 4K
				- Pop-up player and embedded videos (full screen): 2160p 4K
			- Switch back to the previous playback quality when exiting full screen mode
	- Autoplay
		- Disable autoplay: On
- Appearance
  - Automatically enable YouTube's "Theatre mode": On
  - Automatically expand the video player: On
  - Use the available space based on the viewport dimensions to expand the video player: On
  - Automatically expand the videos descriptions: On
  - Hide chat: On
  - Hide related videos: On
  - Hide Shorts: On (Change `layout.css.has-selector.enabled` to `true` in about:config)
  - Convert Shorts: On

## Customize Toolbar

Right click empty space on the toolbar (same bar as the search bar), and go to Customize Toolbar. Complete the following actions:

- Remove the Flexible Space items on both sides of the search bar
- Remove the Save to Pocket item
- Remove the Firefox account button
- Remove the New Tab button next to the open tabs
- Remove the Homepage button

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
