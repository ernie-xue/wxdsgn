{ ****************************************************************** }
{                                                                    }
{ $Id$                                                            }
{                                                                    }
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

Unit wxChoicebook;

Interface

Uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls, Dialogs,
    Forms, Graphics, ComCtrls, ExtCtrls, StdCtrls, WxUtils, WxSizerPanel, ComboPageControl, wxAuiToolBar, wxAuiNoteBookPage;

Type
    TWxChoicebook = Class(TComboPageControl, IWxComponentInterface, IWxContainerInterface,
        IWxContainerAndSizerInterface, IWxWindowInterface)
    Private
        FOrientation: TWxSizerOrientation;
        FWx_Caption: String;
        FWx_Class: String;
        FWx_ControlOrientation: TWxControlOrientation;
        FWx_EventList: TStringList;
        FWx_IDName: String;
        FWx_IDValue: Integer;
        FWx_StretchFactor: Integer;
        FWx_PropertyList: TStringList;
        FInvisibleBGColorString: String;
        FInvisibleFGColorString: String;
        FWx_ToolTip: String;
        FWx_Enabled: Boolean;
        FWx_Hidden: Boolean;
        FWx_HelpText: String;
        FWx_Border: Integer;
    //    FWx_ChoiceBookStyle: TWxchbxStyleSet;
        FWx_GeneralStyle: TWxStdStyleSet;
        FWx_Comments: TStrings;
        FWx_Alignment: TWxSizerAlignmentSet;
        FWx_BorderAlignment: TWxBorderAlignment;

        FWx_ProxyBGColorString: TWxColorString;
        FWx_ProxyFGColorString: TWxColorString;

        FWx_BookAlignment: TWxchbxAlignStyleItem;

        FEVT_UPDATE_UI: String;
        FEVT_CHOICEBOOK_PAGE_CHANGED: String;
        FEVT_CHOICEBOOK_PAGE_CHANGING: String;

