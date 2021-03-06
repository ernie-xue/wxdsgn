{ ****************************************************************** }
{                                                                    }
{ $Id$                                                               }
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

Unit wxAuiToolBar;

Interface

Uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls,
    Forms, Graphics, ComCtrls, WxUtils, WxSizerPanel, wxAuiBar;

Type
    TWxAuiToolBar = Class(TToolBar, IWxComponentInterface,
        IWxAuiToolBarInterface, IWxToolBarInterface, IWxContainerInterface, IWxContainerAndSizerInterface)
    Private
    { Private fields of TWxAuiToolBar }
        FOrientation: TWxSizerOrientation;
        FWx_Caption: String;
        FWx_Class: String;
        FWx_ControlOrientation: TWxControlOrientation;
        FWx_EventList: TStringList;
        FWx_ToolbarStyleSet: TWxAuiTbrStyleSet;
        FWx_GeneralStyle: TWxStdStyleSet;
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
        FWx_Comments: TStrings;
        FWx_Alignment: TWxSizerAlignmentSet;
        FWx_BorderAlignment: TWxBorderAlignment;

        FEVT_AUITOOLBAR_TOOL_DROPDOWN: String;
        FEVT_AUITOOLBAR_OVERFLOW_CLICK: String;
        FEVT_AUITOOLBAR_RIGHT_CLICK: String;
        FEVT_AUITOOLBAR_MIDDLE_CLICK: String;
        FEVT_AUITOOLBAR_BEGIN_DRAG: String;
        FEVT_UPDATE_UI: String;

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

    { Private methods of TWxAuiToolBar }
        Procedure AutoInitialize;
        Procedure AutoDestroy;

    Protected
    { Protected fields of TWxAuiToolBar }

    { Protected methods of TWxAuiToolBar }
        Procedure Click; Override;
        Procedure KeyPress(Var Key: Char); Override;
        Procedure Loaded; Override;

    Public
    { Public fields and properties of TWxAuiToolBar }
        defaultBGColor: TColor;
        defaultFGColor: TColor;

    { Public methods of TWxAuiToolBar }
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

        Function GetBorderAlignment: TWxBorderAlignment;
        Procedure SetBorderAlignment(border: TWxBorderAlignment);
        Function GetBorderWidth: Integer;
        Procedure SetBorderWidth(width: Integer);
        Function GetStretchFactor: Integer;
        Procedure SetStretchFactor(intValue: Integer);

        Procedure SetWxClassName(wxClassName: String);
        Function GetFGColor: String;
        Procedure SetFGColor(strValue: String);
        Function GetBGColor: String;
        Procedure SetBGColor(strValue: String);

        Function GetGenericColor(strVariableName: String): String;
        Procedure SetGenericColor(strVariableName, strValue: String);

        Procedure SetProxyFGColorString(Value: String);
        Procedure SetProxyBGColorString(Value: String);
        Procedure DummySizerNonInsertableInterfaceProcedure;
        Function GenerateLastCreationCode: String;
        Procedure SetToolbarStyle(Value: TWxAuiTbrStyleSet);

        Function GetRealizeString: String;

    Published
    { Published properties of TWxAuiToolBar }
        Property OnClick;
        Property OnDblClick;
        Property OnDragDrop;
        Property OnEnter;
        Property OnExit;
        Property OnKeyDown;
        Property OnKeyPress;
        Property OnKeyUp;
        Property OnMouseDown;
        Property OnMouseMove;
        Property OnMouseUp;
        Property OnResize;
        Property Orientation: TWxSizerOrientation
            Read FOrientation Write FOrientation Default wxHorizontal;
        Property Wx_Caption: String Read FWx_Caption Write FWx_Caption;
        Property Wx_Class: String Read FWx_Class Write FWx_Class;
        Property Wx_ControlOrientation: TWxControlOrientation
            Read FWx_ControlOrientation Write FWx_ControlOrientation;
        Property Wx_EventList: TStringList Read FWx_EventList Write FWx_EventList;
        Property Wx_ToolbarStyleSet: TWxAuiTbrStyleSet
            Read FWx_ToolbarStyleSet Write SetToolbarStyle;
        Property Wx_GeneralStyle: TWxStdStyleSet
            Read FWx_GeneralStyle Write FWx_GeneralStyle;
        Property Wx_IDName: String Read FWx_IDName Write FWx_IDName;
        Property Wx_IDValue: Integer Read FWx_IDValue Write FWx_IDValue Default -1;
        Property Wx_StretchFactor: Integer Read FWx_StretchFactor
            Write FWx_StretchFactor Default 0;
        Property Wx_Comments: TStrings Read FWx_Comments Write FWx_Comments;

        Property InvisibleBGColorString: String
            Read FInvisibleBGColorString Write FInvisibleBGColorString;
        Property InvisibleFGColorString: String
            Read FInvisibleFGColorString Write FInvisibleFGColorString;

        Property Wx_Hidden: Boolean Read FWx_Hidden Write FWx_Hidden;
        Property Wx_ToolTip: String Read FWx_ToolTip Write FWx_ToolTip;
        Property Wx_HelpText: String Read FWx_HelpText Write FWx_HelpText;
        Property Wx_Enabled: Boolean Read FWx_Enabled Write FWx_Enabled Default True;
        Property Wx_Border: Integer Read GetBorderWidth Write SetBorderWidth Default 5;

        Property Wx_Alignment: TWxSizerAlignmentSet
            Read FWx_Alignment Write FWx_Alignment Default [wxALIGN_CENTER];
        Property Wx_BorderAlignment: TWxBorderAlignment Read GetBorderAlignment
            Write SetBorderAlignment Default [wxALL];

        Property EVT_AUITOOLBAR_TOOL_DROPDOWN: String Read FEVT_AUITOOLBAR_TOOL_DROPDOWN Write FEVT_AUITOOLBAR_TOOL_DROPDOWN;
        Property EVT_AUITOOLBAR_OVERFLOW_CLICK: String Read FEVT_AUITOOLBAR_OVERFLOW_CLICK Write FEVT_AUITOOLBAR_OVERFLOW_CLICK;
        Property EVT_AUITOOLBAR_RIGHT_CLICK: String Read FEVT_AUITOOLBAR_RIGHT_CLICK Write FEVT_AUITOOLBAR_RIGHT_CLICK;
        Property EVT_AUITOOLBAR_MIDDLE_CLICK: String Read FEVT_AUITOOLBAR_MIDDLE_CLICK Write FEVT_AUITOOLBAR_MIDDLE_CLICK;
        Property EVT_AUITOOLBAR_BEGIN_DRAG: String Read FEVT_AUITOOLBAR_BEGIN_DRAG Write FEVT_AUITOOLBAR_BEGIN_DRAG;
        Property EVT_UPDATE_UI: String Read FEVT_UPDATE_UI Write FEVT_UPDATE_UI;

    //Aui Properties
        Property Wx_AuiManaged: Boolean Read FWx_AuiManaged Write FWx_AuiManaged Default True;
        Property Wx_PaneCaption: String Read FWx_PaneCaption Write FWx_PaneCaption;
        Property Wx_PaneName: String Read FWx_PaneName Write FWx_PaneName;
        Property Wx_Aui_Dock_Direction: TwxAuiPaneDockDirectionItem Read FWx_Aui_Dock_Direction Write FWx_Aui_Dock_Direction;
        Property Wx_Aui_Dockable_Direction: TwxAuiPaneDockableDirectionSet Read FWx_Aui_Dockable_Direction Write FWx_Aui_Dockable_Direction;
        Property Wx_Aui_Pane_Style: TwxAuiPaneStyleSet Read FWx_Aui_Pane_Style Write FWx_Aui_Pane_Style Default [ToolbarPane];
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
  { Register TWxAuiToolBar with wxWidgets as its
    default page on the Delphi component palette }
    RegisterComponents('wxWidgets', [TWxAuiToolBar]);
