{ ****************************************************************** }
{                                                                    }
{   VCL component TWxCheckListBox                                    }
{                                                                    }
{   Code generated by Component Create for Delphi                    }
{                                                                    }
{   Generated from untitled component definition                     }
{   on 22 Oct 2004 at 20:26                                          }
{                                                                    }
{   Copyright � 2004 by ...                                          }
{                                                                    }
{ ****************************************************************** }

unit WxCheckListBox;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls, 
     Forms, Graphics, Checklst,WxUtils,WxSizerPanel;

type
  TWxCheckListBox = class(TCheckListBox ,IWxComponentInterface)
    private
      { Private fields of TWxCheckListBox }
        FEVT_BUTTON : String;
        FEVT_UPDATE_UI : String;
        FWx_BKColor : TColor;
        FWx_Border : Integer;
        FWx_ButtonStyle : TWxBtnStyleSet;
        FWx_Class : String;
        FWx_ControlOrientation : TWxControlOrientation;
        FWx_Default : Boolean;
        FWx_Enabled : Boolean;
        FWx_EventList : TstringList;
        FWx_FGColor : TColor;
        FWx_GeneralStyle : TWxStdStyleSet;
        FWx_HelpText : String;
        FWx_Hidden : Boolean;
        FWx_HorizontalAlignment : TWxSizerHorizontalAlignment;
        FWx_IDName : String;
        FWx_IDValue : Longint;
        FWx_ProxyBGColorString : TWxColorString;
        FWx_ProxyFGColorString : TWxColorString;
        FWx_StretchFactor : Integer;
        FWx_ToolTip : String;
        FWx_VerticalAlignment : TWxSizerVerticalAlignment;
        FWx_PropertyList : TStringList;
        FInvisibleBGColorString : String;
        FInvisibleFGColorString : String;

      { Private methods of TWxCheckListBox }
        procedure AutoInitialize;
        procedure AutoDestroy;

    protected
      { Protected fields of TWxCheckListBox }

      { Protected methods of TWxCheckListBox }
        procedure Click; override;
        procedure KeyPress(var Key : Char); override;
        procedure Loaded; override;

    public
      { Public fields and properties of TWxCheckListBox }
       defaultBGColor:TColor;
       defaultFGColor:TColor;
      { Public methods of TWxCheckListBox }
        constructor Create(AOwner: TComponent); override;
        destructor Destroy; override;
        function GenerateControlIDs:String;
        function GenerateEventTableEntries(CurrClassName:String):String;
        function GenerateGUIControlCreation:String;
        function GenerateGUIControlDeclaration:String;
        function GenerateHeaderInclude:String;
        function GenerateImageInclude: string;
        function GetEventList:TStringlist;
        function GetIDName:String;
        function GetIDValue:LongInt;
        function GetParameterFromEventName(EventName: string):String;
        function GetPropertyList:TStringList;
        function GetStretchFactor:Integer;
        function GetTypeFromEventName(EventName: string):string;
        function GetWxClassName:String;
        procedure SaveControlOrientation(ControlOrientation:TWxControlOrientation);
        procedure SetIDName(IDName:String);
        procedure SetIDValue(IDValue:longInt);
        procedure SetStretchFactor(intValue:Integer);
        procedure SetWxClassName(wxClassName:String);
        function GetFGColor:string;
        procedure SetFGColor(strValue:String);
        function GetBGColor:string;
        procedure SetBGColor(strValue:String);
        procedure SetProxyFGColorString(value:String);
        procedure SetProxyBGColorString(value:String);

    published
      { Published properties of TWxCheckListBox }
        property OnClick;
        property OnDblClick;
        property OnDragDrop;
        property OnEnter;
        property OnExit;
        property OnKeyDown;
        property OnKeyPress;
        property OnKeyUp;
        property OnMouseDown;
        property OnMouseMove;
        property OnMouseUp;
        property EVT_BUTTON : String read FEVT_BUTTON write FEVT_BUTTON;
        property EVT_UPDATE_UI : String
             read FEVT_UPDATE_UI write FEVT_UPDATE_UI;
        property Wx_BKColor : TColor read FWx_BKColor write FWx_BKColor;
        property Wx_Border : Integer
             read FWx_Border write FWx_Border
             default 5;
        property Wx_ButtonStyle : TWxBtnStyleSet
             read FWx_ButtonStyle write FWx_ButtonStyle;
        property Wx_Class : String read FWx_Class write FWx_Class;
        property Wx_ControlOrientation : TWxControlOrientation
             read FWx_ControlOrientation write FWx_ControlOrientation;
        property Wx_Default : Boolean read FWx_Default write FWx_Default;
        property Wx_Enabled : Boolean
             read FWx_Enabled write FWx_Enabled
             default True;
        property Wx_EventList : TstringList
             read FWx_EventList write FWx_EventList;
        property Wx_FGColor : TColor read FWx_FGColor write FWx_FGColor;
        property Wx_GeneralStyle : TWxStdStyleSet
             read FWx_GeneralStyle write FWx_GeneralStyle;
        property Wx_HelpText : String read FWx_HelpText write FWx_HelpText;
        property Wx_Hidden : Boolean read FWx_Hidden write FWx_Hidden;
        property Wx_HorizontalAlignment : TWxSizerHorizontalAlignment
             read FWx_HorizontalAlignment write FWx_HorizontalAlignment
             default wxSZALIGN_CENTER_HORIZONTAL;
        property Wx_IDName : String read FWx_IDName write FWx_IDName;
        property Wx_IDValue : Longint
             read FWx_IDValue write FWx_IDValue
             default -1;
        property Wx_ProxyBGColorString : TWxColorString
             read FWx_ProxyBGColorString write FWx_ProxyBGColorString;
        property Wx_ProxyFGColorString : TWxColorString
             read FWx_ProxyFGColorString write FWx_ProxyFGColorString;
        property Wx_StretchFactor : Integer
             read FWx_StretchFactor write FWx_StretchFactor
             default 0;

	property Wx_StrechFactor : Integer
		read FWx_StretchFactor write FWx_StretchFactor;

        property Wx_ToolTip : String read FWx_ToolTip write FWx_ToolTip;
        property Wx_VerticalAlignment : TWxSizerVerticalAlignment
             read FWx_VerticalAlignment write FWx_VerticalAlignment
             default wxSZALIGN_CENTER_VERTICAL;
        property InvisibleBGColorString:String read FInvisibleBGColorString write FInvisibleBGColorString;
        property InvisibleFGColorString:String read FInvisibleFGColorString write FInvisibleFGColorString;

  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxCheckListBox with wxWidgets as its
       default page on the Delphi component palette }
     RegisterComponents('wxWidgets', [TWxCheckListBox]);
