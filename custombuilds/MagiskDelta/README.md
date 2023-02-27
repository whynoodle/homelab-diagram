
# WSABuilds: Custom Build - Magisk Delta &nbsp; &nbsp; <img src="https://img.shields.io/github/downloads/MustardChef/WSABuilds/total?label=Total%20Downloads&style=for-the-badge"/> &nbsp; 
### MagiskOnWSA ([Magisk Delta](https://github.com/HuskyDG/magisk-files)) (For Windows™ 10 and 11) [<img align="right" src="https://invidget.switchblade.xyz/2thee7zzHZ" style="width: 400px;"/>](https://discord.gg/2thee7zzHZ)
#### Windows Subsystem For Android™ (WSA) with Google Play Services and (or) [Magisk Delta](https://github.com/HuskyDG/magisk-files) 

<details>     
   <summary><h4> &nbsp; ⚠️ Forking Information ⚠️<h4></summary>

| :exclamation: **Important:**  &nbsp;  `⚠️DO NOT FORK⚠️`               |
|------------------------------------------------------------------------|
|**This repository is designed specifically not to be forked. MagiskOnWSA and some of the various forks and clones that have sprung up on the platform (***potentially***) violate GitHub's Terms of Service due to abuse of GitHub Actions and have been ultimately warned, disabled or banned.**| 
|**We would like to say one thing: We respect the Terms and Conditions set out by Github to its users. MagiskOnWSA Builds are built using the MagiskOnWSALocal script, patched in the case of Windows 10 Builds and uploaded onto Github and hence do not rely on the use of Github Actions.**|
|**Therefore, don't fork this repository unless you're a developer and want to modify the code itself and/or want to contribute to this Github repository.**|
</details>  

&nbsp;


&nbsp;

## Downloads
<details>     
   <summary><h3> &nbsp; ℹ️Download Disclaimer <h3></summary>
   
> **Warning** 
> ### :exclamation: **Important:**
>  ### Prebuilt Windows Subsystem For Android™ Builds for Windows™ 11 in [Releases](https://github.com/MustardChef/WSABuilds/releases) HAVE NOT been modified in anyway prior and subsequent to running the MagiskOnWSA script and upload to Github. 
> ### Prebuilt Windows Subsystem For Android™ Builds for Windows™ 10 in [Releases](https://github.com/MustardChef/WSABuilds/releases) ONLY have had AppxManifest.xml, icu.dll and WsaPatch.dll patched according to the WSAPatch guide before upload to Github.
> #### The same level of scrutiny should be applied with the Windows Subsystem For Android™ builds as with any other program that you download from the internet
</details> 
<details>     
   <summary><h3> &nbsp; ❓Want to request a custom build❓ <h3></summary>
   
