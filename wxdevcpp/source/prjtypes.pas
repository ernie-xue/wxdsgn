{
    This file is part of Dev-C++
    Copyright (c) 2004 Bloodshed Software

    Dev-C++ is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    Dev-C++ is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with Dev-C++; if not, write to the Free Software
    Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
}

unit prjtypes;

interface

uses
{$IFDEF WIN32}
    Classes, editor, ComCtrls, datamod
{$ENDIF}
{$IFDEF LINUX}
  Classes, editor, QComCtrls, datamod
{$ENDIF}
{$IFDEF PLUGIN_BUILD}
    , SysUtils, Contnrs
{$ENDIF}
    ;
const
    dptGUI = 0;
    dptCon = 1;
    dptStat = 2;
    dptDyn = 3;

type
    TProjType = byte;
    TProjTypeSet = set of TProjType;

    TProjVersionInfo = record
        Major: integer;
        Minor: integer;
        Release: integer;
        Build: integer;
        LanguageID: integer;
        CharsetID: integer;
        CompanyName: string;
        FileVersion: string;
        FileDescription: string;
        InternalName: string;
        LegalCopyright: string;
        LegalTrademarks: string;
        OriginalFilename: string;
        ProductName: string;
        ProductVersion: string;
        AutoIncBuildNrOnCompile: boolean;
        AutoIncBuildNrOnRebuild: boolean;
    end;

    TProjProfile = class
    public
        ProfileName: string;
        typ: TProjType;
        compilerType: integer;
        Objfiles: TStringList;
        Compiler: string;
        CppCompiler: string;
        Linker: string;
        Includes: TStringList;
        Libs: TStringList;
        PrivateResource: string; // Dev-C++ will overwrite this file
        ResourceIncludes: TStringList;
        MakeIncludes: TStringList;
        Icon: string;
        ExeOutput: string;
        ImagesOutput: string;
        ObjectOutput: string;
        OverrideOutput: boolean;
        OverridenOutput: string;
        HostApplication: string;
        IncludeVersionInfo: boolean;
        SupportXPThemes: boolean;
        CompilerSet: integer;
        CompilerOptions: string;
        PreprocDefines: string;
        //New Items From Project
        UseCustomMakefile: boolean;
        CustomMakefile: string;

        constructor Create;
        destructor Destroy; override;
        procedure CopyProfileFrom(R1: TProjProfile);
    end;

    TProjectProfileList = class
    private
        fList: TObjectList;
        fVer: integer;
        fuseGpp: boolean;
        function GetCount: integer;
        function GetItem(index: integer): TProjProfile;
        procedure SetItem(index: integer; value: TProjProfile);
    public
        constructor Create;
        destructor Destroy; override;
        procedure CopyDataFrom(ProfileList: TProjectProfileList);
        function Add(aprofile: TProjProfile): integer;
        procedure Remove(index: integer);
        procedure Clear;

        property Items[index: integer]: TProjProfile read GetItem write SetItem;
            default;
        property Count: integer read GetCount;
        property Ver: integer read fVer write fVer;
        property useGpp: boolean read fuseGpp write fuseGpp;
    end;

implementation

uses
    devcfg;

constructor TProjProfile.Create;
begin
    Objfiles := TStringList.Create;
    Includes := TStringList.Create;
    Libs := TStringList.Create;
    ResourceIncludes := TStringList.Create;
    MakeIncludes := TStringList.Create;

    Includes.Delimiter := ';';
    Libs.Delimiter := ';';
    PrivateResource := '';
    ResourceIncludes.Delimiter := ';';
    MakeIncludes.Delimiter := ';';
    ObjFiles.Delimiter := ';';
    Icon := '';
    ExeOutput := '';
    ImagesOutput := 'Images\';
    ObjectOutput := '';
    HostApplication := '';
    SupportXPThemes := FALSE;
    CompilerSet := 0;
    CompilerOptions := devCompiler.OptionStr;
    IncludeVersionInfo := FALSE;

    typ := 0;
    compilerType := ID_COMPILER_MINGW;
    Compiler := '';
    CppCompiler := '';
    Linker := '';
    ObjFiles.DelimitedText := '';
    Includes.DelimitedText := '';
    Libs.DelimitedText := '';
    PrivateResource := '';
    ResourceIncludes.DelimitedText := '';
    MakeIncludes.DelimitedText := '';
    Icon := '';
    OverrideOutput := FALSE;
    OverridenOutput := '';
    HostApplication := '';
    IncludeVersionInfo := FALSE;
    SupportXPThemes := FALSE;
    PreprocDefines := '';
