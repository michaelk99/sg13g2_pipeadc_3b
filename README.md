# sg13g2_pipeadc_3b
(c) 2025 Michael Koefinger, Dominik Brandstetter

3-bit Pipeline ADC. Design scripts, schematics and verilog.

# Content
- `.designinit`: setup pdk paths
- `xschemrc`: custom mosfet device annotation
- `python`: system level design and gm/Id design scripts
- `xschem`: schematics and testbench schematics with ngspice code
- `verilog`
  - `verilog/rtl`: RTL description of the encoder, verilated shared-object files
  - `verilog/sim`: verilog testbench and simulation scripts
- `matlab`: ideal system-level simulation
- `doc`: presentation

# Tools
- [IIC_OSIC_TOOLS](https://github.com/iic-jku/IIC-OSIC-TOOLS)
	- The root of this repo must be located at `/foss/designs/` inside the Docker container, e.g. `export DESINGS = <path-to-repo>` before you call `start_x.sh`.
- Modelsim
	- Use `*.do` files in `verilog/sim`
- [Pandoc](https://pandoc.org/)
	- `pandoc -t beamer aicd_ss25_pres.md -o aicd_ss25_pres.pdf`
	- Requires the [JKU LaTeX beamer theme](https://github.com/michaelroland/jku-templates-presentation-latex)
