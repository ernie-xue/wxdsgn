// $Id: WxPopupMenu.pas 936 2007-05-15 03:47:39Z gururamnath $
{                                                                    }
{   Copyright � 2003-2007 by Guru Kathiresan                         }
{                                                                    }
{License :                                                           }
{=========                                                           }
{The wx-devC++ Components, Form Designer, Utils classes              }
{are exclusive properties of Guru Kathiresan.                        }
{The code is available in dual Licenses:                             }
{                               1)GPL Compatible  License            }
{                               2)Commercial License                 }
{                                                                    }
{1)GPL License :                                                     }
{ Code can be used in any project as long as the project's sourcecode}
{ is published under GPL license.                                    }
{                                                                    }
{2)Commercial License:                                               }
{Use of code in this file or the one that bear this license text     }
{can be used in Non-GPL projects as long as you get the permission   }
{from the Author - Guru Kathiresan.                                  }
{Use of the Code in any non-gpl projects without the permission of   }
{the author is illegal.                                              }
{Contact gururamnath@yahoo.com for details                           }
{ ****************************************************************** }


Unit WxPopupMenu;

Interface

Uses
    Windows, Controls, Messages, SysUtils, Classes, WxNonVisibleBaseComponent,
    Wxutils, WxSizerPanel, Menus, WxCustomMenuItem, StrUtils, dialogs,
    Graphics;

Type
    TWxPopupMenu = Class(TWxNonVisibleBaseComponent, IWxComponentInterface, IWxMenuBarInterface)
    Private
    { Private declarations }
        FWx_Class: String;
        FWx_Caption: String;
        FWx_PropertyList: TStringList;
        FWx_MenuItems: TWxCustomMenuItem;
        FWx_Comments: TStrings;

        Procedure AutoInitialize;
        Procedure AutoDestroy;
    Protected
    { Protected declarations }
    Public
    { Public declarations }
        Constructor Create(AOwner: TComponent); Override;
        Destructor Destroy; Override;
        Function GenerateControlIDs: String;
        Function GenerateEnumControlIDs: String;
        Function GenerateEventTableEntries(CurrClassName: String): String;
        Function GenerateGUIControlCreation: String;
        Function GenerateXRCControlCreation(IndentString: String): TStringList;
        Function GenerateGUIControlDeclaration: String;
        Function GetMenuItemCode: String;
        Function GetCodeForOneMenuItem(parentName: String; item: TWxCustomMenuItem): String;
        Function GenerateHeaderInclude: String;
        Function GenerateImageInclude: String;
        Function GenerateImageList(Var strLst: TStringList; Var imgLst: TImageList; Var strNameLst: TStringList): Boolean;
        Function GetEventList: TStringList;
        Function GetIDName: String;
        Function GetIDValue: Integer;
        Function GetParameterFromEventName(EventName: String): String;
        Function GetPropertyList: TStringList;
        Function GetTypeFromEventName(EventName: String): String;
        Function GetWxClassName: String;
        Procedure SaveControlOrientation(ControlOrientation: TWxControlOrientation);
        Procedure SetIDName(IDName: String);
        Function GetMaxID: Integer;
        Procedure SetIDValue(IDValue: Integer);
        Procedure SetWxClassName(wxClassName: String);
        Function GetFGColor: String;
        Procedure SetFGColor(strValue: String);
        Function GetBGColor: String;
        Procedure SetBGColor(strValue: String);

        Function GetGenericColor(strVariableName: String): String;
        Procedure SetGenericColor(strVariableName, strValue: String);

        Procedure SetProxyFGColorString(Value: String);
        Procedure SetProxyBGColorString(Value: String);

        Function GetBorderAlignment: TWxBorderAlignment;
        Procedure SetBorderAlignment(border: TWxBorderAlignment);
        Function GetBorderWidth: Integer;
        Procedure SetBorderWidth(width: Integer);
        Function GetStretchFactor: Integer;
        Procedure SetStretchFactor(intValue: Integer);
        Function GenerateXPM(strFileName: String): Boolean;

    Published
    { Published declarations }
        Property Wx_Class: String Read FWx_Class Write FWx_Class;
        Property Wx_Caption: String Read FWx_Caption Write FWx_Caption;
        Property Wx_MenuItems: TWxCustomMenuItem Read FWx_MenuItems Write FWx_MenuItems;
        Property Wx_Comments: TStrings Read FWx_Comments Write FWx_Comments;

    End;

