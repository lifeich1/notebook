# info make 笔记

## TOC

## 第4章

### 搜索路径

变量`VPATH`设置搜索路径，默认当target更新时生成在本地路径。可设置`GPATH`，在`VPATH`中搜索到的target若在`GPATH`中，则生成在搜索结果路径。

配置项`vpath <pattern> <directories>`设置符合pattern的文件的搜索路径。

### 库依赖规则

在规则的依赖列表中添加`-l<name>`，自动搜索`lib<name>.a`或`lib<name>.so`作为真正的依赖。变量`.LIBPATTERNS`设置库文件名匹配规则（例如`lib%.so lib%.a`）。
