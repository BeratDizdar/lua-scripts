# lua-scripts
Bu depo, LÖVE çerçevesine yardımcı araçlar ve kodlar içeren dosyalar grubudur. Bu kodlar, çeşitli sistem bilgilerini almak ve göstermek gibi işlemler için kullanılabilir.

## Örnekler

### svg.lua
```lua
-- Modülü çağır
local SVG = require("svg")
```
```lua
-- Yeni bir SVG nesnesi oluştur
local svg = SVG:new(800, 600)
```
```lua
-- Elemanlar ekle
svg:addCircle(x, y, radius, color)
svg:addPoint(x, y, color, radius)
svg:addPolygon({points}, color)
svg:addRect(x, y, w, h, color, [corner_radius])
svg:addRect(x, y, w, h, color)
svg:addText(x, y, size, "Merhaba Dünya", color)
```
```lua
-- SVG içeriği oluştur
local content = svg:createContent()
```
```lua
-- SVG içeriğini oluştur ve dışarı aktar
svg:createContentAndExport("dynamic_modular_example.svg")
```

### system_info.lua

``` lua
-- Modülü çağır
local system_info = require("system_info")
```
``` lua
-- .getInfo() -> sistem bilgilerini döndür
-- .print() -> sağ üste yazdır
system_info.print(system_info.getInfo())
```


