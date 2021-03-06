Good News 好消息
----
The new Plus version HBPLv1.0 driver is OUT,which have more features than the original driver.

新的Plus版本的HBPLv1.0驱动已出来，与原驱动相比有更多的功能特性。

Click the link below for download the new driver, or read more detail about the new driver.

点击以下链接以下载新驱动，或了解更多新驱动的详情。

[to github](https://github.com/macos2/HBPLv1.0_Plus-Printer-driver) 

[to gitee](https://gitee.com/macos2/HBPLv1.0_Plus-Printer-driver)

Index
-----
This is the Linux Printer Driver for HBPLv1.0 Printer ,such as Dell 1250c, Dell C1660w, Dell C1760w, Epson AcuLaser C1700, Fuji-Xerox DocuPrint CP105b.

这是HBPLv1.0 打印机语言的Linux打印机驱动，已知使用该打印语言的打印机有 Dell 1250c, Dell C1660w, Dell C1760w, Epson AcuLaser C1700, Fuji-Xerox DocuPrint CP105b 等. 

Which is improve from coffin's hbplv1 printer driver and make some modify below:

这是在coffin的hbplv1打印驱动基础上作出以下改进：

```
1. Modify *.ppd file , fix " Unimplemented paper code * " Problem.
   修改*.ppd文件，修复" Unimplemented paper code * "问题。

2. Add a5 paper size support
   添加a5纸尺寸支持。

3. Create `configure` , `makefile.in` and `makefile` for easy configure,install and uninstall.
   创建`configure`,`makefile.in`和`makefile`以更容易配置、安装和卸载。
```

For more detail about the original driver,go to [Dave Coffin's Home Page](http://www.dechifro.org/hbpl)

想了解原始驱动的详情，请到[Dave Coffin's Home Page](http://www.dechifro.org/hbpl)

Dependency 依赖
-----
It need the jbig development file to compile the programs.

需要jbig的开发文件编译程序。

Install develop the package like `libjbig-dev`,`jbig-devel`and so on.

安装类似`libjbig-dev`,`jbig-devel`开发软件包

@Debian 10: `sudo apt install libjbig-dev`

Configure 配置
-----
`./configure` to configure the install path,leave blank for default install path `/usr`

`./configure`配置安装路径，留空使用默认路径`/usr`

you can skip this step if you want to use `/usr` for default install path since a configured `makefile` have been created for default install path.

如果你想安装`/usr` ，你可以跳过该步骤，因为配置好默认路径的`makefile`已经创建了。

Build 编译
-----
just `make` or `make all`

Install 安装
-----
`make install` or `sudo make install`.

Add Printer 添加打印机
-----
Use the `system-config-printer` or other cups admin tools to add the printer with the installed *.ppd as normal printer.

使用`system-config-printer`或其他cups配置工具用安装好的*.ppd文件配置打印机。

The installed *.ppd should be found by the admin tools,or your can special/upload the *.ppd files from the `ppd` directory.

一般情况下，cups配置工具都能找到安装的*.ppd文件，如果没有找到，你可通过指定/上传`ppd`目录下相关*.ppd文件配置打印机。


Command Line Usage 命令行方式使用
-----
1.print something to the *.pdf or *.ps format file(like `output.pdf` or `output.ps`).
  把打印的内容输出成*.pdf 或 *.ps 格式的文件。

2.use command `foo2hbpl1-wrapper [options] < [output.pdf|output.ps] >output.hbpl `to transfrom the *.pdf or *.ps file to hbplv1 language page file（`output.hbpl`）
  通过命令`foo2hbpl1-wrapper [options] < [output.pdf|output.ps] >output.hbpl `把*.pdf 或 *.ps 格式的文件转换成hbplv1页面描述性文件（`output.hbpl`）

3.`cat` the hbplv1 language page file(`output.hbpl`) to printer device(like `/dev/usb/lp0`),`cat output.hbpl >/dev/usb/lp0`. 
  把hbplv1页面描述性文件`cat`到打印机设备(如 `/dev/usb/lp0`)，`cat output.hbpl >/dev/usb/lp0`.

CUPS Usage CUPS方式使用
-----
Select the installed printer in Print Dialog,set up the printing properties and then "print".
在打印对话框中选择已安装的打印机，设置好打印的属性然后打印便可。

Uninstall 卸载
-----
`make uninstall` or `sudo make uninstall`.

Knowed Bugs 已知问题
-----
* The resoultion is fixed at 600 x 600 dpi.
  分辨率固定在600x600dpi

* The printer might not responed after published the print jobs too frequently ,  Replug the printer usb port should be slove the problem.
  打印过于频繁，打印机可能会对打印作业没有相应，重插打印机usb接口应该可解决问题。

* The print direction may be reversed in some graphic softwares like eog , if you care the direction, you can print the thing into a ghostscript file or a pdf file, and then print the ghostscript file or the pdf file with the printer.
  在某些图像软件如eog，打印图像方向可能会反转，如果你对打印方向有要求，可先把打印内容输出至postscript或pdf文件，然后再用打印机打印该postscript或pdf文件。

* The printer is not responed after first time printing @`Debian 10`（CUPS way）,but it work fine @`Fedora 31`,so I recommend using this driver @`Fedora 31`,but you can skip this problem by command line usage at `Debian 10`.
  在`Debian 10`环境下，首次打印后打印机会对后续的打印作业没有响应(CUPS 方式)，但在`Fedora 31`则没有这个问题，所以我建议你在`Fedora 31`上使用这打印驱动，但你也可以通过命令行的使用方式在`Debian 10`上避开这个使用问题。