End;

{ Method to set variable and property values and create objects }

Procedure TWxAuiToolBar.AutoInitialize;
Begin
    FWx_PropertyList := TStringList.Create;
    FOrientation := wxHorizontal;
    FWx_Class := 'wxAuiToolBar';
    FWx_EventList := TStringList.Create;
    FWx_BorderAlignment := [wxALL];
    FWx_Alignment := [wxALIGN_CENTER];
    FWx_IDValue := -1;
    FWx_StretchFactor := 0;
    FWx_Enabled := True;
    FWx_Comments := TStringList.Create;
    self.ShowCaptions := False;

End; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }

Procedure TWxAuiToolBar.AutoDestroy;
Begin
    FWx_PropertyList.Destroy;
    FWx_EventList.Destroy;
    FWx_Comments.Destroy;
End; { of AutoDestroy }

{ Override OnClick handler from TToolBar }

Procedure TWxAuiToolBar.Click;
Begin
  { Code to execute before activating click
    behavior of component's parent class }

{ Activate click behavior of parent }
    Inherited Click;

  { Code to execute after click behavior
    of parent }
End;

{ Override OnKeyPress handler from TToolBar }

Procedure TWxAuiToolBar.KeyPress(Var Key: Char);
Const
    TabKey = Char(VK_TAB);
    EnterKey = Char(VK_RETURN);
Begin
  { Key contains the character produced by the keypress.
    It can be tested or assigned a new value before the
    call to the inherited KeyPress method.  Setting Key
    to #0 before call to the inherited KeyPress method
    terminates any further processing of the character. }

{ Activate KeyPress behavior of parent }
    Inherited KeyPress(Key);

  { Code to execute after KeyPress behavior of parent }

End;

Constructor TWxAuiToolBar.Create(AOwner: TComponent);
Begin
  { Call the Create method of the parent class }
    Inherited Create(AOwner);

  { AutoInitialize sets the initial values of variables and      }
  { properties; also, it creates objects for properties of       }
  { standard Delphi object types (e.g., TFont, TTimer,           }
  { TPicture) and for any variables marked as objects.           }
  { AutoInitialize method is generated by Component Create.      }
    AutoInitialize;

  { Code to perform other tasks when the component is created }
    PopulateGenericProperties(FWx_PropertyList);
    PopulateAuiGenericProperties(FWx_PropertyList);

    FWx_PropertyList.add('Wx_ToolbarStyleSet:Toolbar Styles');
    FWx_PropertyList.add('wxAUI_TB_TEXT:wxAUI_TB_TEXT');
    FWx_PropertyList.add('wxAUI_TB_NO_TOOLTIPS:wxAUI_TB_NO_TOOLTIPS');
    FWx_PropertyList.add('wxAUI_TB_NO_AUTORESIZE:wxAUI_TB_NO_AUTORESIZE');
    FWx_PropertyList.add('wxAUI_TB_GRIPPER:wxAUI_TB_GRIPPER');
    FWx_PropertyList.add('wxAUI_TB_OVERFLOW:wxAUI_TB_OVERFLOW');
    FWx_PropertyList.add('wxAUI_TB_VERTICAL:wxAUI_TB_VERTICAL');
    FWx_PropertyList.add('wxAUI_TB_HORZ_TEXT:wxAUI_TB_HORZ_TEXT');
    FWx_PropertyList.add('wxAUI_TB_DEFAULT_STYLE:wxAUI_TB_DEFAULT_STYLE');

    FWx_EventList.add('EVT_AUITOOLBAR_TOOL_DROPDOWN:OnToolDropDown');
    FWx_EventList.add('EVT_AUITOOLBAR_OVERFLOW_CLICK:OnOverflowClick');
    FWx_EventList.add('EVT_AUITOOLBAR_RIGHT_CLICK:OnRightClick');
    FWx_EventList.add('EVT_AUITOOLBAR_MIDDLE_CLICK:OnMiddleClick');
    FWx_EventList.add('EVT_AUITOOLBAR_BEGIN_DRAG:OnTBBeginDrag');
    FWx_EventList.add('EVT_UPDATE_UI:OnUpdateUI');

End;

Destructor TWxAuiToolBar.Destroy;
Begin
  { AutoDestroy, which is generated by Component Create, frees any   }
  { objects created by AutoInitialize.                               }
    AutoDestroy;

  { Here, free any other dynamic objects that the component methods  }
  { created but have not yet freed.  Also perform any other clean-up }
  { operations needed before the component is destroyed.             }

  { Last, free the component by calling the Destroy method of the    }
  { parent class.                                                    }
    Inherited Destroy;
End;

Procedure TWxAuiToolBar.Loaded;
Begin
    Inherited Loaded;

  { Perform any component setup that depends on the property
    values having been set }
    self.ParentColor := False;
    self.Color := clBtnFace;
End;

Function TWxAuiToolBar.GenerateEnumControlIDs: String;
Begin
    Result := GetWxEnum(self.Wx_IDValue, self.Wx_IDName);
End;

Function TWxAuiToolBar.GenerateControlIDs: String;
Begin
    Result := '';
    If (Wx_IDValue > 0) And (trim(Wx_IDName) <> '') Then
        Result := Format('#define %s %d ', [Wx_IDName, Wx_IDValue]);
End;

Function TWxAuiToolBar.GenerateEventTableEntries(CurrClassName: String): String;
Begin

    Result := '';

    If (XRCGEN) Then
    Begin //generate xrc loading code
        If trim(EVT_AUITOOLBAR_TOOL_DROPDOWN) <> '' Then
            Result := Format('EVT_AUITOOLBAR_TOOL_DROPDOWN(XRCID(%s("%s")),%s::%s)',
                [StringFormat, self.Name, CurrClassName, EVT_AUITOOLBAR_TOOL_DROPDOWN]) + '';

        If trim(EVT_AUITOOLBAR_OVERFLOW_CLICK) <> '' Then
            Result := Result + #13 + Format('EVT_AUITOOLBAR_OVERFLOW_CLICK(XRCID(%s("%s")),%s::%s)',
                [StringFormat, self.Name, CurrClassName, EVT_AUITOOLBAR_OVERFLOW_CLICK]) + '';

        If trim(EVT_AUITOOLBAR_RIGHT_CLICK) <> '' Then
            Result := Result + #13 + Format('EVT_AUITOOLBAR_RIGHT_CLICK(XRCID(%s("%s")),%s::%s)',
                [StringFormat, self.Name, CurrClassName, EVT_AUITOOLBAR_RIGHT_CLICK]) + '';

        If trim(EVT_AUITOOLBAR_MIDDLE_CLICK) <> '' Then
            Result := Result + #13 + Format('EVT_AUITOOLBAR_MIDDLE_CLICK(XRCID(%s("%s")),%s::%s)',
                [StringFormat, self.Name, CurrClassName, EVT_AUITOOLBAR_MIDDLE_CLICK]) + '';

        If trim(EVT_AUITOOLBAR_BEGIN_DRAG) <> '' Then
            Result := Result + #13 + Format('EVT_AUITOOLBAR_BEGIN_DRAG(XRCID(%s("%s")),%s::%s)',
                [StringFormat, self.Name, CurrClassName, EVT_AUITOOLBAR_BEGIN_DRAG]) + '';

        If trim(EVT_UPDATE_UI) <> '' Then
            Result := Result + #13 + Format('EVT_UPDATE_UI(XRCID(%s("%s")),%s::%s)',
                [StringFormat, self.Name, CurrClassName, EVT_UPDATE_UI]) + '';

    End
    Else
    Begin
        If trim(EVT_AUITOOLBAR_TOOL_DROPDOWN) <> '' Then
            Result := Format('EVT_AUITOOLBAR_TOOL_DROPDOWN(%s,%s::%s)',
                [WX_IDName, CurrClassName, EVT_AUITOOLBAR_TOOL_DROPDOWN]) + '';

        If trim(EVT_AUITOOLBAR_OVERFLOW_CLICK) <> '' Then
            Result := Result + #13 + Format('EVT_AUITOOLBAR_OVERFLOW_CLICK(%s,%s::%s)',
                [WX_IDName, CurrClassName, EVT_AUITOOLBAR_OVERFLOW_CLICK]) + '';

        If trim(EVT_AUITOOLBAR_RIGHT_CLICK) <> '' Then
            Result := Result + #13 + Format('EVT_AUITOOLBAR_RIGHT_CLICK(%s,%s::%s)',
                [WX_IDName, CurrClassName, EVT_AUITOOLBAR_RIGHT_CLICK]) + '';

        If trim(EVT_AUITOOLBAR_MIDDLE_CLICK) <> '' Then
            Result := Result + #13 + Format('EVT_AUITOOLBAR_MIDDLE_CLICK(%s,%s::%s)',
                [WX_IDName, CurrClassName, EVT_AUITOOLBAR_MIDDLE_CLICK]) + '';

        If trim(EVT_AUITOOLBAR_BEGIN_DRAG) <> '' Then
            Result := Result + #13 + Format('EVT_AUITOOLBAR_BEGIN_DRAG(%s,%s::%s)',
                [WX_IDName, CurrClassName, EVT_AUITOOLBAR_BEGIN_DRAG]) + '';

        If trim(EVT_UPDATE_UI) <> '' Then
            Result := Result + #13 + Format('EVT_UPDATE_UI(%s,%s::%s)',
                [WX_IDName, CurrClassName, EVT_UPDATE_UI]) + '';

    End;

