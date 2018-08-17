# 1. 搜索路径实验
# sub0 与 sub1 差别在GPATH，导致rebuild路径不同
# sub0 与 sub3 差别在于是否过时，sub0 rebuild 导致对象文件路径不类似
# sub2 展示vpath配置项


VPATH := ./sub0:./sub1:./sub3
GPATH := ./sub1
vpath sub2-%.c ./sub2
EXES := hello \
	sub0-hello \
	sub1-hello \
	sub2-hello \
	sub3-hello

all: $(EXES)

hello: hello.o
sub0-hello: sub0-hello.o
sub1-hello: sub1-hello.o
sub2-hello: sub2-hello.o
sub3-hello: sub3-hello.o

.PHONY: clean

clean::
	-rm -f *.o
	-rm -f */*.o
	-rm -f $(EXES)

pre-gtest: clean sub1/sub1-hello.o sub0/sub0-hello.o
	-sleep 1
	-find . -name "*.c" -exec touch {} \;
	-sleep 1
	-make sub3/sub3-hello.o


# 2. -l<library> 依赖项
# 实验库依赖规则
#
# touch lib%.c 再 make exhello 测试依赖更新
#

BINFILES2 := libexamplehello.so exhello

all: $(BINFILES2)

exhello: exhello.c -lexamplehello
	$(CC) $^ -o $@

libexamplehello.so: examplehello.c
	$(CC) -shared -fPIC -o $@ $^

clean::
	-rm -f $(BINFILES2)
