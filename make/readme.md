# info make 笔记

## TOC

## 第4章

### 搜索路径

变量`VPATH`设置搜索路径，默认当target更新时生成在本地路径。可设置`GPATH`，在`VPATH`中搜索到的target若在`GPATH`中，则生成在搜索结果路径。

配置项`vpath <pattern> <directories>`设置符合pattern的文件的搜索路径。

### 库依赖规则

在规则的依赖列表中添加`-l<name>`，自动搜索`lib<name>.a`或`lib<name>.so`作为真正的依赖。变量`.LIBPATTERNS`设置库文件名匹配规则（例如`lib%.so lib%.a`）。

### Static Pattern 规则

**定义**：

```
TARGETS ...: TARGET-PATTERN: PREREQ-PATTERNS ...
	RECIPE
	...
```

*比隐含规则更利于用户定制。*

### 双冒号

双冒号提供给同一个目标并行的多规则设定。相当于多个独立规则，但目标名字相同。

### 自动头文件依赖生成

利用编译器的`-M`或`-MM`选项生成头文件依赖规则。再利用makefile更新的remake机制，避免事先`make depend`的冗余操作，精简到一次构建自动完成。

- 加入pattern规则，利用`cc -MM`功能生成子makefile
- 将生成规则导入主makefile
- 令子makefile依赖于自动生成的头文件，使用remake机制自动循环更新