//Aui Properties
        FWx_AuiManaged: Boolean;
        FWx_PaneCaption: String;
        FWx_PaneName: String;
        FWx_Aui_Dock_Direction: TwxAuiPaneDockDirectionItem;
        FWx_Aui_Dockable_Direction: TwxAuiPaneDockableDirectionSet;
        FWx_Aui_Pane_Style: TwxAuiPaneStyleSet;
        FWx_Aui_Pane_Buttons: TwxAuiPaneButtonSet;
        FWx_BestSize_Height: Integer;
        FWx_BestSize_Width: Integer;
        FWx_MinSize_Height: Integer;
        FWx_MinSize_Width: Integer;
        FWx_MaxSize_Height: Integer;
        FWx_MaxSize_Width: Integer;
        FWx_Floating_Height: Integer;
        FWx_Floating_Width: Integer;
        FWx_Floating_X_Pos: Integer;
        FWx_Floating_Y_Pos: Integer;
        FWx_Layer: Integer;
        FWx_Row: Integer;
        FWx_Position: Integer;

    { Private methods of TWxChoicebook }
        Procedure AutoInitialize;
        Procedure AutoDestroy;

    Protected

        Procedure Loaded; Override;

    Public
        defaultBGColor: TColor;
        defaultFGColor: TColor;
    { Public methods of TWxChoicebook }
        Constructor Create(AOwner: TComponent); Override;
        Destructor Destroy; Override;
        Function GenerateControlIDs: String;
        Function GenerateEnumControlIDs: String;
        Function GenerateEventTableEntries(CurrClassName: String): String;
        Function GenerateGUIControlCreation: String;
        Function GenerateXRCControlCreation(IndentString: String): TStringList;
        Function GenerateGUIControlDeclaration: String;
        Function GenerateHeaderInclude: String;
        Function GenerateImageInclude: String;
        Function GetEventList: TStringList;
        Function GetIDName: String;
        Function GetIDValue: Integer;
        Function GetParameterFromEventName(EventName: String): String;
        Function GetPropertyList: TStringList;
        Function GetTypeFromEventName(EventName: String): String;
        Function GetWxClassName: String;
        Procedure SaveControlOrientation(ControlOrientation: TWxControlOrientation);
        Procedure SetIDName(IDName: String);
        Procedure SetIDValue(IDValue: Integer);
        Procedure SetWxClassName(wxClassName: String);
        Function GetFGColor: String;
        Procedure SetFGColor(strValue: String);
        Function GetBGColor: String;
        Procedure SetBGColor(strValue: String);
        Procedure SetProxyFGColorString(Value: String);
        Procedure SetProxyBGColorString(Value: String);

        Function GetGenericColor(strVariableName: String): String;
        Procedure SetGenericColor(strVariableName, strValue: String);

        Function GenerateLastCreationCode: String;
    //    procedure SetChoicebookStyle(style: TWxchbxStyleSet);

        Function GetBorderAlignment: TWxBorderAlignment;
        Procedure SetBorderAlignment(border: TWxBorderAlignment);
        Function GetBorderWidth: Integer;
        Procedure SetBorderWidth(width: Integer);
        Function GetStretchFactor: Integer;
        Procedure SetStretchFactor(intValue: Integer);

        Function GetBookAlignment(Value: TWxchbxAlignStyleItem): String;

    Published
        Property EVT_UPDATE_UI: String Read FEVT_UPDATE_UI Write FEVT_UPDATE_UI;
        Property EVT_CHOICEBOOK_PAGE_CHANGED: String
            Read FEVT_CHOICEBOOK_PAGE_CHANGED Write FEVT_CHOICEBOOK_PAGE_CHANGED;
        Property EVT_CHOICEBOOK_PAGE_CHANGING: String
            Read FEVT_CHOICEBOOK_PAGE_CHANGING Write FEVT_CHOICEBOOK_PAGE_CHANGING;

        Property Orientation: TWxSizerOrientation
            Read FOrientation Write FOrientation Default wxHorizontal;
        Property Wx_Caption: String Read FWx_Caption Write FWx_Caption;
        Property Wx_Class: String Read FWx_Class Write FWx_Class;
        Property Wx_ControlOrientation: TWxControlOrientation
            Read FWx_ControlOrientation Write FWx_ControlOrientation;
        Property Wx_EventList: TStringList Read FWx_EventList Write FWx_EventList;
        Property Wx_IDName: String Read FWx_IDName Write FWx_IDName;
        Property Wx_IDValue: Integer Read FWx_IDValue Write FWx_IDValue Default -1;
        Property Wx_Hidden: Boolean Read FWx_Hidden Write FWx_Hidden;
        Property Wx_ToolTip: String Read FWx_ToolTip Write FWx_ToolTip;
        Property Wx_HelpText: String Read FWx_HelpText Write FWx_HelpText;
        Property Wx_Enabled: Boolean Read FWx_Enabled Write FWx_Enabled Default True;
    //    property Wx_ChoiceBookStyle: TWxchbxStyleSet Read FWx_ChoiceBookStyle Write SetChoicebookStyle;
        Property Wx_GeneralStyle: TWxStdStyleSet Read FWx_GeneralStyle Write FWx_GeneralStyle;

        Property Wx_Border: Integer Read GetBorderWidth Write SetBorderWidth Default 5;
        Property Wx_BorderAlignment: TWxBorderAlignment Read GetBorderAlignment Write SetBorderAlignment Default [wxALL];
        Property Wx_Alignment: TWxSizerAlignmentSet Read FWx_Alignment Write FWx_Alignment Default [wxALIGN_CENTER];
        Property Wx_StretchFactor: Integer Read GetStretchFactor Write SetStretchFactor Default 0;

        Property Wx_ProxyBGColorString: TWxColorString Read FWx_ProxyBGColorString Write FWx_ProxyBGColorString;
        Property Wx_ProxyFGColorString: TWxColorString Read FWx_ProxyFGColorString Write FWx_ProxyFGColorString;
        Property InvisibleBGColorString: String Read FInvisibleBGColorString Write FInvisibleBGColorString;
        Property InvisibleFGColorString: String Read FInvisibleFGColorString Write FInvisibleFGColorString;
        Property Wx_BookAlignment: TWxchbxAlignStyleItem Read FWx_BookAlignment Write FWx_BookAlignment;

        Property Wx_Comments: TStrings Read FWx_Comments Write FWx_Comments;