End;

Function TWxAuiToolBar.GenerateXRCControlCreation(IndentString: String): TStringList;
Var
    i: Integer;
    wxcompInterface: IWxComponentInterface;
    tempstring: TStringList;
Begin

    Result := TStringList.Create;

    Try
        Result.Add(IndentString + Format('<object class="wxAuiToolBar" name="%s">', [self.Name]));
        Result.Add(IndentString + Format('  <IDident>%s</IDident>', [self.Wx_IDName]));
        Result.Add(IndentString + Format('  <ID>%d</ID>', [self.Wx_IDValue]));

    {
        if not(UseDefaultSize)then
          Result.Add(IndentString + Format('  <size>%d,%d</size>', [self.Width, self.Height]));
        if not(UseDefaultPos) then
          Result.Add(IndentString + Format('  <pos>%d,%d</pos>', [self.Left, self.Top]));
    }
        Result.Add(IndentString + Format('  <style>%s</style>',
            [GetAuiToolBarSpecificStyle(self.Wx_GeneralStyle, self.Wx_ToolbarStyleSet)]));

        For i := 0 To self.ControlCount - 1 Do // Iterate
            If self.Controls[i].GetInterface(IID_IWxComponentInterface, wxcompInterface) Then
        // Only add the XRC control if it is a child of the top-most parent (the form)
        //  If it is a child of a sizer, panel, or other object, then it's XRC code
        //  is created in GenerateXRCControlCreation of that control.
                If (self.Controls[i].GetParentComponent.Name = self.Name) Then
                Begin
                    tempstring := wxcompInterface.GenerateXRCControlCreation('  ' + IndentString);
                    Try
                        Result.AddStrings(tempstring);
                    Finally
                        tempstring.Free;
                    End;
                End;
        ; // for

        Result.Add(IndentString + '</object>');

    Except
        Result.Free;
        Raise;
    End;

