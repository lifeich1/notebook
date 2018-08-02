# git 代码阅读笔记

阅读版本：v2.18.0-rc2

## table of content

## Makefile



## 初始化

入口：`/common-main.c:main()`

防止`die()`输出失败，`sanitize_stdfds()`将没打开的stderr设向`/dev/null`。

`git_resolve_executable_dir()`寻找执行文件目录。procfs可以通过`/proc/self/exe`找到自己执行文件。

`git_setup_gettext()`设置gnu gettext组件。

`initialize_the_repository()`进行仓库repository的初步初始化。

`attr_start()`初始化互斥锁。

`restore_sigpipe_to_default(void)`：git常常使用pipe通信，利用SIGPIPE通知下游不必继续阅读管道。
此函数将信号机制重设防止第三方修改。

调用并返回执行入口`cmd_main()`的结果。


## git






## 附

### strbuf

- `strbuf_detach()`: 返回原内容，清空缓存
- `strbuf_grow()`: 分配、重分配以增长