//Aui Properties
        Property Wx_AuiManaged: Boolean Read FWx_AuiManaged Write FWx_AuiManaged Default False;
        Property Wx_PaneCaption: String Read FWx_PaneCaption Write FWx_PaneCaption;
        Property Wx_PaneName: String Read FWx_PaneName Write FWx_PaneName;
        Property Wx_Aui_Dock_Direction: TwxAuiPaneDockDirectionItem Read FWx_Aui_Dock_Direction Write FWx_Aui_Dock_Direction;
        Property Wx_Aui_Dockable_Direction: TwxAuiPaneDockableDirectionSet Read FWx_Aui_Dockable_Direction Write FWx_Aui_Dockable_Direction;
        Property Wx_Aui_Pane_Style: TwxAuiPaneStyleSet Read FWx_Aui_Pane_Style Write FWx_Aui_Pane_Style;
        Property Wx_Aui_Pane_Buttons: TwxAuiPaneButtonSet Read FWx_Aui_Pane_Buttons Write FWx_Aui_Pane_Buttons;
        Property Wx_BestSize_Height: Integer Read FWx_BestSize_Height Write FWx_BestSize_Height Default -1;
        Property Wx_BestSize_Width: Integer Read FWx_BestSize_Width Write FWx_BestSize_Width Default -1;
        Property Wx_MinSize_Height: Integer Read FWx_MinSize_Height Write FWx_MinSize_Height Default -1;
        Property Wx_MinSize_Width: Integer Read FWx_MinSize_Width Write FWx_MinSize_Width Default -1;
        Property Wx_MaxSize_Height: Integer Read FWx_MaxSize_Height Write FWx_MaxSize_Height Default -1;
        Property Wx_MaxSize_Width: Integer Read FWx_MaxSize_Width Write FWx_MaxSize_Width Default -1;
        Property Wx_Floating_Height: Integer Read FWx_Floating_Height Write FWx_Floating_Height Default -1;
        Property Wx_Floating_Width: Integer Read FWx_Floating_Width Write FWx_Floating_Width Default -1;
        Property Wx_Floating_X_Pos: Integer Read FWx_Floating_X_Pos Write FWx_Floating_X_Pos Default -1;
        Property Wx_Floating_Y_Pos: Integer Read FWx_Floating_Y_Pos Write FWx_Floating_Y_Pos Default -1;
        Property Wx_Layer: Integer Read FWx_Layer Write FWx_Layer Default 0;
        Property Wx_Row: Integer Read FWx_Row Write FWx_Row Default 0;
        Property Wx_Position: Integer Read FWx_Position Write FWx_Position Default 0;

    End;

Procedure Register;

Implementation

Procedure Register;
Begin
    RegisterComponents('wxWidgets', [TWxChoicebook]);
End;

Procedure TWxChoicebook.AutoInitialize;
Begin
    FWx_PropertyList := TStringList.Create;
    FWx_EventList := TStringList.Create;
    FWx_Comments := TStringList.Create;
    FOrientation := wxHorizontal;
    FWx_Class := 'wxChoicebook';
    FWx_IDValue := -1;
    FWx_StretchFactor := 0;
    FWx_Border := 5;
    FWx_Enabled := True;
    FWx_BorderAlignment := [wxAll];
    FWx_Alignment := [wxALIGN_CENTER];
    FWx_ProxyBGColorString := TWxColorString.Create;
    FWx_ProxyFGColorString := TWxColorString.Create;
    defaultBGColor := self.color;
    defaultFGColor := self.font.color;
  // implemented for future use   FWx_ChoiceBookStyle    := [];
    FWx_BookAlignment := wxCHB_DEFAULT;

