# cxx_prog_env

A C++ programming environment using a Rocky 8-based container

To run this environment, you need to have three things installed locally on your computer:

* Microsoft VSCode
* Some version of Docker application
* Git

If you have a Windows-based system, you will have to have WSL installed. If you do not have it installed, do the following steps:
* Open Powershell in administrator mode
* type: wsl --install Ubuntu
* After this is done, type the following to switch to WSL2: wsl --set-default-version 2

VSCode can be downloaded from https://code.visualstudio.com/download. Download the appropriate version for your platform.

Check and see if you have "git" installed by typing "git --version" in your terminal (Ubuntu terminal for Windows users). If you do not have git installed, do the following:
* Mac
  * Open up a terminal and enter the "git" command. If you do not have "git", You will be prompted to install the XCode command line tools (CLT). Go through the install process. When it is finished the "git" command should be available.
* Windows (Ubuntu) -- git should be availble already in Ubuntu. Run "git --version" in the Ubuntu shell. If it fails, do the following in that shell:
  * sudo apt update
  * sudo apt install git -y
  * git --version

Next, change directory to the desired location in your terminal (Ubuntu terminal for Windows users) and pull down the repository for creating the development environment:

git clone https://github.com/cleester/cxx_prog_env.git

Next, bring up VSCode. After you bring up VSCode, you will need to install the "Remote Development" extension (click the "building blocks" on the left menu). This extension is from Microsoft.

If you do not have a Docker-based application installed, do one of the following:
* Mac
  * please install Rancher Desktop (https://rancherdesktop.io), selecting Mac version for your processor.
* Windows (Ubuntu)
  * Docker should already be installed in Ubuntu. Do the following to verify:
    * sudo usermod -aG docker $USER
    * docker run hello-world
  * If the test fails, do the following:
    * sudo apt update
    * sudo apt install apt-transport-https ca-certificates curl software-properties-common
    * curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
    * echo "deb [arch=\$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    * sudo apt update
    * sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
    * sudo usermod -aG docker $USER 
    * You will need to log out and log back in for this change to take effect. When you log back in, run "docker run hello-world" to test that docker is installed and running correctly.

Mac users, make sure your Docker-based application is started and fully initialized before going to the next step.

Start VSCode.

For Windows, click on the "Remote Explorer" icon on the left (looks like a monitor). At the combo box at the top of the left pane, select "WSL targets". Then, click on the arrow next to Ubuntu. Wait for the server initialization.

Click on the Explorer icon on the left toolbar. Click on the "Open Folder" button and navigate to the cxx_prog_env folder and select it. You should be prompted to reopen in a container. This will take a little time, as it needs to pull down the image and create the container (For now, it will also pull down the exercises repo). When the container starts, you will be prompted to scan for the compiler. Have it scan the whole computer.

Next, bring up the Command Palette in VSCode (Ctrl-shift-P (Windows) or Command-shift-P (Mac)) and run "CMake: Configure", You will be prompted for the compiler to use. Have it scan the whole computer. Run "CMake: Configure" again and Select Clang 19.1.7 for RedHat. When that completes, bring up the Command Palette and run "CMake: Build", which will build the "app" executable in the "build" directory. You can run this executable by selecting "Run" ==> "Run without debugging" in the menu to see the results. You should run "CMake: Build" anytime you make changes and want to see the results.

To debug the code, set breakpoints in the code and select "Run" ==> "Start Debugging" from the menu. Use the controls that appear to control the debugger. 

