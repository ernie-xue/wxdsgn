; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

[Setup]
AppName=wxDev-cpp
AppVerName=wxDev-cpp
AppPublisher=Guru Kathiresam
AppPublisherURL=http://www.grewordlist.com
AppSupportURL=http://www.grewordlist.com
AppUpdatesURL=http://www.grewordlist.com
DefaultDirName=c:\dev-cpp\
DefaultGroupName=wxDev-cpp
Compression=lzma
SolidCompression=true
InternalCompressLevel=ultra
OutputDir=wxdevcpp-full
DiskSpanning=false
ShowLanguageDialog=yes
UninstallLogMode=overwrite
DiskSliceSize=957664
OutputBaseFilename=wxdevcpp-full-setup

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked

[Files]
Source: C:\dev-cpp\*; DestDir: {app}; Flags: ignoreversion recursesubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: {group}\wxDev-cpp; Filename: {app}\devcpp.exe; WorkingDir: {app}; IconFilename: {app}\devcpp.exe
Name: {group}\{cm:UninstallProgram,wxDev-cpp}; Filename: {uninstallexe}; WorkingDir: {app}
Name: {userdesktop}\wxDev-cpp; Filename: {app}\devcpp.exe; Tasks: desktopicon; WorkingDir: {app}

[Run]
Filename: {app}\devcpp.exe; Description: {cm:LaunchProgram,wxDev-cpp}; Flags: nowait postinstall skipifsilent