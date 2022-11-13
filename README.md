# WSABuilds &nbsp; &nbsp; <img src="https://img.shields.io/github/downloads/MustardChef/WSABuilds/total?label=Total%20Downloads&style=for-the-badge"/> &nbsp; [<img src="https://img.shields.io/badge/XDA%20Developers-WSABuilds-EA7100?style=for-the-badge&logoColor=white&logo=XDA-Developers" />](https://forum.xda-developers.com/t/wsabuilds-latest-windows-subsystem-for-android-wsa-builds-for-windows-10-and-11-with-magisk-and-google-play-store.4545087/)
### MagiskOnWSA (For Windows™ 10 and 11) [<img align="right" src="https://invidget.switchblade.xyz/2thee7zzHZ" style="width: 400px;"/>](https://discord.gg/2thee7zzHZ) 
#### Windows Subsystem For Android™ (WSA) with Google Play Services and (or) Magisk 

<details>     
   <summary><h4> &nbsp; ⚠️ Forking Information ⚠️<h4></summary>

| :exclamation: **Important:**  &nbsp;  `⚠️DO NOT FORK⚠️`               |
|------------------------------------------------------------------------|
|**This repository is designed specifically not to be forked. MagiskOnWSA and some of the various forks and clones that have sprung up on the platform (***potentially***) violate GitHub's Terms of Service due to abuse of GitHub Actions and have been ultimately warned, disabled or banned.**| 
|**We would like to say one thing: We respect the Terms and Conditions set out by Github to its users. MagiskOnWSA Builds are built using the MagiskOnWSALocal script, patched in the case of Windows 10 Builds and uploaded onto Github and hence do not rely on the use of Github Actions.**|
|**Therefore, don't fork this repository unless you're a developer and want to modify the code itself and/or want to contribute to this Github repository.**|
</details>  

&nbsp;

## Downloads
<details>     
   <summary><h3> &nbsp; ℹ️Download Disclaimer <h3></summary>
   
> **Warning** 
> ### :exclamation: **Important:**
>  ### Prebuilt Windows Subsystem For Android™ Builds for Windows™ 11 in [Releases](https://github.com/MustardChef/WSABuilds/releases) HAVE NOT been modified in anyway prior and subsequent to running the MagiskOnWSA script and upload to Github. 
> ### Prebuilt Windows Subsystem For Android™ Builds for Windows™ 10 in [Releases](https://github.com/MustardChef/WSABuilds/releases) ONLY have had AppxManifest.xml, icu.dll and WsaPatch.dll patched according to the WSAPatch guide before upload to Github.

> ### I will move to a more transparent method of building MagiskOnWSA builds soon, due to the overarching concerns with safety, transparancy and build integrity

> #### The same level of scrutiny should be applied with the Windows Subsystem For Android™ builds as with any other program that you download from the internet
</details>
      
 <details>     
   <summary><h3> &nbsp; ❓Want to build your own custom build❓ <h3></summary>
         
| :exclamation: **Important:**  &nbsp;  `⚠️DO NOT FORK⚠️`               |
|------------------------------------------------------------------------|
|**The repository shown in this is designed specifically not to be forked. MagiskOnWSA and some of the various forks and clones that have sprung up on the platform (***potentially***) violate GitHub's Terms of Service due to abuse of GitHub Actions and have been ultimately warned, disabled or banned.**| 
|**Therefore, don't fork this repository unless you're a developer and want to modify the code itself and/or want to contribute to the Github repository.**|
|**If you want to create your Custom Build, please follow the instructions set out clearly, to avoid the repo from being taken down as a result of a misuse of Github Actions due to the large number of forks.**|
      
---
#### **1. Check the version from [Releases](https://github.com/MustardChef/WSABuilds/releases) first. If it does not have the version you want, continue to follow this guide. If it does, then feel free to use those prebuild WSA builds**
      
