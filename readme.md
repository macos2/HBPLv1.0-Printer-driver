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

Uninstall 卸载
-----
`make uninstall` or `sudo make uninstall`.

Knowed Bugs 已知问题
-----
* The resoultion is fixed at 600 x 600 dpi.
  分辨率固定在600x600dpi

* The printer may not responed , after published the print jobs too frequently , restart the printer should be slove the problem.
  打印过于频繁，打印机可能会对打印作业没有相应，重启打印机可解决问题。

* The print direction may be reversed in some graphic softwares like eog , if you care the direction, you can print the thing into a ghostscript file or a pdf file, and then print the ghostscript file or the pdf file with the printer.
  在某些图像软件如eog，打印图像方向可能会反转，如果你对打印方向有要求，可先把打印内容输出至ghostscript或pdf文件，然后再用打印机打印该ghostscript或pdf文件。
