{ ****************************************************************** }
{                                                                    }
{   VCL component TWxStaticText                                      }
{                                                                    }
{   Code generated by Component Create for Delphi                    }
{                                                                    }
{   Generated from source file e:\backup\delphi\demo\wxdevcpp\source\components\compcode\wxlabel.cd }
{   on 23 July 2004 at 2:30                                          }
{                                                                    }
{   Copyright � 2003 by Guru Kathiresan                              }
{                                                                    }
{ ****************************************************************** }

unit WxStaticText;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls, 
     Forms, Graphics, Stdctrls, WxUtils, ExtCtrls, WxSizerPanel;

{ Unit-wide declarations }

{ var }
     { . . . }

type
  TWxStaticText = class(TStaticText,IWxComponentInterface)
    private
      { Private fields of TWxStaticText }
        { Storage for property Wx_Border }
        FWx_Border : Integer;
        { Storage for property Wx_Class }
        FWx_Class : String;
        { Storage for property Wx_ControlOrientation }
        FWx_ControlOrientation : TWxControlOrientation;
        { Storage for property Wx_Enabled }
        FWx_Enabled : Boolean;
        { Storage for property Wx_GeneralStyle }
        FWx_GeneralStyle : TWxStdStyleSet;
        { Storage for property Wx_HelpText }
        FWx_HelpText : String;
        { Storage for property Wx_Hidden }
        FWx_Hidden : Boolean;
        { Storage for property Wx_HorizontalAlignment }
        FWx_HorizontalAlignment : TWxSizerHorizontalAlignment;
        { Storage for property Wx_IDName }
        FWx_IDName : String;
        { Storage for property Wx_IDValue }
        FWx_IDValue : Longint;
        { Storage for property Wx_LabelStyle }
        FWx_LabelStyle : TWxLBStyleSet;
        { Storage for property Wx_StrechFactor }
        FWx_StrechFactor : Integer;
        { Storage for property Wx_ToolTip }
        FWx_ToolTip : String;
        { Storage for property Wx_VerticalAlignment }
        FWx_VerticalAlignment : TWxSizerVerticalAlignment;
        FWx_EventList : TStringList;
        FWx_PropertyList : TStringList;

      { Private methods of TWxStaticText }
        { Method to set variable and property values and create objects }
        procedure AutoInitialize;
        { Method to free any objects created by AutoInitialize }
        procedure AutoDestroy;
        procedure WMSize(var Message: TWMSize); message WM_SIZE;

    protected
      { Protected fields of TWxStaticText }

      { Protected methods of TWxStaticText }
        procedure Click; override;
        procedure Loaded; override;

    public
      { Public fields and properties of TWxStaticText }

      { Public methods of TWxStaticText }
        constructor Create(AOwner: TComponent); override;
        destructor Destroy; override;
        function GenerateControlIDs:String; virtual;
        function GenerateEventTableEntries(CurrClassName:String):String; virtual;
        function GenerateGUIControlCreation:String; virtual;
        function GenerateGUIControlDeclaration:String; virtual;
        function GenerateHeaderInclude:String; virtual;
        function GenerateImageInclude: string;
        function GetEventList:TStringlist;
        function GetIDName:String;
        function GetIDValue:LongInt;
        function GetParameterFromEventName(EventName: string):String;
        function GetPropertyList:TStringList; virtual;
        function GetTypeFromEventName(EventName: string):string;
        function GetWxClassName:String; virtual;
        procedure SaveControlOrientation(ControlOrientation:TWxControlOrientation);
        procedure SetIDName(IDName:String);
        procedure SetIDValue(IDValue:longInt);
        procedure SetWxClassName(wxClassName:String);

    published
      { Published properties of TWxStaticText }
        property OnClick;
        property OnDblClick;
        property OnDragDrop;
        property OnMouseDown;
        property OnMouseMove;
        property OnMouseUp;
        property Wx_Border : Integer
             read FWx_Border write FWx_Border
             default 5;
        property Wx_Class : String read FWx_Class write FWx_Class;
        property Wx_ControlOrientation : TWxControlOrientation
             read FWx_ControlOrientation write FWx_ControlOrientation;
        property Wx_Enabled : Boolean
             read FWx_Enabled write FWx_Enabled
             default True;
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
        property Wx_LabelStyle : TWxLBStyleSet
             read FWx_LabelStyle write FWx_LabelStyle;
        property Wx_StrechFactor : Integer
             read FWx_StrechFactor write FWx_StrechFactor;
        property Wx_ToolTip : String read FWx_ToolTip write FWx_ToolTip;
        property Wx_VerticalAlignment : TWxSizerVerticalAlignment
             read FWx_VerticalAlignment write FWx_VerticalAlignment
             default wxSZALIGN_CENTER_VERTICAL;

  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxStaticText with wxWidgets as its
       default page on the Delphi component palette }
     RegisterComponents('wxWidgets', [TWxStaticText]);
