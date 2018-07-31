# git 代码阅读笔记

阅读版本：v2.18.0-rc2

## table of content

## 初始化

入口：`/common-main.c:main()`

> `restore_sigpipe_to_default(void)`：git常常使用pipe通信，利用SIGPIPE通知下游不必继续阅读管道。
> 此函数将信号机制重设防止第三方修改。

防止`die()`输出失败，`sanitize_stdfds()`将没打开的stderr设向`/dev/null`。
