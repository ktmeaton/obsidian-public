---
title: Obsidian Citations
type: [[Tool]]
tags:
  - 📝/🌱
---

# Obsidian Citations

## Summary

Obsidian Citations is a plugin that integrates citations with [[Zotero]].

Now open the Obsidian preferences and view the "Citations" tab. Paste the path to the exported file (`.bib` or `.json`, depending on the format you chose) in the text field labeled "Citation export path." After closing the settings dialog, you should now be able to search your references from within Obsidian!

## Setup

Now open the Obsidian preferences and view the "Citations" tab. Paste the path to the exported file (`.bib` or `.json`, depending on the format you chose) in the text field labeled "Citation export path." After closing the settings dialog, you should now be able to search your references from within Obsidian!

## Usage

The plugin offers four simple features at the moment:

1.  **Open literature note** (Ctrl+Shift+O): automatically create or open a literature note for a particular reference. The title, folder, and initial content of the note can be configured in the plugin settings.
2.  **Insert literature note reference** (Ctrl+Shift+E): insert a link to the literature note corresponding to a particular reference.
3.  **Insert literature note content in the current pane** (no hotkey by default): insert content describing a particular reference into the current pane. (This can be useful for updating literature notes you already have but which are missing reference information.)
4.  **Insert Markdown citation** (no hotkey by default): insert a [Pandoc-style citation](https://pandoc.org/MANUAL.html#extension-citations) for a particular reference. (The exact format of the citation can be configured in the plugin settings.)

### Templates

You can set up your own template for both the title and content of literature notes. The following variables can be used:

```
* {{citekey}}
* {{abstract}}
* {{authorString}}
* {{containerTitle}}
* {{DOI}}
* {{eprint}}
* {{eprinttype}}
* {{eventPlace}}
* {{page}}
* {{publisher}}
* {{publisherPlace}}
* {{title}}
* {{URL}}
* {{year}}
* {{zoteroSelectURI}}
```