---
title: Map View
type: Tool 
authors:
summary:
locations:
---

# [[Map View]]

## Summary

[[Map View]] is an [[Obsidian]] plugin that displays a map.

## Geocoding

By default, [[Map View]] uses [[OpenStreetMap]] as the search provider.

- [Edmonton](geo:53.535411,-113.507996)

## Map Sources

By default, [[Map View]] uses the [standard tile layer of OpenStreetMap](https://wiki.openstreetmap.org/wiki/Standard_tile_layer). 

There are many services of localized, specialized or just beautifully-rendered maps that you can use, sometimes following a free registration. See a pretty comprehensive list [here](https://wiki.openstreetmap.org/wiki/Tiles).

- [[OpenStreetMap]] | https://tile.openstreetmap.org/{z}/{x}/{y}.png
- [[Humanitarian]] A | http://a.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png
- [[Humanitarian]] B | http://b.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png
- [[MapTiler]] Pastel | https://api.maptiler.com/maps/pastel/{z}/{x}/{y}.png
- [[MapTiles]] English | https://maptiles.p.rapidapi.com/en/map/v1/{z}/{x}/{y}.png
- [[Carto Light]] "[[Positron]]" | https://cartodb-basemaps-{s}.global.ssl.fastly.net/light_all/{z}/{x}/{y}.png

## Icons

### Default

```json
[
  {
    "ruleName": "default",
    "preset": true,
    "iconDetails": {
      "prefix": "fas",
      "icon": "fa-circle",
      "markerColor": "black",
      "shape": "circle"
    }
  },
  {
    "ruleName": "#plague-immune",
    "preset": false,
    "iconDetails": {
      "prefix": "fas",
      "icon": "fa-circle",
      "markerColor": "black",
      "shape": "penta"
    }
  }
]
```

### Test

```json
[
  {
    "ruleName": "default",
    "preset": true,
    "iconDetails": {
      "prefix": "fas",
      "icon": "fa-circle",
      "markerColor": "black",
      "shape": "circle"
    }
  },
  {
    "ruleName": "#plague-immune",
    "preset": false,
    "iconDetails": {
      "prefix": "fas",
      "icon": "fa-circle",
      "iconColor": "black",
      "shape": "penta"
    }
  }
]
```

