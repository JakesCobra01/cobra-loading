# cobra-loading v2.1

**Blue Haven RP — Custom Loading Screen**

Standalone loading screen. Handles the full loading experience and dismisses itself when FiveM signals ready. 

---

## File Structure

```
cobra-loading/
├── fxmanifest.lua
├── html/
│   ├── index.html      ← loading screen UI
│   ├── config.json     ← all content settings
│   ├── Logo.png
│   └── logo.svg
└── README.md
```

---

## Installation

### server.cfg

```cfg
ensure cobra-loading
ensure qb-multicharacter   # or your multichar resource
```

Remove any old `paradise-intro` entry — it is no longer a separate resource.

---

## Configuration (html/config.json)

| Key | Description |
|---|---|
| `selectedColor` | Accent hex colour |
| `backgroundImage` | URL or local path for background |
| `watermark.label.text` | Server name in top-left |
| `watermark.label.colorWordCount` | Words to tint in accent colour |
| `watermark.subHeading` | Subtitle under logo |
| `watermark.logo` | Path to logo (relative to html/) |
| `rules` | Array of rule strings |
| `teamMembers` | Array of { name, role, image } |
| `customPanels[].entries` | Updates tab bullet points |
| `gallery` | Array of { path } image objects |
| `keyboardShortcuts.keys` | Array of { key, onFoot, inCar } |
| `music` | Array of { path, title, artist } |
| `socialHeaders` | Bottom social link buttons |

---

## Troubleshooting

| Issue | Fix |
|---|---|
| config.json not applying | Validate at jsonlint.com |
| Background not loading | Check URL is public or use local file in html/ |
| Screen stays black | Check no other resource calls invokeNative('shutdown') |