end;

{ Method to set variable and property values and create objects }
procedure TWxCheckListBox.AutoInitialize;
begin
     FWx_PropertyList := TStringList.Create;
     FWx_Border := 5;
     FWx_Class := 'wxCheckListBox';
     FWx_Enabled := True;
     FWx_EventList := TstringList.Create;
     FWx_HorizontalAlignment := wxSZALIGN_CENTER_HORIZONTAL;
     FWx_IDValue := -1;
     FWx_StretchFactor := 0;
     FWx_VerticalAlignment := wxSZALIGN_CENTER_VERTICAL;
     FWx_ProxyBGColorString := TWxColorString.Create;
     FWx_ProxyFGColorString := TWxColorString.Create;
     defaultBGColor:=self.color;
     defaultFGColor:=self.font.color;
end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxCheckListBox.AutoDestroy;
begin
     FWx_PropertyList.Destroy;
     FWx_EventList.Destroy;
     FWx_ProxyBGColorString.Destroy;
     FWx_ProxyFGColorString.Destroy;
     //AutoDestroy;
end; { of AutoDestroy }

{ Override OnClick handler from TCheckListBox }
procedure TWxCheckListBox.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

     { Activate click behavior of parent }
     inherited Click;

     { Code to execute after click behavior
       of parent }

end;

{ Override OnKeyPress handler from TCheckListBox }
procedure TWxCheckListBox.KeyPress(var Key : Char);
const
     TabKey = Char(VK_TAB);
     EnterKey = Char(VK_RETURN);
