# cxx_prog_env

A C++ programming environment using a Rocky 8-based container

To run this environment, you need to have three things installed locally on your computer:

* Microsoft VSCode
* Some version of Docker application
* Git

If you have a Windows-based system, you will have to have WSL installed. If you do not have it installed, do the following steps:
* Open Powershell in administrator mode
* type: wsl --install
This should install WSL and install Ubuntu Linux

VSCode can be downloaded from https://code.visualstudio.com/download. If you are running the Ubuntu on Windows, download the x64 version of the .deb file. To install it, do the following steps:
* Open a terminal
* Change to the directory containing the .deb file
* type: sudo dpkg -i <filename>.deb, where <filename> is the name of the downloaded file.
* If there are dependency problems, run "sudo apt install -f" to resolve them.

Check and see if you have "git" installed by typing "git --version" in your terminal. If you do not have git installed, do the following:
* Mac
  * Open up a terminal and enter the "git" command. If you do not have "git", You will be prompted to install the XCode command line tools (CLT). Go through the install process. When it is finished the "git" command should be available.
* Windows (Ubuntu)
  * sudo apt update
  * sudo apt install git -y
  * git --version

Next, change directory to the desired location in your terminal and pull down the repository for creating the development environment:

git clone https://github.com/cleester/cxx_prog_env.git

Next, bring up VSCode. After yoou bring up VSCode, you will need to install the "dev containers" extention (click the "building blocks" ono the left menu). This extension is from Microsoft.

If you do not have a Docker-based application installed, do one of the following:
* Mac
  * please install Rancher Desktop (https://rancherdesktop.io), selecting Mac version for your processor.
* Windows (Ubuntu)
  * sudo apt update
  * sudo apt install apt-transport-https ca-certificates curl software-properties-common
  * curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
  * echo "deb [arch=\$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  * sudo apt update
  * sudo apt install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
  * sudo usermod -aG docker $USER 
  * You will need to log out and log back in for this change to take effect. When you log back in, run "docker run hello-world" to test that docker is installed and running correctly.

Make sure your Docker-based application is started and fully initialized before going to the next step.

In VSCode, open the cxx_prog_env folder. You should be prompted to reopen in a container. This will take a little time, as it needs to pull down the image and create the container (For now, it will also pull down the exercises repo). When the container starts, you will be prompted to scan for the compiler. Have it scan the whole computer.

Next, bring up the Command Palette (see above) and run "CMake: Configure", YOu will be prompted for the compiler to use. Select Clang 19.1.7 for RedHat. When that completes, you should be able to run "CMake: Build", which will build the "exercises" executable in the "build" directory. You can run this executable in the VSCode terminal to see the results. You should run this build anytime you make changes and want to see the results.

To debug the code, do the following steps:
* Set breakpoints in the code by clicking to the left of the line number.
* Click on the debug icon on the left toolbar.
* Click on the green arrow to start the debugger.
* Use the controls that appear to control the debugger. 