End; { of AutoInitialize }

Procedure TWxChoicebook.AutoDestroy;
Begin
    FWx_PropertyList.Destroy;
    FWx_EventList.Destroy;
    FWx_Comments.Destroy;
End; { of AutoDestroy }

Constructor TWxChoicebook.Create(AOwner: TComponent);
Begin
    Inherited Create(AOwner);
    AutoInitialize;

    PopulateGenericProperties(FWx_PropertyList);
    PopulateAuiGenericProperties(FWx_PropertyList);

  {
    FWx_PropertyList.add('Wx_ChoiceBookStyle:Choicebook Styles');
  }
    FWx_PropertyList.Add('Wx_BookAlignment:Book Styles');

    FWx_EventList.add('EVT_UPDATE_UI:OnUpdateUI');
    FWx_EventList.add('EVT_CHOICEBOOK_PAGE_CHANGED:OnPageChanged');
    FWx_EventList.add('EVT_CHOICEBOOK_PAGE_CHANGING:OnPageChanging');

End;

Destructor TWxChoicebook.Destroy;
Begin
    AutoDestroy;
    Inherited Destroy;
End;

Procedure TWxChoicebook.Loaded;
Begin
    Inherited Loaded;
End;

Function TWxChoicebook.GenerateEnumControlIDs: String;
Begin
    Result := GetWxEnum(self.Wx_IDValue, self.Wx_IDName);
End;

Function TWxChoicebook.GenerateControlIDs: String;
Begin
    Result := '';
    If (Wx_IDValue > 0) And (trim(Wx_IDName) <> '') Then
        Result := Format('#define %s %d ', [Wx_IDName, Wx_IDValue]);
End;

Function TWxChoicebook.GenerateEventTableEntries(CurrClassName: String): String;
Begin
    Result := '';
    If (XRCGEN) Then
    Begin
        If trim(EVT_UPDATE_UI) <> '' Then
            Result := Result + #13 + Format('EVT_UPDATE_UI(XRCID(%s("%s")),%s::%s)',
                [StringFormat, self.Name, CurrClassName, EVT_UPDATE_UI]) + '';

        If trim(EVT_CHOICEBOOK_PAGE_CHANGED) <> '' Then
            Result := Result + #13 + Format('EVT_CHOICEBOOK_PAGE_CHANGED(XRCID(%s("%s")),%s::%s)',
                [StringFormat, self.Name, CurrClassName, EVT_CHOICEBOOK_PAGE_CHANGED]) + '';

        If trim(EVT_CHOICEBOOK_PAGE_CHANGING) <> '' Then
            Result := Result + #13 + Format('EVT_CHOICEBOOK_PAGE_CHANGING(XRCID(%s("%s")),%s::%s)',
                [StringFormat, self.Name, CurrClassName, EVT_CHOICEBOOK_PAGE_CHANGING]) + '';
    End
    Else
    Begin
        If trim(EVT_UPDATE_UI) <> '' Then
            Result := Result + #13 + Format('EVT_UPDATE_UI(%s,%s::%s)',
                [WX_IDName, CurrClassName, EVT_UPDATE_UI]) + '';

        If trim(EVT_CHOICEBOOK_PAGE_CHANGED) <> '' Then
            Result := Result + #13 + Format('EVT_CHOICEBOOK_PAGE_CHANGED(%s,%s::%s)',
                [WX_IDName, CurrClassName, EVT_CHOICEBOOK_PAGE_CHANGED]) + '';

        If trim(EVT_CHOICEBOOK_PAGE_CHANGING) <> '' Then
            Result := Result + #13 + Format('EVT_CHOICEBOOK_PAGE_CHANGING(%s,%s::%s)',
                [WX_IDName, CurrClassName, EVT_CHOICEBOOK_PAGE_CHANGING]) + '';
    End;
