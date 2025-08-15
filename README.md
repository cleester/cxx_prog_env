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

Check and see if you have "git" installed by typing "git --version" in your terminal (Ubuntu terminal for Windows users). If you do not have git installed, do the following:
* Mac
  * Open up a terminal and enter the "git" command. If you do not have "git", You will be prompted to install the XCode command line tools (CLT). Go through the install process. When it is finished the "git" command should be available.
* Windows (Ubuntu) -- git should be availble already in Ubuntu. Run "git --version" in the Ubuntu shell. If it fails, do the following in that shell:
  * sudo apt update
  * sudo apt install git -y
  * git --version

Next, change directory to the desired location in your terminal (Ubuntu terminal for Windows users) and pull down the repository for creating the development environment:

git clone https://github.com/cleester/cxx_prog_env.git

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

Install VSCode if you do not have it already. VSCode can be downloaded from https://code.visualstudio.com/download. Download the appropriate version for your platform.

Next, start VSCode. Click on the extensions icon (the "building blocks" on the left menu) to install the "Remote Development" extension. This extension is from Microsoft.

For Windows only, click on the "Remote Explorer" icon on the left (looks like a monitor). At the combo box next to "Remote Explorer" at the top of the left pane, select "WSL targets". Then, click on the arrow next to Ubuntu. Wait for the server initialization to vomplete before going to the next step.

If you do not see the "Open Folder" button in the left pane, click on the Explorer icon on the left toolbar. Click on the "Open Folder" button and navigate to the cxx_prog_env folder and select it. Click that it is trusted if prompted. You should be prompted to reopen in a container in the bottm-right corner of the VSCode window. Click on the button. This will take a little time, as it needs to pull down the image and create the container. It will also pull down the MockGraphFramework repo.

Next, bring up the Command Palette in VSCode (Ctrl-shift-P (Windows) or Command-shift-P (Mac)) and run "CMake: Configure", You will be prompted for the compiler to use. If you do not see Clang 19.1.7 Redhat, have it scan the whole computer and do the "CMake: Configure" again. Select Clang 19.1.7 for RedHat. When that completes, bring up the Command Palette and run "CMake: Build", which will build the "app" executable in the "build" directory. You can run this executable by selecting "Run" ==> "Run without debugging" in the menu to see the results. You should run "CMake: Build" anytime you make changes and want to see the results.

To debug the code, set breakpoints in the code and select "Run" ==> "Start Debugging" from the menu. Use the controls that appear to control the debugger. 