begin
     { Key contains the character produced by the keypress.
       It can be tested or assigned a new value before the
       call to the inherited KeyPress method.  Setting Key 
       to #0 before call to the inherited KeyPress method 
       terminates any further processing of the character. }

     { Activate KeyPress behavior of parent }
     inherited KeyPress(Key);

     { Code to execute after KeyPress behavior of parent }

end;

constructor TWxCheckListBox.Create(AOwner: TComponent);
begin
     { Call the Create method of the parent class }
     inherited Create(AOwner);

     { AutoInitialize sets the initial values of variables and      }
     { properties; also, it creates objects for properties of       }
     { standard Delphi object types (e.g., TFont, TTimer,           }
     { TPicture) and for any variables marked as objects.           }
     { AutoInitialize method is generated by Component Create.      }
     AutoInitialize;

     { Code to perform other tasks when the component is created }
     
end;

destructor TWxCheckListBox.Destroy;
begin
     { AutoDestroy, which is generated by Component Create, frees any   }
     { objects created by AutoInitialize.                               }
     AutoDestroy;

     { Here, free any other dynamic objects that the component methods  }
     { created but have not yet freed.  Also perform any other clean-up }
     { operations needed before the component is destroyed.             }

     { Last, free the component by calling the Destroy method of the    }
     { parent class.                                                    }
     inherited Destroy;
end;

procedure TWxCheckListBox.Loaded;
begin
     inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;

function TWxCheckListBox.GenerateControlIDs:String;
begin
     Result:='';
     if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
        Result:=Format('#define %s %d ',[Wx_IDName,Wx_IDValue]);
end;