End;

Function TWxChoicebook.GenerateXRCControlCreation(IndentString: String): TStringList;
Var
    i: Integer;
    wxcompInterface: IWxComponentInterface;
    tempstring: TStringList;
    stylstr: String;
Begin

    Result := TStringList.Create;

    Try

        Result.Add(IndentString + Format('<object class="%s" name="%s">',
            [self.Wx_Class, self.Name]));
        Result.Add(IndentString + Format('  <IDident>%s</IDident>', [self.Wx_IDName]));
        Result.Add(IndentString + Format('  <ID>%d</ID>', [self.Wx_IDValue]));

        If Not (UseDefaultSize) Then
            Result.Add(IndentString + Format('  <size>%d,%d</size>', [self.Width, self.Height]));
        If Not (UseDefaultPos) Then
            Result.Add(IndentString + Format('  <pos>%d,%d</pos>', [self.Left, self.Top]));

        stylstr := GetChoicebookSpecificStyle(self.Wx_GeneralStyle {, self.Wx_BookAlignment, Self.Wx_NoteBookStyle});
        If stylstr <> '' Then
            Result.Add(IndentString + Format('  <style>%s | %s</style>',
                [GetBookAlignment(self.Wx_BookAlignment), stylstr]))
        Else
            Result.Add(IndentString + Format('  <style>%s</style>',
        //      [GetChoicebookSpecificStyle(self.Wx_GeneralStyle{, self.Wx_ChoiceAlignment, self.Wx_ChoiceBookStyle})]));
                [GetBookAlignment(self.Wx_BookAlignment)]));

        For i := 0 To self.ControlCount - 1 Do // Iterate
            If self.Controls[i].GetInterface(IID_IWxComponentInterface, wxcompInterface) Then
        // Only add the XRC control if it is a child of the top-most parent (the form)
        //  If it is a child of a sizer, panel, or other object, then it's XRC code
        //  is created in GenerateXRCControlCreation of that control.
                If (self.Controls[i].GetParentComponent.Name = self.Name) Then
                Begin
                    tempstring := wxcompInterface.GenerateXRCControlCreation('    ' + IndentString);
                    Try
                        Result.AddStrings(tempstring);
                    Finally
                        tempstring.Free;
                    End;
                End; // for

        Result.Add(IndentString + '</object>');

    Except

        Result.Free;
        Raise;

    End;

End;

Function TWxChoicebook.GenerateGUIControlCreation: String;
Var
    strColorStr: String;
    strStyle, parentName, strAlignment, strAlign: String;