> **Note**
> <br /> To request: <br /> - A newer build <br /> - A build with a different version of GApps (Google Play Services) or Magisk (root) <br /> - A build without Magisk (root) or GApps (Google Play Services) <br /> Feel free to open an issue in the [Issues page](https://github.com/MustardChef/WSABuilds/issues). <br /><br /> Requested (Custom) Builds can be found by pressing the "Custom Build" button below.
</details>

>**Warning** : These Custom Builds are hosted on mega.nz

|****Operating System****|****Download Page****|
|----------|-----------| 
|<img src="https://upload.wikimedia.org/wikipedia/commons/e/e6/Windows_11_logo.svg" style="width: 200px;"/> | [![win11down](https://img.shields.io/badge/Download%20Latest%20Build-Windows%2011-blue?style=for-the-badge&logo=windows11)](https://mega.nz/file/snQk3D5K#fI_UnKWiRvW6zxPwdaVBLnaUHT_Qvm0Im8lB9iLkrdo)|
|<img src="https://upload.wikimedia.org/wikipedia/commons/0/05/Windows_10_Logo.svg" style="width: 200px;"/> | [![win10down](https://img.shields.io/badge/Download%20Latest%20Build-Windows%2010-blue?style=for-the-badge&logo=windows)](https://mega.nz/file/56RXmBLL#9X-iz1PJEmlYp5TuicPwQK3dgA5MQogidkybOMQUx8g)|
| &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <img src="https://img.icons8.com/color/240/null/windows-11.png" style="width: 50px;"/> <img src="https://img.icons8.com/color/240/null/windows-10.png" style="width: 50px;"/>  |[![windownold](https://img.shields.io/badge/Windows%2010%2F11-All%20Builds-red?style=for-the-badge)](https://mega.nz/folder/UiRGxAhJ#6JCAh0R4fag5WTIq5Q33TA)|
||[<img src="https://img.shields.io/badge/Magisk%20Delta-Changelog-FF7920?style=for-the-badge&logoColor=white&logo=github" />](https://github.com/HuskyDG/magisk-files/blob/main/note.md)|

&nbsp;

## Requirements
|     <img src="https://upload.wikimedia.org/wikipedia/commons/e/e6/Windows_11_logo.svg" width=40% height=40%>        |  <img src="https://upload.wikimedia.org/wikipedia/commons/0/05/Windows_10_Logo.svg" width=50% height=50%>     |
|-----------------------|-----------------------|
| - RAM: 6 GB (not recommended), 8 GB (minimum) and 16 GB (recommended).|- RAM: 6 GB (not recommended), 8 GB (minimum) and 16 GB (recommended).|
|- Processor: Your PC should meet the basic Windows™ 11 requirements i.e Core i3 8th Gen, Ryzen 3000, Snapdragon 8c, or above.| - Processor: N/A (This is a bit of a hit or miss)
|- Processor type: x64 or ARM64.| - Processor type: x64 or ARM64.|
|- GPU: Any compatible Intel, AMD or Nvidia GPU <br /> GPU Performance may vary depending on its compatibility with Windows Subsystem For Android™ <br /><br />Nvidia GPUs are known to cause problems. If Windows Subsystem For Android™ does not start or there are graphical glitches when an Nvidia GPU is used, [follow this guide](https://github.com/MustardChef/WSABuilds/blob/master/Guides/ChangingGPU.md) to switch to another iGPU/dGPU/eGPU  that you may have or Microsoft Basic Renderer|- GPU: Any compatible Intel, AMD or Nvidia GPU <br /> GPU Performance may vary depending on its compatibility with Windows Subsystem For Android™ <br /><br />Nvidia GPUs are known to cause problems. If Windows Subsystem For Android™ does not start or there are graphical glitches when an Nvidia GPU is used, [follow this guide](https://github.com/MustardChef/WSABuilds/blob/master/Guides/ChangingGPU.md) to switch to  another iGPU/dGPU/eGPU  that you may have or Microsoft Basic Renderer|
|- Virtual Machine Platform Enabled: <br /> This optional setting is for virtualization and you can enable the setting from Control Panel/ Optional Features.| - Virtual Machine Platform Enabled: <br /> This optional setting is for virtualization and you can enable the setting from Control Panel/ Optional Features.|
|- Storage: Solid-state drive (SSD) <br /> - Hard Disk Drive (HDD) (NOT RECOMMENDED).| - Storage: Solid-state drive (SSD) <br /> - Hard Disk Drive (HDD) (NOT RECOMMENDED).|
| - Partition: NTFS <br /> Windows Subsystem For Android™ can only be installed on a NTFS partition, not on an exFAT partition |- Partition: NTFS <br /> Windows Subsystem For Android™ can only be installed on a NTFS partition, not on an exFAT partition|
|- Windows™ 11: Build 22000.526 or higher.| - Windows™ 10: 22H2 10.0.19045.2311 or higher. <br /> <br /> - May work on Windows™ 10 [21H2 10.0.19044.2311](https://user-images.githubusercontent.com/68516357/210234947-233d9207-6b54-4f70-99b3-2267bb542098.png) <br /> However, MinVersion ---> TargetDeviceFamily node in AppxManifest.xml must be modified before trying|
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