End;

Function TWxAuiToolBar.GenerateGUIControlCreation: String;
Var
    strColorStr: String;
    strStyle, parentName, strAlignment: String;
Begin
    Result := '';
    Self.Wx_AuiManaged := True; //wxAuiToolbar is ALWAYS managed
    Self.Wx_Aui_Pane_Style := Self.Wx_Aui_Pane_Style + [ToolbarPane];                                     //always make sure we are a toolbar
    Self.Wx_Layer := 10;

    If Self.Wx_Aui_Dock_Direction = wxAUI_DOCK_NONE Then
        Self.Wx_Aui_Dock_Direction := wxAUI_DOCK_TOP;

    If FWx_PaneCaption = '' Then
        FWx_PaneCaption := Self.Name;
    If FWx_PaneName = '' Then
        FWx_PaneName := Self.Name + '_Pane';

    parentName := GetWxWidgetParent(self, Wx_AuiManaged);

    strStyle := GetAuiToolBarSpecificStyle(self.Wx_GeneralStyle, self.Wx_ToolbarStyleSet);
    If (trim(strStyle) <> '') Then
        strStyle := ', ' + strStyle;

    If (XRCGEN) Then
    Begin //generate xrc loading code
        Result := GetCommentString(self.FWx_Comments.Text) +
            Format('%s = wxXmlResource::Get()->LoadToolBar(%s,%s("%s"));',
            [self.Name, parentName, StringFormat, self.Name]);
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
            [self.Name, GetCppString(Wx_HelpText)]);

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
        If (Wx_AuiManaged And FormHasAuiManager(self)) And Not (self.Parent Is TWxSizerPanel) Then
        Begin
{      Result := Result + #13 + Format('%s->Realize();', [self.Name]);
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
}
        End
        Else
        Begin
            If Not (XRCGEN) Then //NUKLEAR ZELPH
                If (self.Parent Is TWxSizerPanel) Then
                Begin
                    strAlignment := SizerAlignmentToStr(Wx_Alignment) + ' | ' + BorderAlignmentToStr(Wx_BorderAlignment);
                    Result := Result + #13 + Format('%s->Add(%s, %d, %s, %d);',
                        [self.Parent.Name, self.Name, self.Wx_StretchFactor, strAlignment,
                        self.Wx_Border]);
                End;
        End;