Begin
    Result := '';

    If FWx_PaneCaption = '' Then
        FWx_PaneCaption := Self.Name;
    If FWx_PaneName = '' Then
        FWx_PaneName := Self.Name + '_Pane';

    parentName := GetWxWidgetParent(self, Wx_AuiManaged);
    strAlign := ', ' + GetBookAlignment(Self.Wx_BookAlignment);

  //  strStyle := GetChoicebookSpecificStyle(self.Wx_GeneralStyle, self.Wx_ChoiceBookStyle);
    strStyle := GetChoicebookSpecificStyle(self.Wx_GeneralStyle {, Self.Wx_BookAlignment, self.Wx_ChoiceBookStyle});

    If (trim(strStyle) <> '') Then
        strStyle := strAlign + ' | ' + strStyle
    Else
        strStyle := strAlign;

    If (XRCGEN) Then
    Begin//generate xrc loading code
        Result := GetCommentString(self.FWx_Comments.Text) +
            Format('%s = XRCCTRL(*%s, %s("%s"), %s);',
            [self.Name, parentName, StringFormat, self.Name, self.wx_Class]);
    End
    Else
    Begin
        Result := GetCommentString(self.FWx_Comments.Text) +
            Format('%s = new %s(%s, %s, %s, %s%s);',
            [self.Name, self.wx_Class, parentName, GetWxIDString(self.Wx_IDName,
            self.Wx_IDValue),
            GetWxPosition(self.Left, self.Top), GetWxSize(self.Width, self.Height), strStyle]);
    End;

    If trim(self.Wx_ToolTip) <> '' Then
        Result := Result + #13 + Format('%s->SetToolTip(%s);',
            [self.Name, GetCppString(self.Wx_ToolTip)]);

    If self.Wx_Hidden Then
        Result := Result + #13 + Format('%s->Show(false);', [self.Name]);

    If Not Wx_Enabled Then
        Result := Result + #13 + Format('%s->Enable(false);', [self.Name]);

    If trim(self.Wx_HelpText) <> '' Then
        Result := Result + #13 + Format('%s->SetHelpText(%s);',
            [self.Name, GetCppString(self.Wx_HelpText)]);

    strColorStr := trim(GetwxColorFromString(InvisibleFGColorString));
    If strColorStr <> '' Then
        Result := Result + #13 + Format('%s->SetForegroundColour(%s);',
            [self.Name, strColorStr]);

    strColorStr := trim(GetwxColorFromString(InvisibleBGColorString));
    If strColorStr <> '' Then
        Result := Result + #13 + Format('%s->SetBackgroundColour(%s);',
            [self.Name, strColorStr]);

    strColorStr := GetWxFontDeclaration(self.Font);
    If strColorStr <> '' Then
        Result := Result + #13 + Format('%s->SetFont(%s);', [self.Name, strColorStr]);
    If Not (XRCGEN) Then //NUKLEAR ZELPH
    Begin
        If (Wx_AuiManaged And FormHasAuiManager(self)) And Not (self.Parent Is TWxSizerPanel) Then
        Begin
            If HasToolbarPaneStyle(Self.Wx_Aui_Pane_Style) Then
            Begin
                Self.Wx_Aui_Pane_Style := Self.Wx_Aui_Pane_Style + [ToolbarPane]; //always make sure we are a toolbar
                Self.Wx_Layer := 10;
            End;

            If Not HasToolbarPaneStyle(Self.Wx_Aui_Pane_Style) Then
            Begin
                If (self.Parent.ClassName = 'TWxPanel') Then
                    If Not (self.Parent.Parent Is TForm) Then
                        Result := Result + #13 + Format('%s->Reparent(this);', [parentName]);
            End;

            If (self.Parent Is TWxAuiToolBar) Then
                Result := Result + #13 + Format('%s->AddControl(%s);',
                    [self.Parent.Name, self.Name])
            Else
                Result := Result + #13 + Format('%s->AddPane(%s, wxAuiPaneInfo()%s%s%s%s%s%s%s%s%s%s%s%s);',
                    [GetAuiManagerName(self), self.Name,
                    GetAuiPaneName(Self.Wx_PaneName),
                    GetAuiPaneCaption(Self.Wx_PaneCaption),
                    GetAuiDockDirection(Self.Wx_Aui_Dock_Direction),
                    GetAuiDockableDirections(self.Wx_Aui_Dockable_Direction),
                    GetAui_Pane_Style(Self.Wx_Aui_Pane_Style),
                    GetAui_Pane_Buttons(Self.Wx_Aui_Pane_Buttons),
                    GetAuiRow(Self.Wx_Row),
                    GetAuiPosition(Self.Wx_Position),
                    GetAuiLayer(Self.Wx_Layer),
                    GetAuiPaneBestSize(Self.Wx_BestSize_Width, Self.Wx_BestSize_Height),
                    GetAuiPaneMinSize(Self.Wx_MinSize_Width, Self.Wx_MinSize_Height),
                    GetAuiPaneMaxSize(Self.Wx_MaxSize_Width, Self.Wx_MaxSize_Height)]);

        End
        Else
        Begin
            If (self.Parent Is TWxSizerPanel) Then
            Begin
                strAlignment := SizerAlignmentToStr(Wx_Alignment) + ' | ' + BorderAlignmentToStr(Wx_BorderAlignment);
                Result := Result + #13 + Format('%s->Add(%s, %d, %s, %d);',
                    [self.Parent.Name, self.Name, self.Wx_StretchFactor, strAlignment,
                    self.Wx_Border]);
            End;

            If (self.Parent Is TWxAuiNotebookPage) Then
            Begin
        //        strParentLabel := TWxAuiNoteBookPage(Self.Parent).Caption;
                Result := Result + #13 + Format('%s->AddPage(%s, %s);',
          //          [self.Parent.Parent.Name, self.Name, GetCppString(strParentLabel)]);
                    [self.Parent.Parent.Name, self.Name, GetCppString(TWxAuiNoteBookPage(Self.Parent).Caption)]);
            End;

            If (self.Parent Is TWxAuiToolBar) Then
                Result := Result + #13 + Format('%s->AddControl(%s);',
                    [self.Parent.Name, self.Name]);
        End;
    End;