#### **2. Log into your Github Account (this is necessary) and in the home page, click on the button (shown below) and select "import a repository" or go to [this page directly](https://github.com/new/import)**
   ***Step 1:***
   
   <img src="https://user-images.githubusercontent.com/68516357/221636520-78d0716a-247b-4034-aa9d-bdbe2277950c.png" style="width: 350px;"/>
   
   ***Step 2:***
   
   ![image](https://user-images.githubusercontent.com/68516357/221641202-e3ef4deb-f2dd-46e6-82c8-fb4767f82e99.png)
   
---   
#### **3. [Copy the URL of this Repo](https://github.com/YT-Advanced/WSA-Script) and paste it into the the text box below and press "Import"** 

![image](https://user-images.githubusercontent.com/68516357/221643582-72d71f68-8f53-48d9-a940-692a54d42098.png)

---
#### **4. Go to the **Setting** tab in your newly imported repo and enable "Github Actions"**

![Settings](https://user-images.githubusercontent.com/68516357/222214308-b52b1c6f-a60b-44ef-9ce0-bc335087e3a2.png)
![MRq9WD3SO2](https://user-images.githubusercontent.com/68516357/222215598-30d68ad3-9700-4061-bba4-815b3befcb10.png)

---
#### **5. Then, scroll down until you reach the section titled "Workflow Permission" and follow the steps as shown in the image below**

![image](https://user-images.githubusercontent.com/68516357/224546417-a82249b4-3864-42bd-8a29-32350b8b0c97.png)


---
#### **6. Now, Go to the **Action** tab**

![CvYhP0B0CI](https://user-images.githubusercontent.com/68516357/222221960-f48ab9c3-eb77-4cb0-b932-5cd343381048.png)

    
---
#### **7. In the left sidebar, click the **Custom Build** workflow.**
    
![image](https://user-images.githubusercontent.com/68516357/222221307-8a4571d2-ac3e-410b-b999-0eb62b14d8d5.png)
    
---
#### **8. Above the list of workflow runs, select **Run workflow****
    
![image](https://user-images.githubusercontent.com/68516357/222222850-f991890c-5a80-4cc2-b83d-0ef35c24a79e.png)
    
---
#### **9. Select your desired options such as ***Magisk Version***, ***WSA Release Channel + WSA Archetecture*** , ***GApps Varient*** and ***Compression Format*** then click **Run workflow****
    
![image](https://user-images.githubusercontent.com/68516357/222224185-abcfa0cf-c8c6-46e3-bc38-871c968b86f2.png)
    
---    
#### **10. Wait for the action to complete and download the artifact**

**DO NOT download it via multithread downloaders like IDM**

![image](https://user-images.githubusercontent.com/68516357/222224469-5748b78a-158e-46ff-9f65-317dbb519aac.png)

---
#### **11. Install like normal using the instructions in this repository** and most important of all....

<br/>

### **Enjoy!**
 
<br/>

---    
</details>
      
<details>     
   <summary><h3> &nbsp; ❓Want to request a prebuilt custom build❓ <h3></summary>
   
> **Note**
> <br /> To request: <br /> - A newer build <br /> - A build with a different version of GApps (Google Play Services) or Magisk (root) <br /> - A build without Magisk (root) or GApps (Google Play Services) <br /> Feel free to open an issue in the [Issues page](https://github.com/MustardChef/WSABuilds/issues). <br /><br /> Requested (Custom) Builds can be in the "Custom Builds" section below.
</details>

|****Operating System****|****Download Page****|
|----------|-----------| 
|<img src="https://upload.wikimedia.org/wikipedia/commons/e/e6/Windows_11_logo.svg" style="width: 200px;"/> | [![win11down](https://img.shields.io/badge/Download%20Latest%20Build-Windows%2011%20x64-blue?style=for-the-badge&logo=windows11)](https://github.com/MustardChef/WSABuilds/releases/tag/Windows_11_2301.40000.7.0) <br /> [![win11down](https://img.shields.io/badge/Download%20Latest%20Build-Windows%2011%20arm64-blue?style=for-the-badge&logo=windows11)](https://github.com/MustardChef/WSABuilds/releases/tag/Windows_11_2301.40000.7.0_arm64)|![image](https://user-images.githubusercontent.com/68516357/213565690-f2f3710b-7673-4ac1-b8b4-0c6f58028c6f.png)
|<img src="https://upload.wikimedia.org/wikipedia/commons/0/05/Windows_10_Logo.svg" style="width: 200px;"/> | [![win10down](https://img.shields.io/badge/Download%20Latest%20Build-Windows%2010%20x64-blue?style=for-the-badge&logo=windows)](https://github.com/MustardChef/WSABuilds/releases/tag/Windows_10_2301.40000.7.0)|
| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="https://img.icons8.com/color/240/null/windows-11.png" style="width: 50px;"/> <img src="https://img.icons8.com/color/240/null/windows-10.png" style="width: 50px;"/>  |[![windownold](https://img.shields.io/badge/Windows%2010%2F11-Older%20Builds-red?style=for-the-badge)](https://github.com/MustardChef/WSABuilds/blob/master/OldBuilds.md)|
| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="https://img.icons8.com/color/240/null/windows-11.png" style="width: 50px;"/> <img src="https://img.icons8.com/color/240/null/windows-10.png" style="width: 50px;"/>  | <h4>Custom Builds:<h4> [![windownmagikdelta](https://img.shields.io/badge/Windows%2010%2F11-Magisk%20Delta-382bef?style=for-the-badge)](https://github.com/MustardChef/WSAMagiskDelta)|![image](https://user-images.githubusercontent.com/68516357/213565463-21ebdf11-ef6b-448a-bbda-f8e55fd95374.png)
|<p align="center"><img align="centre;" src="https://user-images.githubusercontent.com/68516357/216452358-8137df76-875f-4b59-b77d-ca34c8a2d6d3.png" style="width: 80px;"/></p>|[<img src="https://img.shields.io/badge/Download-.msix%20Sources-3A6B35?style=for-the-badge&logoColor=white&logo=Github" />](https://github.com/MustardChef/WSAArchives)|

&nbsp;

## Requirements
|     <img src="https://upload.wikimedia.org/wikipedia/commons/e/e6/Windows_11_logo.svg" width=40% height=40%>        |  <img src="https://upload.wikimedia.org/wikipedia/commons/0/05/Windows_10_Logo.svg" width=40% height=40%>     |
|-----------------------|-----------------------|
| - RAM: 6 GB (not recommended), 8 GB (minimum) and 16 GB (recommended).|- RAM: 6 GB (not recommended), 8 GB (minimum) and 16 GB (recommended).|
|- Processor: Your PC should meet the basic Windows™ 11 requirements i.e Core i3 8th Gen, Ryzen 3000, Snapdragon 8c, or above.| - Processor: N/A </br> This is a bit of a hit or miss, but it is highly recommeneded that your processor is listed in the [supported CPU lists for Windows 11 requirements](https://learn.microsoft.com/en-gb/windows-hardware/design/minimum/windows-processor-requirements)
|- Processor type: x64 or ARM64.| - Processor type: x64 or ARM64.|
|- GPU: Any compatible Intel, AMD or Nvidia GPU <br /> GPU Performance may vary depending on its compatibility with Windows Subsystem For Android™  <br /><br /> <details><summary><h3>**Users with Intel HD Graphics 530 and older**<h3><br /></summary> <br /> WSA may not start or graphical glitches will occur when Intel HD Graphics 530 and Older iGPUs are used. This is a known issue, but unfortunately there are no fixes that I currently know, plus, these GPUs are too old and do not meet Windows 11 requirements and hence are not offical supported. [Follow this guide](https://github.com/MustardChef/WSABuilds/blob/master/Guides/ChangingGPU.md) to switch to another iGPU/dGPU/eGPU  that you may have or Microsoft Basic Renderer </details> <br /><details><summary><h3>**Users with Nvidia GPUs**<h3><br /></summary> <br /> Nvidia GPUs are known to cause problems. If Windows Subsystem For Android™ does not start or there are graphical glitches when an Nvidia GPU is used, [follow this guide](https://github.com/MustardChef/WSABuilds/blob/master/Guides/ChangingGPU.md) to switch to another iGPU/dGPU/eGPU  that you may have or Microsoft Basic Renderer </details>|- GPU: Any compatible Intel, AMD or Nvidia GPU <br /> GPU Performance may vary depending on its compatibility with Windows Subsystem For Android™  <br /><br /> <details><summary><h3> **Users with Intel HD Graphics 530 and older** <h3><br /></summary> <br /> WSA may not start or graphical glitches will occur when Intel HD Graphics 530 and Older iGPUs are used. This is a known issue, but unfortunately there are no fixes that I currently know, plus, these GPUs are too old and do not meet Windows 11 requirements and hence are not offical supported. [Follow this guide](https://github.com/MustardChef/WSABuilds/blob/master/Guides/ChangingGPU.md) to switch to another iGPU/dGPU/eGPU  that you may have or Microsoft Basic Renderer </details> <br /><details><summary><h3> **Users with Nvidia GPUs** <h3><br /></summary> <br /> Nvidia GPUs are known to cause problems. If Windows Subsystem For Android™ does not start or there are graphical glitches when an Nvidia GPU is used, [follow this guide](https://github.com/MustardChef/WSABuilds/blob/master/Guides/ChangingGPU.md) to switch to another iGPU/dGPU/eGPU  that you may have or Microsoft Basic Renderer </details>|
|- Virtual Machine Platform Enabled: <br /> This optional setting is for virtualization and you can enable the setting from Control Panel/ Optional Features.| - Virtual Machine Platform Enabled: <br /> This optional setting is for virtualization and you can enable the setting from Control Panel/ Optional Features.|
|- Storage: Solid-state drive (SSD) <br /> - Hard Disk Drive (HDD) (NOT RECOMMENDED).| - Storage: Solid-state drive (SSD) <br /> - Hard Disk Drive (HDD) (NOT RECOMMENDED).|
| - Partition: NTFS <br /> Windows Subsystem For Android™ can only be installed on a NTFS partition, not on an exFAT partition |- Partition: NTFS <br /> Windows Subsystem For Android™ can only be installed on a NTFS partition, not on an exFAT partition|
|- Windows™ 11: Build 22000.526 or higher.| - Windows™ 10: 22H2 10.0.19045.2311 or higher. <br /> <br /> **From WSA version 2301.40000.7.0 and higher in this repo, there is Unofficial support for Windows™ 10: 20H1 10.0.19041.264 or higher** <br /> You must install [KB5014032](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5014032) then install [KB5022282](https://www.catalog.update.microsoft.com/Search.aspx?q=KB5014032) to use WSA <br /> <br /> |
|- The Computer must support virtualization and be enabled in BIOS/UEFI and Optional Features. [Guide](https://support.microsoft.com/en-us/windows/enable-virtualization-on-windows-11-pcs-c5578302-6e43-4b4b-a449-8ced115f58e1)|- The Computer must support virtualization and be enabled in BIOS/UEFI and Optional Features. [Guide](https://support.microsoft.com/en-us/windows/enable-virtualization-on-windows-11-pcs-c5578302-6e43-4b4b-a449-8ced115f58e1)|

&nbsp;

<details>     
   <summary><img style="float: right;" src="https://img.icons8.com/color/96/null/software-installer.png" width="60" height="60"/><h1> &nbsp; Installation<h1></summary>

&nbsp;

> **Note** : 
> If you have the official Windows Subsystem For Android™ installed, you must [completely uninstall](#uninstallation) it to use MagiskOnWSA. 

> In case you want to preserve your data from the previous installation (official or MagiskOnWSA), you can backup %LOCALAPPDATA%\Packages\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\LocalCache\userdata.vhdx before uninstallation and restore it after installation.

1. Go to the [Releases page](https://github.com/MustardChef/WSABuilds/releases/latest)
2. In the latest release, go to the Assets section and download the Windows Subsystem For Android™ version of your choosing (do not download "Source code")
3. Extract the zip file
4. Delete the zip file
5. Move the newly extracted folder to a suitable location (Documents folder is a good choice), as you will need to keep the folder on your PC to use MagiskOnWSA

> **Note** :  
> If you're updating WSA, merge the folders and replace the files for all items when asked

6. Open the Windows Subsystem For Android™ folder: Search for and double-click `Run.bat`
   - If you previously have a MagiskOnWSA installation, it will automatically uninstall the previous one while preserving all user data and install the new one, so don't worry about your data.
   - If the popup windows disappear without asking administrative permission and Windows Subsystem For Android™ is not installed successfully, you should manually run Install.ps1 as administrator:
      
      - Press Win+x and select Windows™ Terminal (Admin)
      
      - Input the command below and press enter, replacing {X:\path\to\your\extracted\folder} including the {} with the path of the extracted folder
        ```Powershell
        cd "{X:\path\to\your\extracted\folder}"
        ```  
        
      - Input the command below and press enter   
        ```Powershell
        PowerShell.exe -ExecutionPolicy Bypass -File .\Install.ps1
        ```
        
      - The script will run and Windows Subsystem For Android™ will be installed
      - If this workaround does not work, your PC is not supported for WSA
      
7. Once the installation process completes, Windows Subsystem For Android™ will launch (if this is a first-time install, a window asking for consent to diagnositic information will be shown instead. Sometimes two identical windows will show, this is fine and nothing bad happens if you click OK in both windows)
8. Click on the PowerShell window, then press any key on the keyboard, the PowerShell window should close
9. Close File Explorer
10. **Enjoy**

&nbsp;

### Notice (Applicable for both Windows 10 and 11):

1. You can NOT delete the Windows Subsystem For Android™ installation folder.
   What `Add-AppxPackage -Register .\AppxManifest.xml` does is to register an appx package with some existing unpackaged files,
   so you need to keep them as long as you want to use Windows Subsystem For Android™. 
   Check https://learn.microsoft.com/en-us/powershell/module/appx/add-appxpackage?view=windowsserver2022-ps for more details.
2. You need to register your Windows Subsystem For Android™ appx package before you can run Windows Subsystem For Android™. 
   For [WSABuilds](https://github.com/MustardChef/WSABuilds) and [MagiskOnWSALocal](https://github.com/LSPosed/MagiskOnWSALocal) users, you need to run `Run.bat` in the extracted dir.
   If the script fails, you can take the following steps for diagnosis (admin privilege required):
    1. Open a PowerShell window and change working directory to your Windows Subsystem For Android™ directory.
    
    2. Run the command below in PowerShell. This should fail with an ActivityID, which is a UUID required for the next step.
       ```Powershell
       Add-AppxPackage -ForceApplicationShutdown -ForceUpdateFromAnyVersion -Register .\AppxManifest.xml
       ```
       
    3. Run the command below in PowerShell. This should print the log of the failed operation.
       ```Powershell
       Get-AppPackageLog -ActivityID <UUID>
       ```
    4. Check the log for the reason of failure and fix it.

</details> 

&nbsp;


<details>     
   <summary><img style="float: right;" src="https://img.icons8.com/external-flaticons-flat-flat-icons/64/null/external-updating-tools-and-material-ecommerce-flaticons-flat-flat-icons.png" width="60" height="60"/><h1> &nbsp; Updating<h1></summary>

### How do I update without losing any of my apps and data on Windows Subsystem for Android (WSA)

1. [Download the latest build](https://github.com/MustardChef/WSABuilds#downloads) (that you want to update to)
2. Make sure Windows Subsystem For Android is not running (Click on "Turn off" in the WSA Settings and wait for the spinning loader to disappear)
2. Using 7-Zip, WinRAR or any other tool of choice, open the .zip file 
3. Within the .zip archive open the subfolder (Example: WSA_2xxx.xxxxx.xx.x_xx_Release-Nightly-with-magisk-xxxxxxx-MindTheGapps-xx.x-RemovedAmazon)
4. Select all the files that are within this subfolder and extract them to the current folder where the file for Windows Subsystem For Android are (the folder you extracted, and installed WSA from)
5. When prompted to replace folders, select "Do this for all current items" and click on "Yes" 
6. When prompted to replace files, click on "Replace the files in the destination"
7. Run  the ``Run.bat`` file
8. Launch Windows Subsystem For Android Settings app and go to the ``About`` tab using the sidebar
9. Check if the WSA version matches the latest version/ the version number that you want to update to

**Join the Discord if you are having any difficulties**


</details>   

&nbsp;

<details>     
   <summary><img style="float: right;" src="https://img.icons8.com/color/96/null/uninstall-programs.png" width="60" height="60"/><h1> &nbsp; Uninstallation<h1></summary>

&nbsp;

### New CLI and GUI Uninstall Tool Coming Soon! Join the Discord for announcements and updates.

> **Note**: 
> 
> If you want to preseve your data, make a backup of the `%LOCALAPPDATA%\Packages\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\LocalCache\userdata.vhdx` file. After uninstalling, copy the VHDX file back to the `%LOCALAPPDATA%\Package\MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe\LocalCache` folder.

- To remove WSA installed through WSABuild:

   - **1.)** Make sure that Windows Subsystem For Android™ is not running
   - **2.)** Search for ``Windows Subsystem For Android™ Settings`` using the built-in Windows Search, or through Add and Remove Programs and press uninstall
   - **3.)** Delete the WSA folder that extracted you extracted and Run.bat was run from to install WSA (MagiskOnWSA folder)
   - **4.)** Go to ``%LOCALAPPDATA%/Packages/`` and delete the folder named ``MicrosoftCorporationII.WindowsSubsystemForAndroid_8wekyb3d8bbwe``
            
      - If you get an error that states that the file(s) could not be deleted, make sure that WSA is turned off
     
- To remove WSA installed from the Microsoft Store: 
        
   - **1.)** Search for ``Windows Subsystem For Android™ Settings`` using the built-in Windows Search, or through Add and Remove Programs and press uninstall

</details>

&nbsp;

<details>     
   <summary><img style="float: right;" src="https://img.icons8.com/3d-fluency/94/null/help.png" width="60" height="60"/><h1> &nbsp; FAQ<h1></summary>

&nbsp;
**Help me, I am having 