# cxx_prog_env

A C++ programming environment using a Rocky 8-based container

To run this environment, you need to have three things installed locally on your computer:

* Microsoft VSCode
* Docker
* Git

VSCode can be downloaded from https://code.visualstudio.com/download. If you do not have git installed, do the following:
* Mac
  * Open up a terminal and enter the "git" command. If you do not have "git", You will be prompted to install the XCode command line tools (CLT). Go through the install process. When it is finished the "git" command should be available.

To get started, pull down the repository for creating the development environment:

git clone https://github.com/cleester/cxx_prog_env.git

Next, bring up VSCode. After yoou bring up VSCode, you will need to install the following extentions (click the "building blocks" ono the left menu). All of these extensions are from Microsoft:

* Dev Containers

If you do not have a Docker-based application installed, please install Rancher Desktop (https://rancherdesktop.io), selecting your system from their web page.

In VSCode, open the cxx_prog_env folder. You should be prompted to reopen in a container. This will take a little time, as it needs to pull oown the image and create the container (For now, it will also pull down the exercises repo). When the container starts, you will be prompted to scan for the compiler. Have it scan the whole computer.

Next, bring up the Command Palette (see above) and run "CMake: Configure", YOu will be prompted for the compiler to use. Select Clang 19.1.7 for RedHat. When that completes, you should be able to run "CMake: Build", which will build the "exercises" executable in the "build" directory. You can run this executable in the VSCode terminal to see the results. You should run this build anytime you make changes and want to see the results.

To debug the code, do the following steps:
* Set breakpoints in the code by clicking to the left of the line number.
* Click on the debug icon on the left toolbar.
* Click on the green arrow to start the debugger.
* Use the controls that appear to control the debugger. 