End;

Function TWxChoicebook.GenerateGUIControlDeclaration: String;
Begin
    Result := '';
    Result := Format('%s *%s;', [Self.wx_Class, Self.Name]);
End;

Function TWxChoicebook.GenerateHeaderInclude: String;
Begin
    Result := '';
    Result := '#include <wx/choicebk.h>';
End;

Function TWxChoicebook.GenerateImageInclude: String;
Begin

End;

Function TWxChoicebook.GetEventList: TStringList;
Begin
    Result := FWx_EventList;
End;

Function TWxChoicebook.GetIDName: String;
Begin
    Result := '';
    Result := wx_IDName;
End;

Function TWxChoicebook.GetIDValue: Integer;
Begin
    Result := wx_IDValue;
End;

Function TWxChoicebook.GetParameterFromEventName(EventName: String): String;
Begin
    If EventName = 'EVT_UPDATE_UI' Then
    Begin
        Result := 'wxUpdateUIEvent& event';
        exit;
    End;
    If EventName = 'EVT_CHOICEBOOK_PAGE_CHANGED' Then
    Begin
        Result := 'wxChoicebookEvent& event';
        exit;
    End;

    If EventName = 'EVT_CHOICEBOOK_PAGE_CHANGING' Then
    Begin
        Result := 'wxChoicebookEvent& event';
        exit;
    End;

End;

Function TWxChoicebook.GetPropertyList: TStringList;
Begin
    Result := FWx_PropertyList;
End;

Function TWxChoicebook.GetStretchFactor: Integer;
Begin
    Result := FWx_StretchFactor;
End;

Function TWxChoicebook.GetTypeFromEventName(EventName: String): String;
Begin

End;

Function TWxChoicebook.GetBorderAlignment: TWxBorderAlignment;
Begin
    Result := FWx_BorderAlignment;
End;

Procedure TWxChoicebook.SetBorderAlignment(border: TWxBorderAlignment);
Begin
    FWx_BorderAlignment := border;
End;

Function TWxChoicebook.GetBorderWidth: Integer;
Begin
    Result := FWx_Border;
End;

Procedure TWxChoicebook.SetBorderWidth(width: Integer);
Begin
    FWx_Border := width;
End;

Function TWxChoicebook.GetWxClassName: String;
Begin
    If trim(wx_Class) = '' Then
        wx_Class := 'wxChoicebook';
    Result := wx_Class;
End;

Procedure TWxChoicebook.SaveControlOrientation(ControlOrientation: TWxControlOrientation);
Begin
    wx_ControlOrientation := ControlOrientation;
End;

