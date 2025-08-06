# cxx_prog_env

A C++ programming environment using a Rocky 8-based container

To run this environment, you need to have three things installed locally on your computer:

* Microsoft VSCode
* Docker
* Git

VSCode can be downloaded from https://code.visualstudio.com/download. IF you do not have git installed, (add host-specific options here).

After yoou bring up VSCode, you will need to install the following extentions (click the "building blocks" ono the left menu). All of these extensions are from Microsoft:

* Dev Containers
* Docker

If you do not have Docker app (or equivalent) installed, you can have the Docker extension install it for you by opening the Command Palette (Ctrl-Shift-P (Windoows) or Command-Shift-P (Mac)) and selecting "Dev Containers: Install Docker". Another simple alternative is to install Rancher Desktop (https://rancherdesktop.io)

In VSCode, open the cxx_prog_env folder. You should be prompted to reopen in a container.

Once this setup is complete, clone this repo locally to your system:

git clone git@github.com:cleester/cxx_prog_env.git

