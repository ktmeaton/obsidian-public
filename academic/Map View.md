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

Test these out in the [[obsidian-public/academic/Slippy Tiles]] note.

- [[OpenStreetMap]] | https://tile.openstreetmap.org/{z}/{x}/{y}.png
	![|256](https://tile.openstreetmap.org/3/4/2.png)	
	
- [[Humanitarian]] | http://a.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png
	![](http://a.tile.openstreetmap.fr/hot/3/4/2.png)
	
- [[CartoDB]] Light | https://a.basemaps.cartocdn.com/light_all/{z}/{x}/{y}@2x.png
	![|256](https://a.basemaps.cartocdn.com/light_all/3/4/2@2x.png)
	
- [[CartoDB]] Voyager | https://a.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}@2x.png
	![|256](https://a.basemaps.cartocdn.com/rastertiles/voyager/3/4/2@2x.png)
	
- [[MapTiler]] Pastel | https://api.maptiler.com/maps/pastel/{z}/{x}/{y}.png?key={API_KEY}
%%🔐α BaUtYIGp7ySSNiT7J6vF+QDHA3yljozhwZ8r8SjYpoowXFmbgt3t/dJMogrpQmafQ7cVpTx9UlopEDEvsTbooZSdCk7x0dCo9wovFkd5EV4jU+ccIw6nIO2eNiEp+0iXXsDsViaGGg8xvUIQrdoqfNF6kAzgjJwe5r1PZ/1RLcfuH/wNTRiJUby8zp3ZaDTjovCs4aN49COnP+mCbMtF1vjtlaYQ4ajWLuWMgPNoGltY8IkTGhQrJ++QkVXXnoZX 🔐%%
- [[MapTiles]] English | https://maptiles.p.rapidapi.com/en/map/v1/{z}/{x}/{y}.png
- [[Mapbox]] | https://api.mapbox.com/styles/v1/mapbox/light-v10/tiles/256/3/4/2?access_token={API_KEY}'
%%🔐α TnJDeh9N0ug38u/OY7fG4q+dihfRHWwk/gIHr7f2DA8BuunP0MZAPMc/kV5TGDaLbirV2ZvatA/cgmapB5PeJREoPgE8sfDThhUJxvQu/wiZWYt2tPKxaN41gEDM6aLMTnhGrieTHciDcvLAYuJ26MWqqoPKfequwyQU0AZKBROyyolmdCg9mqGfcHPrp81FSmje2547dX6T8pSOQ2Ofxw1CYoSJaBLUVm4qf8Wel3zuYBFCgyMolZH6RTY29ED9zDxEGSdK4sFSuspQLNCNwxLw9hriFe8A9B5Lup8VgdNJk7MRISWTmoRQq6Nl1Tx4REGVbGfa0TuKwpPk0Z18wZS7SAFE/76ozynNrR2VzPGRUYQpkIVLkqbMa4SxNsZloVZPi0glZebWKY1Woj00xnptihFza39yAkKv33cR5mW2n4tCzP7fNyk1XFc/wwoSpRrjzNHVu8uvxB5u6FbcNA1g8v8n6446HW2jdCGg2XhcTjnhshhApUg1GRCg/zjN 🔐%%
	
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