{
procedure TWxChoicebook.SetChoicebookStyle(style: TWxchbxStyleSet);
begin
  FWx_ChoicebookStyle := style;

  //mn we need to set the Choice position here, we go backwards from bottom, right, left to top
  //mn wxCHB_DEFAULT and wxCHB_TOP are assumed to be the same
  If (wxCHB_BOTTOM in FWx_ChoicebookStyle) then
    Self.cbb1.Align :=  alBottom;

  If (wxCHB_RIGHT in FWx_ChoicebookStyle) then
  begin
    Self.cbb1.Align := alRight;
    Self.cbb1.Width := 145;
  end;

  If (wxCHB_LEFT in FWx_ChoicebookStyle) then
  begin
    Self.cbb1.Align := alLeft;
    Self.cbb1.Width := 145;
  end;

  If (wxCHB_TOP in FWx_ChoicebookStyle) or (wxCHB_DEFAULT in FWx_ChoicebookStyle) then
    Self.cbb1.Align := alTop;

end;
}

Procedure TWxChoicebook.SetIDName(IDName: String);
Begin
    wx_IDName := IDName;
End;

Procedure TWxChoicebook.SetIDValue(IDValue: Integer);
Begin
    Wx_IDValue := IDVAlue;
End;

Procedure TWxChoicebook.SetStretchFactor(intValue: Integer);
Begin
    FWx_StretchFactor := intValue;
End;

Procedure TWxChoicebook.SetWxClassName(wxClassName: String);
Begin
    wx_Class := wxClassName;
End;

Function TWxChoicebook.GetGenericColor(strVariableName: String): String;
Begin

End;

Procedure TWxChoicebook.SetGenericColor(strVariableName, strValue: String);
Begin

End;

Function TWxChoicebook.GetFGColor: String;
Begin
    Result := FInvisibleFGColorString;
End;

Procedure TWxChoicebook.SetFGColor(strValue: String);
Begin
    FInvisibleFGColorString := strValue;
    If IsDefaultColorStr(strValue) Then
        self.Font.Color := defaultFGColor
    Else
        self.Font.Color := GetColorFromString(strValue);
End;

Function TWxChoicebook.GetBGColor: String;
Begin
    Result := FInvisibleBGColorString;
End;

Procedure TWxChoicebook.SetBGColor(strValue: String);
Begin
    FInvisibleBGColorString := strValue;
    If IsDefaultColorStr(strValue) Then
        self.Color := defaultBGColor
    Else
        self.Color := GetColorFromString(strValue);
End;

Procedure TWxChoicebook.SetProxyFGColorString(Value: String);
Begin
    FInvisibleFGColorString := Value;
    self.Color := GetColorFromString(Value);
End;

Procedure TWxChoicebook.SetProxyBGColorString(Value: String);
Begin
    FInvisibleBGColorString := Value;
    self.Font.Color := GetColorFromString(Value);
End;

Function TWxChoicebook.GenerateLastCreationCode: String;
Begin
    Result := '';
End;

Function TWxChoicebook.GetBookAlignment(Value: TWxchbxAlignStyleItem): String;
Begin
    If Value = wxCHB_BOTTOM Then
    Begin
        Result := 'wxCHB_BOTTOM';
        Self.cbb1.Align := alBottom;
        exit;
    End;
    If Value = wxCHB_RIGHT Then
    Begin
        Result := 'wxCHB_RIGHT';
        Self.cbb1.Align := alRight;
        Self.cbb1.Width := 130;
        exit;
    End;
    If Value = wxCHB_LEFT Then
    Begin
        Result := 'wxCHB_LEFT';
        Self.cbb1.Align := alLeft;
        Self.cbb1.Width := 130;
        exit;
    End;
    If Value = wxCHB_TOP Then
    Begin
        Result := 'wxCHB_TOP';
        Self.cbb1.Align := alTop;
        exit;
    End;
    If Value = wxCHB_DEFAULT Then
    Begin
        Result := 'wxCHB_DEFAULT';
        Self.cbb1.Align := alTop;
        exit;
    End;

End;

End.
