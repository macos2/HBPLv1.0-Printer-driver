Index
-----
This is the Linux Printer Driver for HBPLv1.0 Printer ,such as Dell 1250c, Dell C1660w, Dell C1760w, Epson AcuLaser C1700, Fuji-Xerox DocuPrint CP105b.

Which is development from coffin's hbplv1 printer driver and make some modify below:

```

1. Modify *.ppd file , fix " Unimplemented paper code * " Problem.

2. Add a5 paper size support

3. Create `configure` and `makefile.in` for easy configure,install,uninstall.
```

For more detail about the drivers, [go here](http://www.dechifro.org/hbpl)

Dependency
-----
It need the jbig development file to compile the programs.

Install develop the package like `libjbig-dev`,`jbig-devel`and so on.

@Debian 10: `sudo apt install libjbig-dev`

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

