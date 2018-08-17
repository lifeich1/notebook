# info make 笔记

## TOC

## 第4章

### 搜索路径

变量`VPATH`设置搜索路径，默认当target更新时生成在本地路径。可设置`GPATH`，在`VPATH`中搜索到的target若在`GPATH`中，则生成在搜索结果路径。

配置项`vpath <pattern> <directories>`设置符合pattern的文件的搜索路径。