function TWxCheckListBox.GenerateEventTableEntries(CurrClassName:String):String;
begin
     Result:='';
     if trim(EVT_BUTTON) <> '' then
     begin
          Result:=Format('EVT_BUTTON(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_BUTTON]) +'';
     end;

     if trim(EVT_UPDATE_UI) <> '' then
     begin
          Result:=Result+#13+Format('EVT_UPDATE_UI(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_UPDATE_UI]) +'';
     end;

end;

function TWxCheckListBox.GenerateGUIControlCreation:String;
var
     strColorStr:String;
     strStyle:String;
     parentName,strAlignment:String;
begin
    Result:='';
    strStyle:=GetButtonSpecificStyle(self.Wx_GeneralStyle,Wx_ButtonStyle);



//    if (self.Parent is TForm) or (self.Parent is TWxSizerPanel) then
//       parentName:=GetWxWidgetParent(self)
//    else
//       parentName:=self.Parent.name;

    parentName:=GetWxWidgetParent(self);



    Result:=Format('%s =  new %s(%s, %s , wxPoint(%d,%d),wxSize(%d,%d) %s);',[self.Name,self.wx_Class,parentName,GetWxIDString(self.Wx_IDName,self.Wx_IDValue),self.Left,self.Top,self.width,self.Height,strStyle] );

    if trim(self.Wx_ToolTip) <> '' then
        Result:=Result + #13+Format('%s->SetToolTip(wxT("%s"));',[self.Name,self.Wx_ToolTip]);

    if self.Wx_Hidden then
        Result:=Result + #13+Format('%s->Show(false);',[self.Name]);

    if not Wx_Enabled then
        Result:=Result + #13+Format('%s->Enable(false);',[self.Name]);

    if trim(self.Wx_HelpText) <> '' then
        Result:=Result +#13+Format('%s->SetHelpText(_("%s"));',[self.Name,self.Wx_HelpText]);

    strColorStr:=trim(GetwxColorFromString(InvisibleFGColorString));
    if strColorStr <> '' then
	Result:=Result+#13+Format('%s->SetForegroundColour(%s);',[self.Name,strColorStr]);

    strColorStr:=trim(GetwxColorFromString(InvisibleBGColorString));
    if strColorStr <> '' then
	Result:=Result+#13+Format('%s->SetBackgroundColour(%s);',[self.Name,strColorStr]);


    strColorStr:=GetWxFontDeclaration(self.Font);
    if strColorStr <> '' then
	Result:=Result+#13+Format('%s->SetFont(%s);',[self.Name,strColorStr]);

    if(self.Parent is TWxSizerPanel) then
    begin

        strAlignment:=SizerAlignmentToStr(Wx_HorizontalAlignment) + ' | '+ SizerAlignmentToStr(Wx_VerticalAlignment) +' | wxALL';
        if wx_ControlOrientation = wxControlVertical then
            strAlignment:=SizerAlignmentToStr(Wx_HorizontalAlignment)+ ' | wxALL';

         if wx_ControlOrientation = wxControlHorizontal then
             strAlignment:=SizerAlignmentToStr(Wx_VerticalAlignment)+ ' | wxALL';

         Result:=Result +#13+Format('%s->Add(%s,%d,%s,%d);',[self.Parent.Name,self.Name,self.Wx_StretchFactor,strAlignment,self.Wx_Border]);

    end;

end;

function TWxCheckListBox.GenerateGUIControlDeclaration:String;
begin
     Result:=Format('%s *%s;',[trim(Self.Wx_Class),trim(Self.Name)]);
end;

function TWxCheckListBox.GenerateHeaderInclude:String;
begin
    Result:='#include <wx/checklst.h>';
end;

function TWxCheckListBox.GenerateImageInclude: string;
begin

end;

function TWxCheckListBox.GetEventList:TStringlist;
begin
     Result:=Wx_EventList;
end;

function TWxCheckListBox.GetIDName:String;
begin
     Result:=wx_IDName;
end;

function TWxCheckListBox.GetIDValue:LongInt;
begin
     Result:=wx_IDValue;
end;

function TWxCheckListBox.GetParameterFromEventName(EventName: string):String;
begin
if EventName = 'EVT_BUTTON' then
begin
 Result:='wxCommandEvent& event';
 exit;
end;
if EventName = 'EVT_UPDATE_UI' then
begin
 Result:='wxUpdateUIEvent& event';
 exit;
end;
end;

function TWxCheckListBox.GetPropertyList:TStringList;
begin
     Result:=FWx_PropertyList;
end;

function TWxCheckListBox.GetStretchFactor:Integer;
begin
    result:=Wx_StretchFactor;
end;

function TWxCheckListBox.GetTypeFromEventName(EventName: string):string;
begin

end;

function TWxCheckListBox.GetWxClassName:String;
begin
     Result:=wx_Class;
end;

procedure TWxCheckListBox.SaveControlOrientation(ControlOrientation:TWxControlOrientation);
begin
wx_ControlOrientation:=ControlOrientation;
end;

procedure TWxCheckListBox.SetIDName(IDName:String);
begin
     wx_IDName:=IDName;
end;

procedure TWxCheckListBox.SetIDValue(IDValue:longInt);
begin
     Wx_IDValue:=IDVAlue;
end;

procedure TWxCheckListBox.SetStretchFactor(intValue:Integer);
begin
    Wx_StretchFactor:=intValue;
end;

procedure TWxCheckListBox.SetWxClassName(wxClassName:String);
begin
     wx_Class:=wxClassName;
end;

function TWxCheckListBox.GetFGColor:string;
begin
   Result:=FInvisibleFGColorString;
end;

procedure TWxCheckListBox.SetFGColor(strValue:String);
begin
    FInvisibleFGColorString:=strValue;
   if IsDefaultColorStr(strValue) then
	self.Font.Color:=defaultFGColor
   else
	self.Font.Color:=GetColorFromString(strValue);
end;

function TWxCheckListBox.GetBGColor:string;
begin
   Result:=FInvisibleBGColorString;
end;

procedure TWxCheckListBox.SetBGColor(strValue:String);
begin
    FInvisibleBGColorString:=strValue;
   if IsDefaultColorStr(strValue) then
	self.Color:=defaultBGColor
   else
	self.Color:=GetColorFromString(strValue);
end;
procedure TWxCheckListBox.SetProxyFGColorString(value:String);
begin
    FInvisibleFGColorString:=value;
    self.Color:=GetColorFromString(value);
end;

procedure TWxCheckListBox.SetProxyBGColorString(value:String);
begin
   FInvisibleBGColorString:=value;
   self.Font.Color:=GetColorFromString(value);
end;


end.