End;

Function TWxAuiToolBar.GenerateGUIControlDeclaration: String;
Begin
    Result := '';
    Result := Format('%s *%s;', [Self.wx_Class, Self.Name]);
End;

Function TWxAuiToolBar.GenerateHeaderInclude: String;
Begin
    Result := '';
    Result := '#include <wx/aui/aui.h>';
End;

Function TWxAuiToolBar.GenerateImageInclude: String;
Begin

End;

Function TWxAuiToolBar.GetEventList: TStringList;
Begin
    Result := FWx_EventList;
End;

Function TWxAuiToolBar.GetIDName: String;
Begin
    Result := '';
    Result := wx_IDName;
End;

Function TWxAuiToolBar.GetIDValue: Integer;
Begin
    Result := wx_IDValue;
End;

Function TWxAuiToolBar.GetParameterFromEventName(EventName: String): String;
Begin

    If EventName = 'EVT_UPDATE_UI' Then
    Begin
        Result := 'wxUpdateUIEvent& event';
        exit;
    End;
    If EventName = 'EVT_AUITOOLBAR_TOOL_DROPDOWN' Then
    Begin
        Result := 'wxAuiToolBarEvent& event';
        exit;
    End;
    If EventName = 'EVT_AUITOOLBAR_OVERFLOW_CLICK' Then
    Begin
        Result := 'wxAuiToolBarEvent& event';
        exit;
    End;
    If EventName = 'EVT_AUITOOLBAR_RIGHT_CLICK' Then
    Begin
        Result := 'wxAuiToolBarEvent& event';
        exit;
    End;
    If EventName = 'EVT_AUITOOLBAR_MIDDLE_CLICK' Then
    Begin
        Result := 'wxAuiToolBarEvent& event';
        exit;
    End;
    If EventName = 'EVT_AUITOOLBAR_BEGIN_DRAG' Then
    Begin
        Result := 'wxAuiToolBarEvent& event';
        exit;
    End;