end;

{ Method to set variable and property values and create objects }
procedure TWxStaticText.AutoInitialize;
begin
     FWx_EventList := TStringList.Create;
     FWx_PropertyList := TStringList.Create;
     FWx_Border := 5;
     FWx_Class := 'wxStaticText';
     FWx_Enabled := True;
     FWx_HorizontalAlignment := wxSZALIGN_CENTER_HORIZONTAL;
     FWx_IDValue := -1;
     FWx_VerticalAlignment := wxSZALIGN_CENTER_VERTICAL;
end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxStaticText.AutoDestroy;
begin
     FWx_EventList.Free;
     FWx_PropertyList.Free;
end; { of AutoDestroy }

{ Override OnClick handler from TStaticText,IWxComponentInterface }
procedure TWxStaticText.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

     { Activate click behavior of parent }
     inherited Click;

     { Code to execute after click behavior
       of parent }

end;

constructor TWxStaticText.Create(AOwner: TComponent);
begin
     AutoSize:=false;
     { Call the Create method of the parent class }
     inherited Create(AOwner);
     { AutoInitialize sets the initial values of variables and      }
     { properties; also, it creates objects for properties of       }
     { standard Delphi object types (e.g., TFont, TTimer,           }
     { TPicture) and for any variables marked as objects.           }
     { AutoInitialize method is generated by Component Create.      }
     AutoInitialize;

     { Code to perform other tasks when the component is created }
     FWx_PropertyList.add('Wx_Class :Base Class');
     FWx_PropertyList.add('Wx_Hidden :Hidden');
     FWx_PropertyList.add('Wx_Border : Border ');
     FWx_PropertyList.add('Wx_Default :WxDefault ');
     FWx_PropertyList.add('Wx_HelpText :HelpText ');
     FWx_PropertyList.add('Wx_IDName : IDName ');
     FWx_PropertyList.add('Wx_IDValue : IDValue ');
     FWx_PropertyList.add('Wx_ToolTip :ToolTip ');
     FWx_PropertyList.add('Text:Text');
     FWx_PropertyList.add('Name:Name');
     FWx_PropertyList.add('Caption:Caption');
     FWx_PropertyList.add('Wx_Class:Base Class');
     FWx_PropertyList.add('Wx_Enabled:Enabled');
     FWx_PropertyList.add('Left:Left');
     FWx_PropertyList.add('Top:Top');
     FWx_PropertyList.add('Width:Width');
     FWx_PropertyList.add('Height:Height');
     FWx_PropertyList.add('Wx_GeneralStyle : General Styles');
     FWx_PropertyList.Add('wxSIMPLE_BORDER:wxSIMPLE_BORDER');
     FWx_PropertyList.Add('wxDOUBLE_BORDER:wxDOUBLE_BORDER');
     FWx_PropertyList.Add('wxSUNKEN_BORDER:wxSUNKEN_BORDER');
     FWx_PropertyList.Add('wxRAISED_BORDER:wxRAISED_BORDER');
     FWx_PropertyList.Add('wxSTATIC_BORDER:wxSTATIC_BORDER');
     FWx_PropertyList.Add('wxTRANSPARENT_WINDOW:wxTRANSPARENT_WINDOW');
     FWx_PropertyList.Add('wxNO_3D:wxNO_3D');
     FWx_PropertyList.Add('wxTAB_TRAVERSAL:wxTAB_TRAVERSAL');
     FWx_PropertyList.Add('wxWANTS_CHARS:wxWANTS_CHARS');
     FWx_PropertyList.Add('wxNO_FULL_REPAINT_ON_RESIZE:wxNO_FULL_REPAINT_ON_RESIZE');
     FWx_PropertyList.Add('wxVSCROLL:wxVSCROLL');
     FWx_PropertyList.Add('wxHSCROLL:wxHSCROLL');
     FWx_PropertyList.Add('wxCLIP_CHILDREN:wxCLIP_CHILDREN');

     FWx_PropertyList.add('Font : Font');
     FWx_PropertyList.add('Color : Color ');

     FWx_PropertyList.add('Wx_LabelStyle:Label Style');
     FWx_PropertyList.add('wxALIGN_LEFT:wxALIGN_LEFT');
     FWx_PropertyList.add('wxALIGN_RIGHT:wxALIGN_RIGHT');
     FWx_PropertyList.add('wxALIGN_CENTRE:wxALIGN_CENTRE');
     FWx_PropertyList.add('wxST_NO_AUTORESIZE:wxST_NO_AUTORESIZE');

     FWx_PropertyList.add('Wx_HorizontalAlignment : HorizontalAlignment');
     FWx_PropertyList.add('Wx_VerticalAlignment   : VerticalAlignment');


end;

destructor TWxStaticText.Destroy;
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