Procedure Register;

Implementation

Procedure Register;
Begin
    RegisterComponents('wxWidgets', [TWxPopupMenu]);
End;

Procedure TWxPopupMenu.AutoInitialize;
Begin
    FWx_PropertyList := TStringList.Create;
    FWx_Class := 'wxMenu';
    FWx_MenuItems := TWxCustomMenuItem.Create(self.Parent);
    FWx_Comments := TStringList.Create;

    Glyph.Handle := LoadBitmap(hInstance, 'TWxPopupMenu');
End; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
Procedure TWxPopupMenu.AutoDestroy;
Begin
    FWx_PropertyList.Destroy;
    FWx_MenuItems.Destroy;
    FWx_Comments.Destroy;
    Glyph.Assign(Nil);
End; { of AutoDestroy }

Constructor TWxPopupMenu.Create(AOwner: TComponent);
Begin
  { Call the Create method of the container's parent class       }
    Inherited Create(AOwner);
  { AutoInitialize method is generated by Component Create.      }
    AutoInitialize;
  { Code to perform other tasks when the component is created }
    FWx_PropertyList.add('wx_Class:Base Class');
    FWx_PropertyList.add('Wx_Caption:Caption');
    FWx_PropertyList.add('Name:Name');
    FWx_PropertyList.add('Wx_MenuItems:Menu Items');
    FWx_PropertyList.add('Wx_Comments:Comments');
End;

Destructor TWxPopupMenu.Destroy;
Begin
  { AutoDestroy, which is generated by Component Create, frees any   }
  { objects created by AutoInitialize.                               }
    AutoDestroy;
    Inherited Destroy;
End;

Function TWxPopupMenu.GenerateEnumControlIDs: String;
Var
    I: Integer;
    strF: String;
    strLst: TStringList;

    Procedure GetEnumControlIDFromSubMenu(idstrList: TStringList;
        submnu: TWxCustomMenuItem);
    Var
        J: Integer;
        strData: String;
    Begin
        For J := 0 To submnu.Count - 1 Do    // Iterate
        Begin
            If Not AnsiStartsStr('wxID', submnu.Items[J].Wx_IDName) Then
            Begin
                strData := submnu.Items[J].Wx_IDName;

        //Do we want to specify an ID?
                If (UseIndividEnums) Then
                    If submnu.Items[J].wx_IDValue <> -1 Then
                        strData := strData + ' = ' + IntToStr(submnu.Items[J].wx_IDValue);

        //Add the string
                idstrList.add(strData + ',');
            End;

      //Sub-sub menus
            If submnu.items[J].Count > 0 Then
                GetEnumControlIDFromSubMenu(idstrList, submnu.items[J]);
        End;
    End;

Begin
    Result := '';
    strLst := TStringList.Create;

    For I := 0 To Wx_MenuItems.Count - 1 Do    // Iterate
    Begin
        If Not AnsiStartsStr('wxID', Wx_MenuItems.Items[i].Wx_IDName) Then
        Begin
            strF := Wx_MenuItems.Items[i].Wx_IDName;

      //Do we want to specify an ID?
            If (UseIndividEnums) Then
                If Wx_MenuItems.Items[i].wx_IDValue <> -1 Then
                    strF := strF + ' = ' + IntToStr(Wx_MenuItems.Items[i].wx_IDValue);

      //Do we add?
            If trim(strF) <> '' Then
                strLst.add(strF + ',');
        End;

    //Add the subitems
        If Wx_MenuItems.items[i].Count > 0 Then
            GetEnumControlIDFromSubMenu(strLst, Wx_MenuItems.items[i]);
    End;
    Result := strLst.Text;
    strLst.Destroy;

End;

Function TWxPopupMenu.GenerateControlIDs: String;
Var
    I: Integer;
    strF: String;
    strLst: TStringList;

    Procedure GetControlIDFromSubMenu(idstrList: TStringList; submnu: TWxCustomMenuItem);
    Var
        J: Integer;
        strData: String;
    Begin
        For J := 0 To submnu.Count - 1 Do    // Iterate
        Begin
            strData := '#define ' + submnu.Items[J].Wx_IDName + ' ' + IntToStr(
                submnu.Items[J].wx_IDValue) + ' ';
            idstrList.add(strData);

            If submnu.items[J].Count > 0 Then
                GetControlIDFromSubMenu(idstrList, submnu.items[J]);
        End;    // for
    End;

Begin

    Result := '';
    strLst := TStringList.Create;

    For I := 0 To Wx_MenuItems.Count - 1 Do    // Iterate
    Begin
        strF := '#define ' + Wx_MenuItems.Items[i].Wx_IDName + '  ' + IntToStr(
            Wx_MenuItems.Items[i].wx_IDValue) + ' ';
        If trim(strF) <> '' Then
            strLst.add(strF);

        If Wx_MenuItems.items[i].Count > 0 Then
            GetControlIDFromSubMenu(strLst, Wx_MenuItems.items[i]);
    End;    // for
    Result := strLst.Text;
    strLst.Destroy;

End;

Function TWxPopupMenu.GenerateEventTableEntries(CurrClassName: String): String;
Var
    I: Integer;
    strLst: TStringList;

    Procedure GenerateEventTableEntriesFromSubMenu(idstrList: TStringList;
        submnu: TWxCustomMenuItem);
    Var
        J: Integer;
    Begin
        For J := 0 To submnu.Count - 1 Do    // Iterate
            If submnu.items[J].Count > 0 Then
                GenerateEventTableEntriesFromSubMenu(idstrList, submnu.items[J])
            Else
            Begin
                If trim(submnu.Items[j].EVT_Menu) <> '' Then
                    strLst.add('EVT_MENU(' + submnu.Items[j].Wx_IDName +
                        ' , ' + CurrClassName + '::' + submnu.Items[j].EVT_Menu + ')');

                If trim(submnu.Items[j].EVT_UPDATE_UI) <> '' Then
                    strLst.add('EVT_UPDATE_UI(' + submnu.Items[j].Wx_IDName +
                        ' , ' + CurrClassName + '::' + submnu.Items[j].EVT_UPDATE_UI + ')');
            End;    // for
    End;

Begin

    Result := '';
    strLst := TStringList.Create;

    For I := 0 To Wx_MenuItems.Count - 1 Do    // Iterate
        If Wx_MenuItems.items[i].Count > 0 Then
            GenerateEventTableEntriesFromSubMenu(strLst, Wx_MenuItems.items[i])
        Else
        Begin
            If trim(Wx_MenuItems.Items[i].EVT_Menu) <> '' Then
                strLst.add('EVT_MENU(' + Wx_MenuItems.Items[i].Wx_IDName +
                    ' , ' + CurrClassName + '::' + Wx_MenuItems.Items[i].EVT_Menu + ')');

            If trim(Wx_MenuItems.Items[i].EVT_UPDATE_UI) <> '' Then
                strLst.add('EVT_UPDATE_UI(' + Wx_MenuItems.Items[i].Wx_IDName +
                    ' , ' + CurrClassName + '::' + Wx_MenuItems.Items[i].EVT_UPDATE_UI + ')');

        End;    // for
    Result := strLst.Text;
    strLst.Destroy;
End;

Function TWxPopupMenu.GenerateXRCControlCreation(IndentString: String): TStringList;
Begin

    Result := TStringList.Create;

    Try
        Result.Add(IndentString + Format('<object class="%s" name="%s">',
            [self.Wx_Class, self.Name]));
        Result.Add(IndentString + '</object>');
    Except
        Result.Free;
        Raise;
    End;

End;

Function TWxPopupMenu.GenerateGUIControlCreation: String;
Begin
    Result := GetCommentString(self.FWx_Comments.Text) +
        Format('%s = new %s(%s);', [self.Name, self.Wx_Class, GetCppString(Wx_Caption)]);
    Result := Result + #13 + #10 + GetMenuItemCode;
End;

Function TWxPopupMenu.GetCodeForOneMenuItem(parentName: String;
    item: TWxCustomMenuItem): String;
Begin
    Result := '';
    If item.Count < 1 Then
        If item.Wx_MenuItemStyle = wxMnuItm_Separator Then
            Result := parentName + '->AppendSeparator();'
        Else
        Begin
            If item.WX_BITMAP.Bitmap.Handle <> 0 Then
            Begin
                Result := ' wxMenuItem * ' + item.Wx_IDName +
                    '_mnuItem_obj = new wxMenuItem (' + Format('%s, %s, %s, %s, %s',
                    [parentName, item.Wx_IDName, GetCppString(item.Wx_Caption), GetCppString(
                    item.Wx_HelpText), GetMenuKindAsText(item.Wx_MenuItemStyle)]) + ');';
                Result := Result + #13 + #10 + 'wxBitmap ' + item.Wx_IDName +
                    '_mnuItem_obj_BMP(' +
                    item.Wx_IDName + '_XPM);';
                Result := Result + #13 + #10 + item.Wx_IDName + '_mnuItem_obj->SetBitmap(' +
                    item.Wx_IDName + '_mnuItem_obj_BMP);';
                Result := Result + #13 + #10 + parentName + '->Append(' +
                    item.Wx_IDName + '_mnuItem_obj);';
            End
            Else
                Result := parentName + '->Append(' +
                    Format('%s, %s, %s, %s', [item.Wx_IDName, GetCppString(item.Wx_Caption),
                    GetCppString(item.Wx_HelpText),
                    GetMenuKindAsText(item.Wx_MenuItemStyle)]) + ');';

            If ((item.Wx_MenuItemStyle = wxMnuItm_Radio) Or (item.Wx_MenuItemStyle = wxMnuItm_Check)) Then
            Begin
                If item.Wx_Checked Then
                    Result := Result + #13 + #10 + parentName + '->Check(' + item.Wx_IDName + ',true);'
                Else
                    Result := Result + #13 + #10 + parentName + '->Check(' + item.Wx_IDName + ',false);';
            End;

            If Not item.Wx_Enabled Then
                Result := Result + #13 + #10 + parentName + '->Enable(' +
                    item.Wx_IDName + ',false);';
        End;
End;

Function TWxPopupMenu.GetMenuItemCode: String;
Var
    I: Integer;
    strF: String;
    strLst: TStringList;

    Procedure GetCodeFromSubMenu(submnustrlst: TStringList; submnu: TWxCustomMenuItem);
    Var
        J: Integer;
        parentItemName, strV: String;
    Begin
        strV := 'wxMenu *' + submnu.wx_IDName + '_Obj = new wxMenu();';
        parentItemName := submnu.wx_IDName + '_Obj';
        submnustrlst.add(strV);

        For J := 0 To submnu.Count - 1 Do    // Iterate
            If submnu.items[J].Count > 0 Then
            Begin
                submnustrlst.Add('');
                GetCodeFromSubMenu(submnustrlst, submnu.items[J]);
                strV := parentItemName + '->Append(' + format(
                    '%s, %s, %s', [submnu.items[J].Wx_IDNAME,
                    GetCppString(submnu.items[J].Wx_Caption),
                    submnu.items[J].Wx_IDName + '_Obj']) + ');';
                strLst.add(strV);
            End
            Else
            Begin
                strV := GetCodeForOneMenuItem(parentItemName, submnu.items[J]);
                If trim(strV) <> '' Then
                Begin
                    strLst.add(strV);
                End;
            End;    // for
    End;

Begin
    strLst := TStringList.Create;
    For I := 0 To Wx_MenuItems.Count - 1 Do    // Iterate
        If Wx_MenuItems.items[i].Count > 0 Then
        Begin
            GetCodeFromSubMenu(strLst, Wx_MenuItems.items[i]);
            strLst.add(self.Name + '->Append(' + Wx_MenuItems.items[i].Wx_IDName +
                ', ' + GetCppString(Wx_MenuItems.items[i].Wx_Caption) + ', ' +
                Wx_MenuItems.items[i].Wx_IDName + '_Obj' + ');');
        End
        Else
        Begin
            strF := GetCodeForOneMenuItem(self.Name, Wx_MenuItems.Items[i]);
            If trim(strF) <> '' Then
            Begin
                strLst.add(strF);
            End;
        End;    // for

  //Send the result back
    Result := trim(strLst.Text); //remove the trailing newline
    strLst.Destroy;
End;

Function TWxPopupMenu.GenerateGUIControlDeclaration: String;
Begin
    Result := '';
    Result := Format('%s *%s;', [trim(Self.Wx_Class), trim(Self.Name)]);
End;

Function TWxPopupMenu.GenerateHeaderInclude: String;
Begin
    Result := '';
    Result := '#include <wx/menu.h>';
End;


Function TWxPopupMenu.GenerateImageInclude: String;
Var
    strLst, strNameList: TStringList;
    imgLst: TImageList;
    i: Integer;
Begin
    Result := '';
    strLst := TStringList.Create;
    strNameList := TStringList.Create;
    imgLst := TImageList.Create(Nil);
    GenerateImageList(strLst, imgLst, strNameList);

    For i := 0 To strLst.Count - 1 Do
    Begin
        strLst[i] := '#include "' + strLst[i] + '"';
    End;

    Result := strLst.Text;
    strLst.destroy;
    strNameList.destroy;
    imgLst.destroy;
End;

Function TWxPopupMenu.GenerateImageList(Var strLst: TStringList; Var imgLst: TImageList; Var strNameLst: TStringList): Boolean;
Var
    I: Integer;
    strF: String;
    Procedure GetImageIncludeFromSubMenu(idstrList: TStringList; imgLstX: TImageList; strNameLstX: TStringList;
        submnu: TWxCustomMenuItem);
    Var
        J: Integer;
        strData: String;
    Begin
        For J := 0 To submnu.Count - 1 Do    // Iterate
        Begin
            If submnu.Items[J].WX_BITMAP.Bitmap.Handle <> 0 Then
                strData := 'Images/' + GetDesignerFormName(self) + '_' + submnu.Items[J].Wx_IDName + '_XPM.xpm'
            Else
                strData := '';
            If strData <> '' Then
            Begin
                idstrList.add(strData);
                strNameLstX.Add(submnu.Items[J].Wx_IDName);
                imgLstX.Add(submnu.Items[J].WX_BITMAP.Bitmap, Nil);
            End;

            If submnu.items[J].Count > 0 Then
                GetImageIncludeFromSubMenu(idstrList, imgLstX, strNameLstX, submnu.items[J]);
        End;    // for
    End;

Begin

    Result := True;

    For I := 0 To Wx_MenuItems.Count - 1 Do    // Iterate
    Begin
        If Wx_MenuItems.Items[i].wx_Bitmap.Bitmap.Handle <> 0 Then
            strF := 'Images/' + GetDesignerFormName(self) + '_' + Wx_MenuItems.Items[i].Wx_IDName + '_XPM.xpm'
        Else
            strF := '';
        If trim(strF) <> '' Then
        Begin
            strLst.add(strF);
            imgLst.Add(Wx_MenuItems.Items[i].wx_Bitmap.Bitmap, Nil);
            strNameLst.Add(Wx_MenuItems.Items[i].Wx_IDName);
        End;

        If Wx_MenuItems.items[i].Count > 0 Then
            GetImageIncludeFromSubMenu(strLst, imgLst, strNameLst, Wx_MenuItems.items[i]);
    End;    // for

End;

Function TWxPopupMenu.GetEventList: TStringList;
Begin
    Result := Nil;
End;

Function TWxPopupMenu.GetIDName: String;
Begin
    Result := '';
End;

Function TWxPopupMenu.GetIDValue: Integer;
Begin
    Result := GetMaxID;
End;

Function TWxPopupMenu.GetParameterFromEventName(EventName: String): String;
Begin

End;

Function TWxPopupMenu.GetStretchFactor: Integer;
Begin
    Result := 1;
End;

Function TWxPopupMenu.GetPropertyList: TStringList;
Begin
    Result := FWx_PropertyList;
End;

Function TWxPopupMenu.GetTypeFromEventName(EventName: String): String;
Begin

End;

Function TWxPopupMenu.GetBorderAlignment: TWxBorderAlignment;
Begin
    Result := [];
End;

Procedure TWxPopupMenu.SetBorderAlignment(border: TWxBorderAlignment);
Begin
End;

Function TWxPopupMenu.GetBorderWidth: Integer;
Begin
    Result := 0;
End;

Procedure TWxPopupMenu.SetBorderWidth(width: Integer);
Begin
End;

Function TWxPopupMenu.GetWxClassName: String;
Begin
    If trim(wx_Class) = '' Then
        wx_Class := 'wxMenu';
    Result := wx_Class;
End;

Procedure TWxPopupMenu.SaveControlOrientation(ControlOrientation: TWxControlOrientation);
Begin

End;

Function TWxPopupMenu.GetMaxID: Integer;
Var
    I: Integer;
    retValue: Integer;

    Function GetMaxIDFromSubMenu(submnu: TWxCustomMenuItem): Integer;
    Var
        myretValue: Integer;
        J: Integer;
    Begin
        Result := submnu.Wx_IDValue;
        For J := 0 To submnu.Count - 1 Do    // Iterate
        Begin
            If submnu.items[J].Wx_IDValue > Result Then
                Result := submnu.items[J].Wx_IDValue;
            If submnu.items[J].Count > 0 Then
            Begin
                myretValue := GetMaxIDFromSubMenu(submnu.items[J]);
                If myretValue > Result Then
                    Result := myretValue;
            End;
        End;    // for
    End;

Begin
    Result := Wx_MenuItems.Wx_IDValue;
    For I := 0 To Wx_MenuItems.Count - 1 Do    // Iterate
    Begin
        If Wx_MenuItems.items[i].Wx_IDValue > Result Then
            Result := Wx_MenuItems.items[i].Wx_IDValue;
        If Wx_MenuItems.items[i].Count > 0 Then
        Begin
            retValue := GetMaxIDFromSubMenu(Wx_MenuItems.items[i]);
            If retValue > Result Then
                Result := retValue;
        End;
    End;    // for
End;


Procedure TWxPopupMenu.SetIDName(IDName: String);
Begin

End;

Procedure TWxPopupMenu.SetIDValue(IDValue: Integer);
Begin

End;

Procedure TWxPopupMenu.SetStretchFactor(intValue: Integer);
Begin
End;

Procedure TWxPopupMenu.SetWxClassName(wxClassName: String);
Begin
    wx_Class := wxClassName;
End;

Function TWxPopupMenu.GetGenericColor(strVariableName: String): String;
Begin

End;
Procedure TWxPopupMenu.SetGenericColor(strVariableName, strValue: String);
Begin

End;


Function TWxPopupMenu.GetFGColor: String;
Begin

End;

Procedure TWxPopupMenu.SetFGColor(strValue: String);
Begin
End;

Function TWxPopupMenu.GetBGColor: String;
Begin
End;

Procedure TWxPopupMenu.SetBGColor(strValue: String);
Begin
End;

Procedure TWxPopupMenu.SetProxyFGColorString(Value: String);
Begin
End;

Procedure TWxPopupMenu.SetProxyBGColorString(Value: String);
Begin
End;

Function TWxPopupMenu.GenerateXPM(strFileName: String): Boolean;
Var
    strLst, strNameList: TStringList;
    imgLst: TImageList;
    strXPMFileName, strFormName: String;
    bmpX: TBitmap;
    i: Integer;
Begin
    Result := False;
    strLst := TStringList.Create;
    strNameList := TStringList.Create;
    imgLst := TImageList.Create(Nil);

    GenerateImageList(strLst, imgLst, strNameList);
    strFormName := GetDesignerFormName(self);

    For i := 0 To strLst.Count - 1 Do
    Begin
        strXPMFileName := UnixPathToDosPath(IncludeTrailingPathDelimiter(ExtractFilePath(strFileName)) + strLst[i]);
        If FileExists(strXPMFileName) Then
            continue;
        bmpX := TBitmap.Create;
        imgLst.GetBitmap(i, bmpX);
        If bmpX.handle <> 0 Then
            GenerateXPMDirectly(bmpX, strNameList[i], strFormName, strFileName);
        bmpX.Destroy;
    End;
    strLst.destroy;
    strNameList.destroy;
End;

End.
