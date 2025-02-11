# iiitb_freqdiv - Frequency Divider
This is a frequency divider model which provide frequency division upto 16 of the input clock.

# Table of Contents

[Description](https://github.com/DantuNandiniDevi/iiitb_freqdiv#description)<br>
<br>
[Tools Used](https://github.com/DantuNandiniDevi/iiitb_freqdiv#tools-used)<br>
* [Icarus Verilog (iverilog) GTKWave installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#icarus-verilog-iverilog-gtkwave-installation)<br>
* [Yosys installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#yosys-installation)<br>
* [Python installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#python-installation)<br>
* [Docker installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#docker-installation)<br>
* [Openlane installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#openlane-installation)<br>
* [Magic installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#magic-installation)<br>
    - [installing csh](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-csh)<br>
    - [installing x11/xorg](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-x11xorg)<br>
    - [installing GCC](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-gcc)<br>
    - [installing Build Essentials](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-build-essential)<br>
    - [installing OpenGL](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-opengl)<br>
    - [installing tcl/tk](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-tcltk)
    - [installing magic](https://github.com/DantuNandiniDevi/iiitb_freqdiv#installing-magic)<br>
 * [klayout installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#klayout-installation)<br>
 * [ngspice installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#ngspice-installation)<br>
 * [Tapeout : Caravel Flow Installation](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#tapeout--caravel-flow-installation)

[PreSynthesis](https://github.com/DantuNandiniDevi/iiitb_freqdiv#presynthesis)<br>
 <br>
[PostSynthesis](https://github.com/DantuNandiniDevi/iiitb_freqdiv#postsynthesis)<br>
 <br>
 
 [Creating a Custom Cell](https://github.com/DantuNandiniDevi/iiitb_freqdiv/edit/main/README.md#creating-a-custom-inverter-cell)
 
[Layout](https://github.com/DantuNandiniDevi/iiitb_freqdiv#layout)<br>
 * [Preparation](https://github.com/DantuNandiniDevi/iiitb_freqdiv#preparation)<br>
 * [Synthesis](https://github.com/DantuNandiniDevi/iiitb_freqdiv#synthesis)<br>
     - [Synthesis Reports](https://github.com/DantuNandiniDevi/iiitb_freqdiv#synthesis-reports)<br>
 * [Floorplan](https://github.com/DantuNandiniDevi/iiitb_freqdiv#floorplan)<br>
     - [Floorplan Reports](https://github.com/DantuNandiniDevi/iiitb_freqdiv#floorplan-reports)<br>
 * [Placement](https://github.com/DantuNandiniDevi/iiitb_freqdiv#placement)<br>
     - [placement Reports](https://github.com/DantuNandiniDevi/iiitb_freqdiv#placement-reports)<br>
 * [Clock Tree Synthesis](https://github.com/DantuNandiniDevi/iiitb_freqdiv#clock-tree-synthesis)<br>
 * [Routing](https://github.com/DantuNandiniDevi/iiitb_freqdiv#routing)<br>
     - [Routing Reports](https://github.com/DantuNandiniDevi/iiitb_freqdiv#routing-reports)<br>


 [Viewing layout in klayout](https://github.com/DantuNandiniDevi/iiitb_freqdiv#viewing-layout-in-klayout)<br>
 <br>
 [Note](https://github.com/DantuNandiniDevi/iiitb_freqdiv#note)<br>
 <br>

[Results Post Layout](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#results-post-layout) <br>
* [1. Post layout synthesis gate count](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#1-post-layout-synthesis-gate-count)<br>
* [2. Area (box command)](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#2-area-box-command)<br>
* [3. Performance](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#3-performance)<br>
* [4. Flop/Standard cell ratio](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#4-flopstandard-cell-ratio)<br>
* [5. Power (internal,switching,leakage and total)](https://github.com/DantuNandiniDevi/iiitb_freqdiv/blob/main/README.md#5-power-internal-switching-leakage-and-total)<br>


[Tapeout : Caravel Flow](https://github.com/DantuNandiniDevi/iiitb_freqdiv#tapeout--caravel-flow)<br>
<br>

[Errors and Solutions](https://github.com/DantuNandiniDevi/iiitb_freqdiv#errors-and-solutions)<br>
 * [Error 1 : make mount permission denied](https://github.com/DantuNandiniDevi/iiitb_freqdiv#error-1)<br>
 * [Error 2 : placement failed error](https://github.com/DantuNandiniDevi/iiitb_freqdiv#error-2)<br>
 * [Error 3 : Files name mismatch error](https://github.com/DantuNandiniDevi/iiitb_freqdiv#error-3)<br>
 * [Error 4 : No Macro Error](https://github.com/DantuNandiniDevi/iiitb_freqdiv#error-4)<br>
 * [Error 5 : sky130_vsdinv not reflecting in stat](https://github.com/DantuNandiniDevi/iiitb_freqdiv#error-5)<br>
 * [Error 6: List index out of range](https://github.com/DantuNandiniDevi/iiitb_freqdiv#error-6)<br>
 * [Error 7: Can't read sky130_vsdinv error in tcl window](https://github.com/DantuNandiniDevi/iiitb_freqdiv#error-7)<br>
 * [Error 8: PL_TARGET DENSITY error](https://github.com/DantuNandiniDevi/iiitb_freqdiv#error-8)<br>
 


 
 [References](https://github.com/DantuNandiniDevi/iiitb_freqdiv#reference)<br>
 <br>
 
# Description

This document is a model and analysis of a Freqency Divider. This model will contain a 4 bit number lines to select by which factor does the input frequency has to be divided. It is simulated using verilog, synthesis is performed using yosys.

A frequency divider takes an input frequency and generated a output frequency depending on the division factor. One of the well-known application of frequency divider is a phase lock loop, which generates multiples of a reference frequency. The other applications include frequency synthesizers, audio equipments, radar and satellite communication, Military equipments and RF devices. It is basically used in any application where frequency matching is needed and down scaling of frequency has to performed.


<p align="center">
<img src="http://www.sciweavers.org/tex2img.php?eq=fout%20%3D%20\frac{fin}{n}&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=">
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/62461290/182013018-3f34c600-2481-42fb-b9fd-366531d73fbd.png"> <br>
Fig 1: Frequency Divider
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/62461290/182013020-8a4a628e-071b-42b2-ba3a-034c2731935d.png"> <br>
Fig 2: Basic I/O diagram
</p>

# Tools Used
The installtion commands are given by taking ubuntu as the operating system.

For installating various softwares used in this project, open the terminal by right clicking on an empty space and type the respective commands in the terminal: <br>

<b> Note: If any of the commands that do not have sudo in the prefix doesnot go through, please add a prefix of sudo and try running it. </b>

## Icarus Verilog (iverilog) GTKWave installation

```
$ sudo apt-get update

$ sudo apt-get install iverilog gtkwave 
```

This can be installed on windows as well by directly downloading and installing the .exe file of icarus

## Yosys installation

Open the terminal by right clicking on am empty space in the directory u want to install and type the following commands:

```
$ git clone https://github.com/YosysHQ/yosys.git

$ cd yosys-master

$ sudo apt install make (If make is not installed please install it)

$ sudo apt-get install build-essential clang bison flex \
    libreadline-dev gawk tcl-dev libffi-dev git \
    graphviz xdot pkg-config python3 libboost-system-dev \
    libboost-python-dev libboost-filesystem-dev zlib1g-dev

$ make

$ sudo make install
```

## Python Installation
```
$ sudo apt install -y build-essential python3 python3-venv python3-pip
```

## Docker Installation
```
$ sudo apt-get remove docker docker-engine docker.io containerd runc (removes older version of docker if installed)

$ sudo apt-get update

$ sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
$ sudo mkdir -p /etc/apt/keyrings

$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

$ echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
$ sudo apt-get update

$ sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin

$ apt-cache madison docker-ce (copy the version string you want to install)

$ sudo apt-get install docker-ce=<VERSION_STRING> docker-ce-cli=<VERSION_STRING> containerd.io docker-compose-plugin (paste the version string copies in place of <VERSION_STRING>)

$ sudo docker run hello-world (If the docker is successfully installed u will get a success message here)
```

## OpenLane Installation
```
$ git clone https://github.com/The-OpenROAD-Project/OpenLane.git

$ cd OpenLane/

$ make

$ make test
```

## Magic Installation

For Magic to be installed and work properly the following softwares have to be installed first:

### Installing csh
```
$ sudo apt-get install csh
```

### Installing x11/xorg
```
$ sudo apt-get install x11

$ sudo apt-get install xorg

$ sudo apt-get install xorg openbox
```

### Installing GCC
```
$ sudo apt-get install gcc
```

### Installing build-essential
```
$ sudo apt-get install build-essential
```

### Installing OpenGL
```
$ sudo apt-get install freeglut3-dev
```

### Installing tcl/tk
```
$ sudo apt-get install tcl-dev tk-dev
```
### Installing magic
After all the softwares are installed, run the following commands for installing magic:

```
$ git clone https://github.com/RTimothyEdwards/magic

$ cd magic

$ ./configure

$ make

$ make install
```

## Klayout Installation

```
$ sudo apt-get install klayout
```

## ngspice Installation

```
$ sudo apt-get install ngspice
```

## Tapeout : Caravel flow installation

To start the project you first need to create a new repository based on the `caravel_user_project <https://github.com/efabless/caravel_user_project/>`_ template and make sure your repo is public and includes a README.

   *   Follow https://github.com/efabless/caravel_user_project/generate to create a new repository.
   *   Clone the reposity using the following command:
   
   
	$ git clone <your github repo URL>

    
   To setup your local environment run:
   
    $ cd <project_name> # project_name is the name of your repo
	
    $ mkdir dependencies
	
	$ export OPENLANE_ROOT=$(pwd)/dependencies/openlane_src # you need to export this whenever you start a new shell
	
	$ export PDK_ROOT=$(pwd)/dependencies/pdks # you need to export this whenever you start a new shell

	# export the PDK variant depending on your shuttle, if you don't know leave it to the default
	$ export PDK=sky130B

    $ make setup
   

# PreSynthesis

To clone the repository, download the netlist files and simulate the results, Enter the following commands in your terminal:

```
 $ git clone https://github.com/DantuNandiniDevi/iiitb_freqdiv 

 $ cd iiitb_freqdiv 
 
 $ iverilog -o iiitb_freqdiv_out.out iiitb_freqdiv.v iiitb_freqdiv_tb.v
 
 $ ./iiitb_freqdiv_out.out
 
 $ gtkwave iiitb_freqdiv_vcd.vcd
```

<p align="center">
<img src="https://user-images.githubusercontent.com/62461290/184837511-a29ecb45-d974-4053-8a1b-7f27b42759d0.png"> <br>
</p>

# PostSynthesis

```
$ yosys

yosys> read_liberty -lib ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib

yosys> read_verilog iiitb_freqdiv.v

yosys> synth -top iiitb_freqdiv

yosys> dfflibmap -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib

yosys> abc -liberty ../lib/sky130_fd_sc_hd__tt_025C_1v80.lib

yosys> stat

yosys> show

yosys> write_verilog iiitb_freqdiv_netlist.v

$ iverilog -DFUNCTIONAL -DUNIT_DELAY=#1 ../verilog_model/primitives.v ../verilog_model/sky130_fd_sc_hd.v iiitb_freqdiv_netlist.v iiitb_freqdiv_tb.v

$ ./a.out

$ gtkwave iiitb_freqdiv_vcd.vcd
```
<p align="center">
<img src="https://user-images.githubusercontent.com/62461290/184857873-012cef05-acf8-4170-b8e4-0f09a664c9ed.png"> <br>
</p>

<p align="center">
<img src="https://user-images.githubusercontent.com/62461290/184857905-2e755fa3-74ad-4a46-8683-94a24dfcb488.png"> <br>
</p>

# Creating a Custom Inverter Cell

Open Terminal in the folder you want to create the custom inverter cell.

```
$ git clone https://github.com/nickson-jose/vsdstdcelldesign.git

$ cd vsdstdcelldesign

$  cp ./libs/sky130A.tech sky130A.tech

$ magic -T sky130A.tech sky130_inv.mag &
```

![1](https://user-images.githubusercontent.com/62461290/187424346-c798a1a0-3e8b-43c8-a14a-7fc75e51ef2a.png)<br>

The above layout will open. The design can be verified and various layers can be seen and examined by selecting the area of examination and type `what` in the tcl window.

To extract Spice netlist, Type the following commands in tcl window.

```
% extract all

% ext2spice cthresh 0 rthresh 0

% ext2spice
```
`cthresh 0 rthresh 0` is used to extract parasitic capacitances from the cell.<br>

![2](https://user-images.githubusercontent.com/62461290/187435606-af09735d-64bf-4623-a4bf-e3bae9a2bd56.png)

The spice netlist has to be edited to add the libraries we are using, The final spice netlist should look like the following:

```
* SPICE3 file created from sky130_inv.ext - technology: sky130A

.option scale=0.01u
.include ./libs/pshort.lib
.include ./libs/nshort.lib


M1001 Y A VGND VGND nshort_model.0 ad=1435 pd=152 as=1365 ps=148 w=35 l=23
M1000 Y A VPWR VPWR pshort_model.0 ad=1443 pd=152 as=1517 ps=156 w=37 l=23
VDD VPWR 0 3.3V
VSS VGND 0 0V
Va A VGND PULSE(0V 3.3V 0 0.1ns 0.1ns 2ns 4ns)
C0 Y VPWR 0.08fF
C1 A Y 0.02fF
C2 A VPWR 0.08fF
C3 Y VGND 0.18fF
C4 VPWR VGND 0.74fF


.tran 1n 20n
.control
run
.endc
.end
```

Open the terminal in the directory where ngspice is stored and type the following command, ngspice console will open:

```
$ ngspice sky130_inv.spice 
```

![3](https://user-images.githubusercontent.com/62461290/187436666-ddcd5d51-b413-4ab8-a6ae-ca06006819dc.png)<br>

Now you can plot the graphs for the designed inverter model.

```
-> plot y vs time a
```

![4](https://user-images.githubusercontent.com/62461290/187437163-988dac40-0bd4-4ef6-abba-8528bad54659.png)<br>

Four timing parameters are used to characterize the inverter standard cell:<br>

1. Rise time: Time taken for the output to rise from 20% of max value to 80% of max value<br>
        `Rise time = (2.23843 - 2.17935) = 59.08ps`
2. Fall time- Time taken for the output to fall from 80% of max value to 20% of max value<br>
        `Fall time = (4.09291 - 4.05004) = 42.87ps`
3. Cell rise delay = time(50% output rise) - time(50% input fall)<br>
        `Cell rise delay = (2.20636 - 2.15) = 56.36ps`  
4. Cell fall delay  = time(50% output fall) - time(50% input rise)<br>
        `Cell fall delay = (4.07479 - 4.05) = 24.79ps`
        
To get a grid and to ensure the ports are placed correctly we can use
```
% grid 0.46um 0.34um 0.23um 0.17um
```

![5](https://user-images.githubusercontent.com/62461290/187439583-b2226424-4db2-419f-8e6b-ff1e4d365adb.png)


To save the file with a different name, use the folllowing command in tcl window
```
% save sky130_vsdinv.mag
```

Now open the sky130_vsdinv.mag using the magic command in terminal
```
$ magic -T sky130A.tech sky130_vsdinv.mag
```
In the tcl command type the following command to generate sky130_vsdinv.lef
```
$ lef write
```
A sky130_vsdinv.lef file will be created.


# Layout

## Preparation
The layout is generated using OpenLane. To run a custom design on openlane, Navigate to the openlane folder and run the following commands:<br>
```
$ cd designs

$ mkdir iiitb_freqdiv

$ cd iiitb_freqdiv

$ mkdir src

$ touch config.json

$ cd src

$ touch iiitb_freqdiv.v
```

The iiitb_freqdiv.v file should contain the verilog RTL code you have used and got the post synthesis simulation for. <br>

Copy  `sky130_fd_sc_hd__fast.lib`, `sky130_fd_sc_hd__slow.lib`, `sky130_fd_sc_hd__typical.lib` and `sky130_vsdinv.lef` files to `src` folder in your design. <br>

The final src folder should look like this: <br>

![f2](https://user-images.githubusercontent.com/62461290/187058789-46914626-3965-41c8-8336-cff2ed949889.png) <br>

The contents of the config.json are as follows. this can be modified specifically for your design as and when required. <br>

As mentioned by kunal sir dont use defined `DIE_AREA` and `FP_SIZING : absolute`, use `FP_SIZING : relative`
```
{
    "DESIGN_NAME": "iiitb_freqdiv",
    "VERILOG_FILES": "dir::src/iiitb_freqdiv.v",
    "CLOCK_PORT": "clkin",
    "CLOCK_NET": "clkin",
    "GLB_RESIZER_TIMING_OPTIMIZATIONS": true,
    "CLOCK_PERIOD": 10,
    "PL_TARGET_DENSITY": 0.7,
    "FP_SIZING" : "relative",
    "pdk::sky130*": {
        "FP_CORE_UTIL": 30,
        "scl::sky130_fd_sc_hd": {
            "FP_CORE_UTIL": 20
        }
    },
    
    "LIB_SYNTH": "dir::src/sky130_fd_sc_hd__typical.lib",
    "LIB_FASTEST": "dir::src/sky130_fd_sc_hd__fast.lib",
    "LIB_SLOWEST": "dir::src/sky130_fd_sc_hd__slow.lib",
    "LIB_TYPICAL": "dir::src/sky130_fd_sc_hd__typical.lib",  
    "TEST_EXTERNAL_GLOB": "dir::../iiitb_freqdiv/src/*"


}
```



Save all the changes made above and Navigate to the openlane folder in terminal and give the following command :<br>

```
$ make mount (if this command doesnot go through prefix it with sudo)
```
![1](https://user-images.githubusercontent.com/62461290/186196147-6c8d37a3-9769-428c-93e2-aefb4c897cf0.png)

After entering the openlane container give the following command:<br>
```
$ ./flow.tcl -interactive
```
![2](https://user-images.githubusercontent.com/62461290/186196149-b595f203-a711-46cc-8949-39bee6de552e.png)

This command will take you into the tcl console. In the tcl console type the following commands:<br>

```
% package require openlane 0.9
```
![3](https://user-images.githubusercontent.com/62461290/186196154-c3caa53a-1199-45d1-8903-ba7a1f626c96.png)<br>
```
% prep -design iiitb_freqdiv
```
![4](https://user-images.githubusercontent.com/62461290/186196159-9444df4e-9580-4a04-ba68-c79190d78863.png)<br>

The following commands are to merge external the lef files to the merged.nom.lef. In our case sky130_vsdiat is getting merged to the lef file <br>
```
set lefs [glob $::env(DESIGN_DIR)/src/*.lef]
add_lefs -src $lefs
```
![f1](https://user-images.githubusercontent.com/62461290/187058441-e4b64b62-d99d-49b6-8ea5-086afed01b75.png) <br>
<br>
The contents of the merged.nom.lef file should contain the Macro definition of sky130_vsdinv <br>
<br>
![f3](https://user-images.githubusercontent.com/62461290/187058907-0105481f-b632-4d0c-8d13-40a7f702a10d.png)

## Synthesis
```
% run_synthesis
```
![5](https://user-images.githubusercontent.com/62461290/186196161-f33eab28-90e1-4697-acf1-cb7f527e00f3.png)<br>

### Synthesis Reports
Details of the gates used <br>
<br>
![5](https://user-images.githubusercontent.com/62461290/187059146-d8875af6-8feb-4d1a-b908-3fb5c40af428.png)<br>
<br>
Setup and Hold Slack after synthesis<br>
<br>
![7](https://user-images.githubusercontent.com/62461290/187059191-bc94260c-1867-4167-a6d3-4a2397416b7f.png)<br>
<br>
```
Flop Ratio = Ratio of total number of flip flops / Total number of cells present in the design = 8/71 = 0.1125
```
<br>
The sky130_vsdinv should also reflect in your netlist after synthesis <br>
<br>

![9](https://user-images.githubusercontent.com/62461290/187059397-9d745276-f506-45cb-a62f-c369a165e8e9.png)


## Floorplan
```
% run_floorplan
```
![10](https://user-images.githubusercontent.com/62461290/187059432-528152fe-2ec3-4aea-9045-1a5187dc7266.png)<br>

### Floorplan Reports
Die Area <br>
<br>
![12 die](https://user-images.githubusercontent.com/62461290/187059493-d33c91d9-d238-4e9c-8a53-0f4a0b6fa40b.png)<br>
<br>
Core Area <br>
<br>
![11 core](https://user-images.githubusercontent.com/62461290/187059503-233981d6-baf2-46c5-b8e6-979e18baf189.png)<br>

Navigate to results->floorplan and type the Magic command in terminal to open the floorplan <br>
```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_freqdiv.def &
```
![14](https://user-images.githubusercontent.com/62461290/187059593-bdf6b441-9cb8-4838-a2a0-5638af1c7c02.png)<br>
<br>
Floorplan view <br>
<br>
![13](https://user-images.githubusercontent.com/62461290/187059569-1b8184d1-47e1-4ec3-9539-17e317aedacb.png)<br>
<br>
All the cells are placed in the left corner of the floorplan<br>
<br>
![15](https://user-images.githubusercontent.com/62461290/187059629-b135d6dd-dd77-4a0d-a322-6c8864a6210c.png)

## Placement
```
% run_placement
```
![16](https://user-images.githubusercontent.com/62461290/187059712-d8940d40-04f7-4eac-acf6-24ee71c79103.png)<br>

### Placement Reports
Navigate to results->placement and type the Magic command in terminal to open the placement view <br>
```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_freqdiv.def &
```
![19](https://user-images.githubusercontent.com/62461290/187059871-7f4746b1-87ec-40fb-827b-e76df64e3e3d.png)<br>
<br>
Placement View <br>
<br>
![17](https://user-images.githubusercontent.com/62461290/187059887-35c59d00-b959-4983-97f7-f229db63ca4b.png)<br>
<br>
![Screenshot 2022-08-28 112324](https://user-images.githubusercontent.com/62461290/187059896-3cd7613c-abdd-4838-81dc-0291a7a63241.png)<br>
<br>
<b>sky130_vsdinv</b> in the placement view :<br>
<br>
![18](https://user-images.githubusercontent.com/62461290/187059910-27dc9f35-9a5c-4518-8dc5-7c8238747b57.png)<br>
<br>
The sky130_vsdinv should also reflect in your netlist after placement <br>
<br>
![20](https://user-images.githubusercontent.com/62461290/187060017-d9e3eb1b-2cf6-4056-b7e8-4f9afd9daa5b.png)<br>

## Clock Tree Synthesis
```
% run_cts
```
![21](https://user-images.githubusercontent.com/62461290/187060069-447e33ad-952c-4303-92ac-cfbd45dd91b1.png)<br>

## Routing
```
% run_routing
```
![22](https://user-images.githubusercontent.com/62461290/187060096-ad41aab7-6435-45c8-a266-e6ebb955d691.png)<br>

### Routing Reports
Navigate to results->routing and type the Magic command in terminal to open the routing view <br>
```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_freqdiv.def &
```
![23](https://user-images.githubusercontent.com/62461290/187060186-ec8a606b-9f79-4bb4-b0fe-5088fed426bb.png)<br>
<br>
Routing View<br>
<br>
![24](https://user-images.githubusercontent.com/62461290/187060219-d3194c75-d7b6-44c8-b760-19688209ca30.png)<br>
<br>
![25](https://user-images.githubusercontent.com/62461290/187060241-5e1341a4-0293-4957-aded-f30660d226e2.png)<br>
<br>
<b>sky130_vsdinv</b> in the routing view :<br>
<br>
![26](https://user-images.githubusercontent.com/62461290/187060280-5f093b87-366e-4355-a506-aa140022c78a.png)<br>
<br>
Area report by magic :<br>
<br>
![27](https://user-images.githubusercontent.com/62461290/187060331-cb12a7ce-963a-420e-9b38-12f137c11e9c.png)<br>
<br>
The sky130_vsdinv should also reflect in your netlist after routing <br>
<br>
![28](https://user-images.githubusercontent.com/62461290/187060367-db21b544-21b1-4447-9756-bc7aa947d23d.png)<br>

## Viewing Layout in KLayout

![klayou1](https://user-images.githubusercontent.com/62461290/187060556-280c7dc4-0f2f-4c0b-aac3-eec6d542ee06.png) <br>

![klayout2](https://user-images.githubusercontent.com/62461290/187060558-73bbc257-a068-4a11-9cf8-f91d2556b72f.png)<br>

![klayout3](https://user-images.githubusercontent.com/62461290/187060560-52d90a53-e509-4319-ae06-3781c246f384.png)<br>


### NOTE
We can also run the whole flow at once instead of step by step process by giving the following command in openlane container<br>
```
$ ./flow.tcl -design iiitb_freqdiv
```
![100](https://user-images.githubusercontent.com/62461290/186196145-6850e928-d54a-404d-ad30-1fdb124a883b.png)<br>
<br>
All the steps will be automated and all the files will be generated.<br>

we can open the mag file and view the layout after the whole process by the following command, you can follow the path as per the image.<br>

```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech iiitb_freqdiv.mag &
```
<br>

![30](https://user-images.githubusercontent.com/62461290/186206184-3f146947-84d9-4178-9dd2-c54330067168.png)<br>
![31](https://user-images.githubusercontent.com/62461290/186206194-4ea81f2f-ab7f-4d34-840d-7aabff547774.png)<br>
![32](https://user-images.githubusercontent.com/62461290/186206196-526af125-b092-4bfc-9025-33dad27a3e6e.png)<br>

# Results post-layout

### 1. Post Layout synthesis gate count

![image](https://user-images.githubusercontent.com/62461290/192561109-5060bb00-2d5f-41c1-a6b1-f42803c02af1.png) <br>

<b><I> Gate Count = 71 </b></I> <br>

### 2. Area (box command)

![image](https://user-images.githubusercontent.com/62461290/192560025-fbbdb1ea-5964-48fe-81a5-bbf15ee119af.png) <br>

<b><I> Area = 5397.065 um2</b></I> <br>


### 3. Performance

```
$ sta <br>

OpenSTA> read_liberty -max /home/nandu/OpenLane/designs/iiitb_freqdiv/src/sky130_fd_sc_hd__fast.lib <br>

OpenSTA> read_liberty -min /home/nandu/OpenLane/designs/iiitb_freqdiv/src/sky130_fd_sc_hd__slow.lib <br>

OpenSTA> read_verilog /home/nandu/OpenLane/designs/iiitb_freqdiv/runs/RUN_2022.09.27_14.17.25/results/routing/iiitb_freqdiv.resized.v <br>

OpenSTA> link_design iiitb_freqdiv <br>

OpenSTA> read_sdc /home/nandu/OpenLane/designs/iiitb_freqdiv/runs/RUN_2022.09.27_14.17.25/results/cts/iiitb_freqdiv.sdc <br>

OpenSTA> read_spef /home/nandu/OpenLane/designs/iiitb_freqdiv/runs/RUN_2022.09.27_14.17.25/results/routing/iiitb_freqdiv.nom.spef <br>

OpenSTA> set_propagated_clock [all_clocks] <br>

OpenSTA> report_checks <br>
```

![image](https://user-images.githubusercontent.com/62461290/192555217-b263a4e2-cad6-44e3-8682-bb0b70840aa5.png)<br>

![image](https://user-images.githubusercontent.com/62461290/192554957-5c3adff3-850e-4f62-b842-7279bf1ebd6d.png)<br>

<b><I> Performance = 1/(clock period - slack) = 1/(10 - 1.70)ns = 120.482Mhz </b></I><br>

### 4. Flop/standard cell ratio

![image](https://user-images.githubusercontent.com/62461290/192561408-44f38899-38d3-4b34-89f5-1b25cb59a143.png) <br>


<b><I>Flop Ratio = Ratio of total number of flip flops / Total number of cells present in the design = 8/71 = 0.1125 </b></I><br>

### 5. Power (internal, switching, leakage and total)

![image](https://user-images.githubusercontent.com/62461290/192557539-51cbc494-67f6-4a8f-9b39-cd5da92613b5.png) <br>

<b><I> Internal Power = 97.9 uW (74.4%) </b></I><br>
<b><I> Switching Power = 33.7 uW (25.6%) </b></I><br>
<b><I> Leakage Power = 0.459 nW (0.00%) </b></I><br>
<b><I> Total Power = 132 uW (100%) </b></I><br>


# Tapeout : Caravel Flow

Installation screenshot<br>

![install](https://user-images.githubusercontent.com/62461290/189863557-51c9a9f6-9a74-4724-a18d-e66f681fe46e.png)<br>
<br>


We have to edit the `user_pro_example.v` according to our code and edit/add a suitable test bench to verify the design.<br>

```
$ make verify-user_proj_example-rtl
```

![rtltbpassed](https://user-images.githubusercontent.com/62461290/189860847-d078fda3-2cd0-4321-9aa8-9ce64dc6bfb5.png)<br>

![rtl_simulation_passed](https://user-images.githubusercontent.com/62461290/189860729-2fbee431-7c91-4daf-8c62-b001fe898098.png)<br>

```
$ make user_proj_example
```
![make_usr_proj](https://user-images.githubusercontent.com/62461290/189861056-547d6b5d-b3a2-465a-bf58-d85cce7797b6.png)<br>

![flow_comp](https://user-images.githubusercontent.com/62461290/189862072-0b5f53b4-4b54-4f14-ab18-84d7af667a26.png)<br>

Layout view of user_proj_example<br>

![image](https://user-images.githubusercontent.com/62461290/189861367-9e3e518f-400c-4afc-9a99-d38f2cb419d9.png)<br>

![image](https://user-images.githubusercontent.com/62461290/189861579-e83efe47-44be-4eb6-a2e2-5d1020ccf671.png)<br>

```
$ make verify-user_proj_example-gl
```

![gl_sim](https://user-images.githubusercontent.com/62461290/189861837-3370d52b-cb46-4852-b4d8-66e02468897a.png)

```
$ make user_project_wrapper
```
![make_wrapper](https://user-images.githubusercontent.com/62461290/189862235-e111ed9a-2aac-4193-a51c-886dd33a7e10.png)<br>

![flow_complete](https://user-images.githubusercontent.com/62461290/189862258-51be1548-e2f9-40b4-b631-f1f9eb9bff6e.png)<br>

Layout view of user_project_wrapper<br>

![image](https://user-images.githubusercontent.com/62461290/189862491-3945209f-d1d3-4a34-973b-5c0896f7f79d.png)<br>

![image](https://user-images.githubusercontent.com/62461290/189862669-03079397-9d46-451f-a939-5941e174e1b9.png)<br>

```
$ make precheck
```

![make_precheck](https://user-images.githubusercontent.com/62461290/189863143-e55aba4c-c160-4d16-ad0b-73d833438e7b.png)<br>

```
$ make run-precheck
```

![runcheck](https://user-images.githubusercontent.com/62461290/189863250-196c2d09-0058-410d-9f27-5e800d01a818.png)

![precheck_pass](https://user-images.githubusercontent.com/62461290/189863384-6dc85973-2722-4eef-9b45-00134598edad.png)



# Errors and Solutions
## Error 1

If the below error occurs while doing `make mount` replace it with `sudo make mount`<br>
<br>

![error1](https://user-images.githubusercontent.com/62461290/187061092-d76638cb-4fec-4071-b5d2-94c81fd06720.png)

## Error 2

If you face the below error play around with the values of `PL_TARGET_DENSITY`, `FP_CORE_UTIL` and `CLOCK_PERIOD` until it works for your design, these values are very custom for each and every design. <br>
<br>

![image](https://user-images.githubusercontent.com/62461290/187419005-df228345-7811-411d-8f2b-dd16107def0a.png)

## Error 3

Make sure the name of the module is same throughout, otherwise it will not infer the macro.<br>
<br>

![error3](https://user-images.githubusercontent.com/62461290/187060702-e99e2389-6518-4253-961f-4e639cbd1ecd.png)
![error4](https://user-images.githubusercontent.com/62461290/187060706-871d59b7-c212-40fa-b492-382d8ea94c04.png)
![error5](https://user-images.githubusercontent.com/62461290/187060692-91a34f20-d31f-4663-9dd2-ed9231811994.png)<br>

## Error 4

If you are getting the below error please add `"TEST_EXTERNAL_GLOB": "dir::../iiitb_freqdiv/src/*"` to the config.json file.
<br>
<br>

![error6](https://user-images.githubusercontent.com/62461290/187060745-62738ad9-241c-430d-bd5b-321c0d792b3d.png)<br>

## Error 5

If the sky130_vsdinv files are not getting reflected in stat even when the merging was successful and the cell is seen in the merged.nom.lef file. Please use the libraries uploaded in this github page to get the sky130_vsdinv to reflecct in your stat.<br>

`"SYNTH_DRIVING_CELL":"sky130_vsdinv"` please add this to the config.json file while including these libraries. <br>

## Error 6

If you are getting the below error, please check the file name and macro name of `sky130_vsdinv` shoud be same as the once mentioned in  `sky130_fd_sc_hd__fast.lib`, `sky130_fd_sc_hd__slow.lib`, `sky130_fd_sc_hd__typical.lib`<br>
<br>

![WhatsApp Image 2022-08-30 at 4 16 12 PM](https://user-images.githubusercontent.com/62461290/187418027-9c620ff6-c86f-4695-8e65-20ac84898742.jpeg)


## Error 7

If you are getting the below error, please use merged.nom.lef file while opening def files using magic. <br>

```
$ magic -T /home/nandu/OpenLane/pdks/sky130A/libs.tech/magic/sky130A.tech read ../../tmp/merged.nom.lef def read iiitb_freqdiv.def &
```

![error7](https://user-images.githubusercontent.com/62461290/187417649-cbafa63e-a68b-4497-9f59-eee3e6963b2c.png)

## Error 8
If you get the below error, change the `PL_TARGET_DENSITY` to the mentioned value.<br>
<br>
![error](https://user-images.githubusercontent.com/62461290/187060613-a21b3443-92fd-4e1e-8ab5-d17d5b7466d4.png)<br>


# Reference

- http://pgandhi189.blogspot.com/2014/11/universal-frequency-dividor.html ,Verilog code and testbench was taken from here

- https://en.wikipedia.org/wiki/Frequencydivider 

- https://eng.libretexts.org/Bookshelves/ElectricalEngineering/Electronics/Microwave and RF Design IV%3A Modules (Steer)/06%3A Mixer and Source Modules/6.08%3A Frequency Divider,some content and fig.1. was taken from here..

# Author
- Dantu Nandini Devi

# Contributors
- Dantu Nandini Devi </br>
- Vasanthi D R </br>
- Kunal Ghosh </br>
- Nanditha Rao </br>
- Madhav Rao </br>

# Acknowledgement
- Kunal Ghosh, VSD Corp. Pvt. Ltd. </br>
- Nanditha Rao, Professor, IIITB </br>
- Madhav Rao, Professor, IIITB </br>

# Contact Information
- Dantu Nandini Devi, MS by Research Student, IIITB, nandini.dantu@gmail.com </br>
- Vasanthi D R, PhD Student, IIITB, vasanthi.dr@iiitb.ac.in </br>
- Kunal Ghosh, Director, VSD Corp. Pvt. Ltd. kunalghosh@gmail.com </br>
- Nanditha Rao, nanditha.rao@iiitb.ac.in </br>
- Madhav Rao, mr@iiitb.ac.in </br>

