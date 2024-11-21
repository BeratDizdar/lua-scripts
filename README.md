# lua-scripts
Bu depo, LÖVE çerçevesine yardımcı araçlar ve kodlar içeren dosyalar grubudur. Bu kodlar, çeşitli sistem bilgilerini almak ve göstermek gibi işlemler için kullanılabilir.

## Örnekler

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


