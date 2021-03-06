{
    $Id: AboutFrm.pas 763 2006-12-23 02:12:11Z lowjoel $

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

unit AboutFrm;

interface

uses
    Version,
{$IFDEF WIN32}
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    StdCtrls, Buttons, ExtCtrls, XPMenu, ComCtrls, utils;
{$ENDIF}
{$IFDEF LINUX}
  SysUtils, Classes, QGraphics, QControls, QForms, QDialogs,
  QStdCtrls, QButtons, QExtCtrls, utila;
{$ENDIF}

type
    TAboutForm = class(TForm)
        btnOk: TBitBtn;
        btnUpdateCheck: TBitBtn;
        banner: TImage;
        XPMenu: TXPMenu;
        Container: TPageControl;
        Version: TTabSheet;
        wxWebsite: TLabel;
        ForumSite: TLabel;
        wxdevcppWebsite: TLabel;
        wxdevcppWebsiteLabel: TLabel;
        ForumLabel: TLabel;
        wxWebLabel: TLabel;
        License: TTabSheet;
        Authors: TTabSheet;
        LicenseText: TMemo;
        lblAuthors_wxDevCpp: TLabel;
        Label2: TLabel;
        lblAuthors_DevCpp: TLabel;
        Label4: TLabel;
        lblMingW: TLabel;
        Label5: TLabel;
        lblSplash: TLabel;
        Label6: TLabel;
        Label8: TLabel;
        Label9: TLabel;
        lblGnome: TLabel;
        Gnome: TLabel;
        CopyrightLabel: TLabel;
        wxdevcopyright: TLabel;
        BookLabel: TLabel;
        Book: TLabel;
        Label1: TLabel;
        BuildNumber: TLabel;
        procedure LabelClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure btnUpdateCheckClick(Sender: TObject);
    private
        procedure LoadText;
    protected
        procedure CreateParams(var Params: TCreateParams); override;
    end;

implementation
uses
{$IFDEF WIN32}
    ShellAPI, devcfg, MultiLangSupport, main;
{$ENDIF}
{$IFDEF LINUX}
  devcfg, MultiLangSupport, main;
{$ENDIF}

{$R *.dfm}



procedure TAboutForm.LoadText;
begin
    DesktopFont := TRUE;
    XPMenu.Active := devData.XPTheme;
    Caption := 'About wxDev-C++';
    License.Caption := Lang[ID_AB_LICENSE];
    Version.Caption := Lang[ID_AB_VERSCAP];
    btnOk.Caption := Lang[ID_BTN_OK];
    btnUpdateCheck.Caption := Lang[ID_AB_UPDATE];
    Authors.Caption := Lang[ID_BTN_AUTHOR];
    BuildNumber.Caption := GetAppVersion;
end;

procedure TAboutForm.LabelClick(Sender: TObject);
var s: string;
begin
    if pos('@', (Sender as TLabel).Caption) <> 0 then
        s := 'mailto:' + (Sender as TLabel).Caption
    else
        s := (Sender as TLabel).Caption;
    ShellExecute(GetDesktopWindow(), 'open', pchar(s), NIL, NIL, SW_SHOWNORMAL);
end;

procedure TAboutForm.FormCreate(Sender: TObject);
begin
    LoadText;
    wxDevCopyright.Font.Style := [fsBold];
    CopyrightLabel.Font.Style := [fsBold];
    ForumSite.Font.Style := [fsUnderline];
    ForumSite.Font.Color := clBlue;
    wxdevcppWebsite.Font.Style := [fsUnderline];
    wxdevcppWebsite.Font.Color := clBlue;
    wxWebsite.Font.Style := [fsUnderline];
    wxWebsite.Font.Color := clBlue;
    Book.Font.Style := [fsUnderline];
    Book.Font.Color := clBlue;
end;

procedure TAboutForm.btnUpdateCheckClick(Sender: TObject);
begin
    MainForm.actUpdateCheckExecute(sender);
end;

procedure TAboutForm.CreateParams(var Params: TCreateParams);
begin
    inherited;
    if (Parent <> NIL) or (ParentWindow <> 0) then
        Exit;  // must not mess with wndparent if form is embedded

    if Assigned(Owner) and (Owner is TWincontrol) then
        Params.WndParent := TWinControl(Owner).handle
    else
    if Assigned(Screen.Activeform) then
        Params.WndParent := Screen.Activeform.Handle;
end;

end.