End;

Function TWxAuiToolBar.GetPropertyList: TStringList;
Begin
    Result := FWx_PropertyList;
End;

Function TWxAuiToolBar.GetStretchFactor: Integer;
Begin
    Result := FWx_StretchFactor;
End;

Function TWxAuiToolBar.GetTypeFromEventName(EventName: String): String;
Begin

End;

Function TWxAuiToolBar.GetWxClassName: String;
Begin
    If trim(wx_Class) = '' Then
        wx_Class := 'wxAuiToolBar';
    Result := wx_Class;
End;

Procedure TWxAuiToolBar.SaveControlOrientation(ControlOrientation: TWxControlOrientation);
Begin
    wx_ControlOrientation := ControlOrientation;
End;

Procedure TWxAuiToolBar.SetIDName(IDName: String);
Begin
    wx_IDName := IDName;
End;

Procedure TWxAuiToolBar.SetIDValue(IDValue: Integer);
Begin
    Wx_IDValue := IDValue;
End;

Procedure TWxAuiToolBar.SetStretchFactor(intValue: Integer);
Begin
    FWx_StretchFactor := intValue;
End;

Function TWxAuiToolBar.GetBorderAlignment: TWxBorderAlignment;
Begin
    Result := FWx_BorderAlignment;
End;

