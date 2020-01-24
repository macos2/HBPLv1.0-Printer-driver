Index
-----
This is the Linux Printer Driver for HBPLv1.0 Printer ,such as Dell 1250c, Dell C1660w, Dell C1760w, Epson AcuLaser C1700, Fuji-Xerox DocuPrint CP105b.

Which is improve from coffin's hbplv1 printer driver and make some modify below:

```
1. Modify *.ppd file , fix " Unimplemented paper code * " Problem.

2. Add a5 paper size support

3. Create `configure` , `makefile.in` and `makefile` for easy configure,install,uninstall.
```

For more detail about the original driver,go to [Dave Coffin's Home Page](http://www.dechifro.org/hbpl)

Dependency
-----
It need the jbig development file to compile the programs.

Install develop the package like `libjbig-dev`,`jbig-devel`and so on.

@Debian 10: `sudo apt install libjbig-dev`

Configure
-----
`./configure` to configure the install path,leave blank for default install path `/usr`

it's also a configured `makefile` created for default install path.so you can skip this step if you want to use `/usr` for default install path.

Build
-----
just `make` or `make all`

Install
-----
`make install` or `sudo make install`.

Add Printer
-----
Use the `system-config-printer` or other cups admin tools to add the printer with the installed *.ppd as normal printer.

The installed *.ppd should be found by the admin tools,or your can special/upload the *.ppd files from the `ppd` directory.

Uninstall
-----
`make uninstall` or `sudo make uninstall`.

Knowed Bugs
-----
* The resoultion is fixed at 600 x 600 dpi.

* The printer may not responed , after published the print jobs too frequently , restart the printer should be slove the problem.

* The print direction may be reversed in some graphic softwares like eog , if you care the direction, you can print the thing into a ghostscript file or a pdf file with a virtual printer, and then print the file with the printer.