end;

destructor TProjProfile.Destroy;
begin
    Objfiles.Free;
    Includes.Free;
    Libs.Free;
    ResourceIncludes.Free;
    MakeIncludes.Free;
end;

procedure TProjProfile.CopyProfileFrom(R1: TProjProfile);
begin
    ProfileName := R1.ProfileName;
    typ := R1.typ;
    Objfiles.Text := r1.ObjFiles.Text;
    Includes.Text := StringReplace(R1.Includes.Text, '%DEVCPP_DIR%',
        devDirs.Exec, [rfReplaceAll]);
    Libs.Text := StringReplace(R1.Libs.Text, '%DEVCPP_DIR%',
        devDirs.Exec, [rfReplaceAll]);
    PrivateResource := StringReplace(R1.PrivateResource, '%DEVCPP_DIR%',
        devDirs.Exec, [rfReplaceAll]);
    ResourceIncludes.Text :=
        StringReplace(R1.ResourceIncludes.Text, '%DEVCPP_DIR%',
        devDirs.Exec, [rfReplaceAll]);
    MakeIncludes.Text := StringReplace(R1.MakeIncludes.Text, '%DEVCPP_DIR%',
        devDirs.Exec, [rfReplaceAll]);

    Compiler := R1.Compiler;
    CppCompiler := R1.CppCompiler;
    Linker := R1.Linker;
    PreprocDefines := R1.PreprocDefines;
    CompilerOptions := R1.CompilerOptions;

    icon := R1.icon;
    ExeOutput := R1.ExeOutput;
    ImagesOutput := R1.ImagesOutput;
    ObjectOutput := R1.ObjectOutput;
    OverrideOutput := R1.OverrideOutput;
    OverridenOutput := R1.OverridenOutput;
    HostApplication := R1.HostApplication;
    IncludeVersionInfo := R1.IncludeVersionInfo;
    SupportXPThemes := R1.SupportXPThemes;
    CompilerSet := R1.CompilerSet;
    compilerType := R1.compilerType;
    UseCustomMakefile := R1.UseCustomMakefile;
    CustomMakefile := R1.CustomMakefile;
end;

{ TProjectProfileList }
constructor TProjectProfileList.Create;
begin
    inherited Create;
    fList := TObjectList.Create;
end;

destructor TProjectProfileList.Destroy;
var
    idx: integer;
begin
    for idx := pred(fList.Count) downto 0 do
        Remove(0);
    fList.Free;
    inherited;
end;

function TProjectProfileList.Add(aprofile: TProjProfile): integer;
begin
    result := fList.Add(aprofile);
end;

procedure TProjectProfileList.Remove(index: integer);
begin
    fList.Delete(index);
    fList.Pack;
    fList.Capacity := fList.Count;
end;

procedure TProjectProfileList.Clear;
var
    i: integer;
begin
    for i := Count - 1 downto 0 do
        Remove(i);
    // Self[i].Destroy;  EAB Comment: This change merged from JOEL's 1007 revision breaks new project creation. Reverted.
    //fList.Clear;
end;

function TProjectProfileList.GetCount: integer;
begin
    result := fList.Count;
end;

function TProjectProfileList.GetItem(index: integer): TProjProfile;
begin
    result := TProjProfile(fList[index]);
end;

procedure TProjectProfileList.SetItem(index: integer; value: TProjProfile);
begin
    fList[index] := value;
end;

procedure TProjectProfileList.CopyDataFrom(ProfileList: TProjectProfileList);
var
    i: integer;
    NewProfile: TProjProfile;
begin
    self.Clear;

    Ver := ProfileList.ver;
    useGpp := ProfileList.useGpp;
    for i := 0 to ProfileList.Count - 1 do
    begin
        NewProfile := TProjProfile.Create;
        NewProfile.CopyProfileFrom(ProfileList[i]);
        Self.Add(NewProfile);
    end;
end;

end.