Procedure TWxAuiToolBar.SetBorderAlignment(border: TWxBorderAlignment);
Begin
    FWx_BorderAlignment := border;
End;

Function TWxAuiToolBar.GetBorderWidth: Integer;
Begin
    Result := FWx_Border;
End;

Procedure TWxAuiToolBar.SetBorderWidth(width: Integer);
Begin
    FWx_Border := width;
End;

Procedure TWxAuiToolBar.SetWxClassName(wxClassName: String);
Begin
    wx_Class := wxClassName;
End;

Function TWxAuiToolBar.GetGenericColor(strVariableName: String): String;
Begin

End;

Procedure TWxAuiToolBar.SetGenericColor(strVariableName, strValue: String);
Begin

End;

Function TWxAuiToolBar.GetFGColor: String;
Begin
    Result := FInvisibleFGColorString;
End;

Procedure TWxAuiToolBar.SetFGColor(strValue: String);
Begin
    FInvisibleFGColorString := strValue;
    If IsDefaultColorStr(strValue) Then
        self.Font.Color := defaultFGColor
    Else
        self.Font.Color := GetColorFromString(strValue);
End;

Function TWxAuiToolBar.GetBGColor: String;
Begin
    Result := FInvisibleBGColorString;
End;

Procedure TWxAuiToolBar.SetBGColor(strValue: String);
Begin
    FInvisibleBGColorString := strValue;
    If IsDefaultColorStr(strValue) Then
        self.Color := defaultBGColor
    Else
        self.Color := GetColorFromString(strValue);
End;

Procedure TWxAuiToolBar.SetProxyFGColorString(Value: String);
Begin
    FInvisibleFGColorString := Value;
    self.Color := GetColorFromString(Value);
End;

Procedure TWxAuiToolBar.SetProxyBGColorString(Value: String);
Begin
    FInvisibleBGColorString := Value;
    self.Font.Color := GetColorFromString(Value);
End;

Procedure TWxAuiToolBar.DummySizerNonInsertableInterfaceProcedure;
Begin
End;

Function TWxAuiToolBar.GenerateLastCreationCode: String;
Begin
    Result := '';
End;

Procedure TWxAuiToolBar.SetToolbarStyle(Value: TWxAuiTbrStyleSet);
Begin
  {mn    if (wxTB_TEXT in Value) or (wxTB_HORZ_TEXT in Value) then
        self.ShowCaptions:=true
      else
        self.ShowCaptions:=false;
      FWx_ToolbarStyleSet:=Value;
  }
End;


Function TWxAuiToolBar.GetRealizeString: String;
Begin
    Result := '';
    Self.Wx_AuiManaged := True; //wxAuiToolbar is ALWAYS managed
    Self.Wx_Aui_Pane_Style := Self.Wx_Aui_Pane_Style + [ToolbarPane]; //always make sure we are a toolbar
    Self.Wx_Layer := 10;

    If Self.Wx_Aui_Dock_Direction = wxAUI_DOCK_NONE Then
        Self.Wx_Aui_Dock_Direction := wxAUI_DOCK_TOP;

    If FWx_PaneCaption = '' Then
        FWx_PaneCaption := Self.Name;
    If FWx_PaneName = '' Then
        FWx_PaneName := Self.Name + '_Pane';

    If (Wx_AuiManaged And FormHasAuiManager(self)) And Not (self.Parent Is TWxSizerPanel) Then
    Begin
        Result := Result + Format('%s->Realize();', [self.Name]);
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
    End;
End;

End.
