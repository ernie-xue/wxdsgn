{ ****************************************************************** }
{                                                                    }
{   VCL component TWxSpinCtrl                                        }
{                                                                    }
{   Code generated by Component Create for Delphi                    }
{                                                                    }
{   Generated from source file e:\backup\delphi\demo\wxdevcpp\source\components\compcode\wxspinctl.cd }
{   on 18 July 2004 at 0:00                                          }
{                                                                    }
{   Copyright � 2003 by Guru Kathiresan                              }
{                                                                    }
{ ****************************************************************** }

unit WxSpinCtl;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls, 
     Forms, Graphics, Comctrls, WxUtils, ExtCtrls;

type
  TWxSpinCtrl = class(TUpDown,IWxComponentInterface)
    private
      { Private fields of TWxSpinCtrl }
        { Storage for property ControlOrientation }
        FControlOrientation : TWxControlOrientation;
        { Storage for property EVT_SPINCTRL }
        FEVT_SPINCTRL : String;
        { Storage for property EVT_SPIN_DOWN }
        FEVT_SPIN_DOWN : String;
        { Storage for property EVT_SPIN_UP }
        FEVT_SPIN_UP : String;
        { Storage for property EVT_TEXT }
        FEVT_TEXT : String;
        { Storage for property EVT_UPDATE_UI }
        FEVT_UPDATE_UI : String;
        { Storage for property Wx_Class }
        FWx_Class : String;
        { Storage for property Wx_Enabled }
        FWx_Enabled : String;
        { Storage for property Wx_GeneralStyle }
        FWx_GeneralStyle : String;
        { Storage for property Wx_HelpText }
        FWx_HelpText : String;
        { Storage for property Wx_Hidden }
        FWx_Hidden : Boolean;
        { Storage for property Wx_HorizontalAlignment }
        FWx_HorizontalAlignment : TWxSizerHorizontalAlignment;
        { Storage for property Wx_IDName }
        FWx_IDName : Boolean;
        { Storage for property Wx_IDValue }
        FWx_IDValue : Boolean;
        { Storage for property Wx_PropertyList }
        FWx_PropertyList : TStringList;
        { Storage for property Wx_ToolTip }
        FWx_ToolTip : Boolean;
        { Storage for property Wx_VerticalAlignment }
        FWx_VerticalAlignment : TWxSizerVerticalAlignment;

      { Private methods of TWxSpinCtrl }
        { Method to set variable and property values and create objects }
        procedure AutoInitialize;
        { Method to free any objects created by AutoInitialize }
        procedure AutoDestroy;
        { Write method for property Wx_PropertyList }
        procedure SetWx_PropertyList(Value : TStringList);

    protected
      { Protected fields of TWxSpinCtrl }

      { Protected methods of TWxSpinCtrl }
        procedure Click; override;
        procedure Loaded; override;

    public
      { Public fields and properties of TWxSpinCtrl }

      { Public methods of TWxSpinCtrl }
        constructor Create(AOwner: TComponent); override;
        destructor Destroy; override;
        function GetEventList:TStringlist;

    published
      { Published properties of TWxSpinCtrl }
        property OnClick;
        property ControlOrientation : TWxControlOrientation
             read FControlOrientation write FControlOrientation;
        property EVT_SPINCTRL : String read FEVT_SPINCTRL write FEVT_SPINCTRL;
        property EVT_SPIN_DOWN : String
             read FEVT_SPIN_DOWN write FEVT_SPIN_DOWN;
        property EVT_SPIN_UP : String read FEVT_SPIN_UP write FEVT_SPIN_UP;
        property EVT_TEXT : String read FEVT_TEXT write FEVT_TEXT;
        property EVT_UPDATE_UI : String
             read FEVT_UPDATE_UI write FEVT_UPDATE_UI;
        property Wx_Class : String read FWx_Class write FWx_Class;
        property Wx_Enabled : String read FWx_Enabled write FWx_Enabled;
        property Wx_GeneralStyle : String
             read FWx_GeneralStyle write FWx_GeneralStyle;
        property Wx_HelpText : String read FWx_HelpText write FWx_HelpText;
        property Wx_Hidden : Boolean read FWx_Hidden write FWx_Hidden;
        property Wx_HorizontalAlignment : TWxSizerHorizontalAlignment
             read FWx_HorizontalAlignment write FWx_HorizontalAlignment
             default wxSZALIGN_CENTER_HORIZONTAL;
        property Wx_IDName : Boolean read FWx_IDName write FWx_IDName;
        property Wx_IDValue : Boolean
             read FWx_IDValue write FWx_IDValue
             default -1;
        property Wx_PropertyList : TStringList
             read FWx_PropertyList write SetWx_PropertyList;
        property Wx_ToolTip : Boolean read FWx_ToolTip write FWx_ToolTip;
        property Wx_VerticalAlignment : TWxSizerVerticalAlignment
             read FWx_VerticalAlignment write FWx_VerticalAlignment
             default wxSZALIGN_CENTER_VERTICAL;

  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxSpinCtrl with wxWidgets as its
       default page on the Delphi component palette }
     RegisterComponents('wxWidgets', [TWxSpinCtrl]);
end;

{ Method to set variable and property values and create objects }
procedure TWxSpinCtrl.AutoInitialize;
begin
     FWx_HorizontalAlignment := wxSZALIGN_CENTER_HORIZONTAL;
     FWx_IDValue := -1;
     FWx_PropertyList := TStringList.Create;
     FWx_VerticalAlignment := wxSZALIGN_CENTER_VERTICAL;
end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxSpinCtrl.AutoDestroy;
begin
     FWx_PropertyList.Free;
end; { of AutoDestroy }

{ Write method for property Wx_PropertyList }
procedure TWxSpinCtrl.SetWx_PropertyList(Value : TStringList);
begin
     { Use Assign method because TStringList is an object type
       and FWx_PropertyList has been created. }
     FWx_PropertyList.Assign(Value);
end;

{ Override OnClick handler from TUpDown,IWxComponentInterface }
procedure TWxSpinCtrl.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

     { Activate click behavior of parent }
     inherited Click;

     { Code to execute after click behavior
       of parent }

end;

constructor TWxSpinCtrl.Create(AOwner: TComponent);
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

destructor TWxSpinCtrl.Destroy;
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

function TWxSpinCtrl.GetEventList:TStringlist;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin

end;

procedure TWxSpinCtrl.Loaded;
begin
     inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;


end.