function TWxStaticText.GenerateControlIDs:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';
     if (Wx_IDValue > 0) and (trim(Wx_IDName) <> '') then
        Result:=Format('#define %s %d ',[Wx_IDName,Wx_IDValue]);
end;

function TWxStaticText.GenerateEventTableEntries(CurrClassName:String):String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';
end;

function TWxStaticText.GenerateGUIControlCreation:String;
     { Internal declarations for method }
     { type }
     { . . . }
     var
     strStyle,parentName,strAlignment:String;
begin
     Result:='';

    if (self.Parent is TForm) or (self.Parent is TWxSizerPanel) then
       parentName:='this'
    else
       parentName:=self.Parent.name;

    strStyle:=GetStdStyleString(self.Wx_GeneralStyle);
    if trim(strStyle) <> '' then
       strStyle:=',' +strStyle;
    //Last comma is removed because it depends on the user selection of the properties.
    Result:=Format('%s =  new %s(%s, %s ,_("%s") ,wxPoint(%d,%d),wxSize(%d,%d) %s );',[self.Name,self.Wx_Class,ParentName,GetWxIDString(self.Wx_IDName,self.Wx_IDValue),self.Caption,self.Left,self.Top,self.width,self.Height,strStyle] );
    if trim(self.Wx_ToolTip) <> '' then
        Result:=Result + #13+Format('%s->SetToolTip(wxT("%s"));',[self.Name,self.Wx_ToolTip]);

    if self.Wx_Hidden then
        Result:=Result + #13+Format('%s->Show(false);',[self.Name]);

    if not Wx_Enabled then
        Result:=Result + #13+Format('%s->Enable(false);',[self.Name]);

    if trim(self.Wx_HelpText) <> '' then
        Result:=Result +#13+Format('%s->SetHelpText(wxString("%s"));',[self.Name,self.Wx_HelpText]);

    if(self.Parent is TWxSizerPanel) then
    begin
        strAlignment:=SizerAlignmentToStr(Wx_HorizontalAlignment) + ' | '+ SizerAlignmentToStr(Wx_VerticalAlignment) +' | wxALL';
        if wx_ControlOrientation = wxControlVertical then
            strAlignment:=SizerAlignmentToStr(Wx_HorizontalAlignment)+ ' | wxALL';

         if wx_ControlOrientation = wxControlHorizontal then
             strAlignment:=SizerAlignmentToStr(Wx_VerticalAlignment)+ ' | wxALL';


         Result:=Result +#13+Format('%s->Add(%s,%d,%s,%d);',[self.Parent.Name,self.Name,self.Wx_StrechFactor,strAlignment,self.Wx_Border]);
    end;


end;

function TWxStaticText.GenerateGUIControlDeclaration:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';
     Result:=Format('%s *%s;',[trim(Self.Wx_Class),trim(Self.Name)]);
end;

function TWxStaticText.GenerateHeaderInclude:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';
Result:='#include <wx/stattext.h>';
end;

function TWxStaticText.GenerateImageInclude: string;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin

end;

function TWxStaticText.GetEventList:TStringlist;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=FWx_EventList;
end;

function TWxStaticText.GetIDName:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=wx_IDName;
end;

function TWxStaticText.GetIDValue:LongInt;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=wx_IDValue;
end;

function TWxStaticText.GetParameterFromEventName(EventName: string):String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin

end;

function TWxStaticText.GetPropertyList:TStringList;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=FWx_PropertyList;
end;

function TWxStaticText.GetTypeFromEventName(EventName: string):string;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin

end;

function TWxStaticText.GetWxClassName:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     if trim(wx_Class) = '' then
        wx_Class:='wxStaticText';
     Result:=wx_Class;
end;

procedure TWxStaticText.Loaded;
begin
     inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;

procedure TWxStaticText.SaveControlOrientation(ControlOrientation:TWxControlOrientation);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
wx_ControlOrientation:=ControlOrientation;
end;

procedure TWxStaticText.SetIDName(IDName:String);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     wx_IDName:=IDName;
end;

procedure TWxStaticText.SetIDValue(IDValue:longInt);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Wx_IDValue:=IDVAlue;
end;

procedure TWxStaticText.SetWxClassName(wxClassName:String);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     wx_Class:=wxClassName;
end;

procedure TWxStaticText.WMSize(var Message: TWMSize);
var
     W, H: Integer;
begin
     inherited;

     { Copy the new width and height of the component
       so we can use SetBounds to change both at once }
     W := Width;
     H := Height;

     { Code to check and adjust W and H }

     { Update the component size if we adjusted W or H }
     if (W <> Width) or (H <> Height) then
        inherited SetBounds(Left, Top, W, H);

     { Code to update dimensions of any owned sub-components
       by reading their Height and Width properties and updating
       via their SetBounds methods }

     Message.Result := 0;
end;


end.