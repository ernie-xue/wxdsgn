{ ****************************************************************** }
{                                                                    }
{   VCL component TWxTreeCtrl                                        }
{                                                                    }
{   Code generated by Component Create for Delphi                    }
{                                                                    }
{   Generated from source file e:\backup\delphi\demo\wxdevcpp\source\compon~1\compcode\wxtree~1.cd }
{   on 26 Sept 2004 at 23:55                                         }
{                                                                    }
{   Copyright � 2003 by ...                                          }
{                                                                    }
{ ****************************************************************** }

unit WxTreeCtrl;

interface

uses WinTypes, WinProcs, Messages, SysUtils, Classes, Controls, 
     Forms, Graphics, Comctrls, WxUtils, ExtCtrls, WxSizerPanel;

{
*************IMPORTANT*************
If you want to change any of the wxwidgets components,  you have to use comp screate by David Price.
You can download a copy from

http://torry.net/tools/components/compcreation/cc.zip

***IF YOU FOLLOW THIS YOUR UPDATES WONT BE INCLUDED IN THE DISTRIBUTION****
}

type
  TWxTreeCtrl = class(TTreeView,IWxComponentInterface)
    private
      { Private fields of TWxTreeCtrl }
        { Storage for property EVT_TREE_BEGIN_DRAG }
        FEVT_TREE_BEGIN_DRAG : String;
        { Storage for property EVT_TREE_BEGIN_LABEL_EDIT }
        FEVT_TREE_BEGIN_LABEL_EDIT : String;
        { Storage for property EVT_TREE_BEGIN_RDRAG }
        FEVT_TREE_BEGIN_RDRAG : String;
        { Storage for property EVT_TREE_DELETE_ITEM }
        FEVT_TREE_DELETE_ITEM : String;
        { Storage for property EVT_TREE_END_LABEL_EDIT }
        FEVT_TREE_END_LABEL_EDIT : String;
        { Storage for property EVT_TREE_GET_INFO }
        FEVT_TREE_GET_INFO : String;
        { Storage for property EVT_TREE_ITEM_ACTIVATED }
        FEVT_TREE_ITEM_ACTIVATED : String;
        { Storage for property EVT_TREE_ITEM_COLLAPSED }
        FEVT_TREE_ITEM_COLLAPSED : String;
        { Storage for property EVT_TREE_ITEM_COLLAPSING }
        FEVT_TREE_ITEM_COLLAPSING : String;
        { Storage for property EVT_TREE_ITEM_EXPANDED }
        FEVT_TREE_ITEM_EXPANDED : String;
        { Storage for property EVT_TREE_ITEM_EXPANDING }
        FEVT_TREE_ITEM_EXPANDING : String;
        { Storage for property EVT_TREE_KEY_DOWN }
        FEVT_TREE_KEY_DOWN : String;
        { Storage for property EVT_TREE_SEL_CHANGED }
        FEVT_TREE_SEL_CHANGED : String;
        { Storage for property EVT_TREE_SEL_CHANGING }
        FEVT_TREE_SEL_CHANGING : String;
        { Storage for property EVT_TREE_SET_INFO }
        FEVT_TREE_SET_INFO : String;
        { Storage for property EVT_UPDATE_UI }
        FEVT_UPDATE_UI : String;
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
        { Storage for property Wx_StrechFactor }
        FWx_StrechFactor : Integer;
        { Storage for property Wx_ToolTip }
        FWx_ToolTip : String;
        { Storage for property Wx_TreeviewStyle }
        FWx_TreeviewStyle : TWxTVStyleSet;
        { Storage for property Wx_VerticalAlignment }
        FWx_VerticalAlignment : TWxSizerVerticalAlignment;
        FWx_EventList : TStringList;
        FWx_PropertyList : TStringList;

      { Private methods of TWxTreeCtrl }
        { Method to set variable and property values and create objects }
        procedure AutoInitialize;
        { Method to free any objects created by AutoInitialize }
        procedure AutoDestroy;

    protected
      { Protected fields of TWxTreeCtrl }

      { Protected methods of TWxTreeCtrl }
        procedure Click; override;
        procedure KeyPress(var Key : Char); override;
        procedure Loaded; override;

    public
      { Public fields and properties of TWxTreeCtrl }

      { Public methods of TWxTreeCtrl }
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
        function GetTypeFromEventName(EventName: string):string;
        function GetWxClassName:String;
        procedure SaveControlOrientation(ControlOrientation:TWxControlOrientation);
        procedure SetIDName(IDName:String);
        procedure SetIDValue(IDValue:longInt);
        procedure SetWxClassName(wxClassName:String);

    published
      { Published properties of TWxTreeCtrl }
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
        property EVT_TREE_BEGIN_DRAG : String
             read FEVT_TREE_BEGIN_DRAG write FEVT_TREE_BEGIN_DRAG;
        property EVT_TREE_BEGIN_LABEL_EDIT : String
             read FEVT_TREE_BEGIN_LABEL_EDIT write FEVT_TREE_BEGIN_LABEL_EDIT;
        property EVT_TREE_BEGIN_RDRAG : String
             read FEVT_TREE_BEGIN_RDRAG write FEVT_TREE_BEGIN_RDRAG;
        property EVT_TREE_DELETE_ITEM : String
             read FEVT_TREE_DELETE_ITEM write FEVT_TREE_DELETE_ITEM;
        property EVT_TREE_END_LABEL_EDIT : String
             read FEVT_TREE_END_LABEL_EDIT write FEVT_TREE_END_LABEL_EDIT;
        property EVT_TREE_GET_INFO : String
             read FEVT_TREE_GET_INFO write FEVT_TREE_GET_INFO;
        property EVT_TREE_ITEM_ACTIVATED : String
             read FEVT_TREE_ITEM_ACTIVATED write FEVT_TREE_ITEM_ACTIVATED;
        property EVT_TREE_ITEM_COLLAPSED : String
             read FEVT_TREE_ITEM_COLLAPSED write FEVT_TREE_ITEM_COLLAPSED;
        property EVT_TREE_ITEM_COLLAPSING : String
             read FEVT_TREE_ITEM_COLLAPSING write FEVT_TREE_ITEM_COLLAPSING;
        property EVT_TREE_ITEM_EXPANDED : String
             read FEVT_TREE_ITEM_EXPANDED write FEVT_TREE_ITEM_EXPANDED;
        property EVT_TREE_ITEM_EXPANDING : String
             read FEVT_TREE_ITEM_EXPANDING write FEVT_TREE_ITEM_EXPANDING;
        property EVT_TREE_KEY_DOWN : String
             read FEVT_TREE_KEY_DOWN write FEVT_TREE_KEY_DOWN;
        property EVT_TREE_SEL_CHANGED : String
             read FEVT_TREE_SEL_CHANGED write FEVT_TREE_SEL_CHANGED;
        property EVT_TREE_SEL_CHANGING : String
             read FEVT_TREE_SEL_CHANGING write FEVT_TREE_SEL_CHANGING;
        property EVT_TREE_SET_INFO : String
             read FEVT_TREE_SET_INFO write FEVT_TREE_SET_INFO;
        property EVT_UPDATE_UI : String
             read FEVT_UPDATE_UI write FEVT_UPDATE_UI;
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
        property Wx_StrechFactor : Integer
             read FWx_StrechFactor write FWx_StrechFactor;
        property Wx_ToolTip : String read FWx_ToolTip write FWx_ToolTip;
        property Wx_TreeviewStyle : TWxTVStyleSet
             read FWx_TreeviewStyle write FWx_TreeviewStyle;
        property Wx_VerticalAlignment : TWxSizerVerticalAlignment
             read FWx_VerticalAlignment write FWx_VerticalAlignment
             default wxSZALIGN_CENTER_VERTICAL;

  end;

procedure Register;

implementation

procedure Register;
begin
     { Register TWxTreeCtrl with Win95 as its
       default page on the Delphi component palette }
     RegisterComponents('Win95', [TWxTreeCtrl]);
end;

{ Method to set variable and property values and create objects }
procedure TWxTreeCtrl.AutoInitialize;
begin
     FWx_EventList := TStringList.Create;
     FWx_PropertyList := TStringList.Create;
     FWx_Border := 5;
     FWx_Class := 'wxTreeCtrl';
     FWx_Enabled := True;
     FWx_HorizontalAlignment := wxSZALIGN_CENTER_HORIZONTAL;
     FWx_IDValue := -1;
     FWx_VerticalAlignment := wxSZALIGN_CENTER_VERTICAL;
end; { of AutoInitialize }

{ Method to free any objects created by AutoInitialize }
procedure TWxTreeCtrl.AutoDestroy;
begin
     FWx_EventList.Free;
     FWx_PropertyList.Free;
end; { of AutoDestroy }

{ Override OnClick handler from TTreeView,IWxComponentInterface }
procedure TWxTreeCtrl.Click;
begin
     { Code to execute before activating click
       behavior of component's parent class }

     { Activate click behavior of parent }
     inherited Click;

     { Code to execute after click behavior
       of parent }

end;

{ Override OnKeyPress handler from TTreeView,IWxComponentInterface }
procedure TWxTreeCtrl.KeyPress(var Key : Char);
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

constructor TWxTreeCtrl.Create(AOwner: TComponent);
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
     FWx_PropertyList.add('Wx_TreeviewStyle :Treeview Style');
     FWx_PropertyList.add('Wx_Hidden :Hidden');
     FWx_PropertyList.add('Items :Items');
     FWx_PropertyList.add('Columns :Columns');
     FWx_PropertyList.add('Wx_Border : Border ');
     FWx_PropertyList.add('Wx_Default :WxDefault ');
     FWx_PropertyList.add('Wx_HelpText :HelpText ');
     FWx_PropertyList.add('Wx_IDName : IDName ');
     FWx_PropertyList.add('Wx_IDValue : IDValue ');
     FWx_PropertyList.add('Wx_ToolTip :ToolTip ');
     FWx_PropertyList.add('Text:Text');
     FWx_PropertyList.add('Name:Name');
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
     
     FWx_PropertyList.add('Wx_TreeViewStyle : TreeView Styles');
     FWx_PropertyList.Add('wxTR_EDIT_LABELS:wxTR_EDIT_LABELS');
     FWx_PropertyList.Add('wxTR_NO_BUTTONS:wxTR_NO_BUTTONS');
     FWx_PropertyList.Add('wxTR_HAS_BUTTONS:wxTR_HAS_BUTTONS');
     FWx_PropertyList.Add('wxTR_TWIST_BUTTONS:wxTR_TWIST_BUTTONS');
     FWx_PropertyList.Add('wxTR_NO_LINES:wxTR_NO_LINES');
     FWx_PropertyList.Add('wxTR_FULL_ROW_HIGHLIGHT:wxTR_FULL_ROW_HIGHLIGHT');
     FWx_PropertyList.Add('wxTR_LINES_AT_ROOT:wxTR_LINES_AT_ROOT');
     FWx_PropertyList.Add('wxTR_HIDE_ROOT:wxTR_HIDE_ROOT');
     FWx_PropertyList.Add('wxTR_ROW_LINES:wxTR_ROW_LINES');
     FWx_PropertyList.Add('wxTR_HAS_VARIABLE_ROW_HEIGHT:wxTR_HAS_VARIABLE_ROW_HEIGHT');
     FWx_PropertyList.Add('wxTR_SINGLE:wxTR_SINGLE');
     FWx_PropertyList.Add('wxTR_MULTIPLE:wxTR_MULTIPLE');
     FWx_PropertyList.Add('wxTR_EXTENDED:wxTR_EXTENDED');
     FWx_PropertyList.Add('wxTR_DEFAULT_STYLE:wxTR_DEFAULT_STYLE');

     FWx_PropertyList.add('Font : Font');
     FWx_PropertyList.add('Color : Color ');

     FWx_PropertyList.add('Checked : Checked');
     FWx_PropertyList.add('Wx_RadioButtonStyle:Radio Button Style');

     FWx_PropertyList.add('wxRB_GROUP:wxRB_GROUP');
     FWx_PropertyList.add('wxRB_SINGLE:wxRB_SINGLE');

     FWx_PropertyList.add('Wx_HorizontalAlignment : HorizontalAlignment');
     FWx_PropertyList.add('Wx_VerticalAlignment   : VerticalAlignment');


    FWx_EventList.add('EVT_TREE_SEL_CHANGED   :  OnSelChanged ');
    FWx_EventList.add('EVT_TREE_SEL_CHANGING   :  OnSelChanging ');
    FWx_EventList.add('EVT_TREE_BEGIN_DRAG   :  OnBeginDrag ');
    FWx_EventList.add('EVT_TREE_BEGIN_RDRAG   :  OnBeginRDrag ');
    FWx_EventList.add('EVT_TREE_BEGIN_LABEL_EDIT   :  OnBeginLabelEdit ');
    FWx_EventList.add('EVT_TREE_END_LABEL_EDIT   :  OnEndLabelEdit');
    FWx_EventList.add('EVT_TREE_DELETE_ITEM   :  OnDeleteItem ');
    FWx_EventList.add('EVT_TREE_GET_INFO   :  OnGetInfo');
    FWx_EventList.add('EVT_TREE_SET_INFO   :  OnSetInfo ');
    FWx_EventList.add('EVT_TREE_ITEM_ACTIVATED   :  OnItemActivated');
    FWx_EventList.add('EVT_TREE_ITEM_COLLAPSED   :  OnItemCollapsed');
    FWx_EventList.add('EVT_TREE_ITEM_COLLAPSING   :  OnItemCollapsing');
    FWx_EventList.add('EVT_TREE_ITEM_EXPANDED   :  OnItemExpanded');
    FWx_EventList.add('EVT_TREE_ITEM_EXPANDING   :  OnItemExpanding');
    FWx_EventList.add('EVT_TREE_KEY_DOWN   :  OnKeyDown');
    FWx_EventList.add('EVT_UPDATE_UI   :  OnUpdate');

end;

destructor TWxTreeCtrl.Destroy;
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

function TWxTreeCtrl.GenerateControlIDs:String;
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

function TWxTreeCtrl.GenerateEventTableEntries(CurrClassName:String):String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='';

     if trim(EVT_TREE_SEL_CHANGED) <> '' then
     begin
          Result:=Format('EVT_TREE_SEL_CHANGED(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_SEL_CHANGED]) +'';
     end;

     if trim(EVT_TREE_SEL_CHANGING) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_SEL_CHANGING(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_SEL_CHANGING]) +'';
     end;
     if trim(EVT_TREE_BEGIN_DRAG) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_BEGIN_DRAG(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_BEGIN_DRAG]) +'';
     end;

     if trim(EVT_TREE_BEGIN_RDRAG) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_BEGIN_RDRAG(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_BEGIN_RDRAG]) +'';
     end;
     if trim(EVT_TREE_BEGIN_LABEL_EDIT) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_BEGIN_LABEL_EDIT(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_BEGIN_LABEL_EDIT]) +'';
     end;

     if trim(EVT_TREE_END_LABEL_EDIT) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_END_LABEL_EDIT(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_END_LABEL_EDIT]) +'';
     end;
     if trim(EVT_TREE_DELETE_ITEM) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_DELETE_ITEM(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_DELETE_ITEM]) +'';
     end;

     if trim(EVT_TREE_GET_INFO) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_GET_INFO(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_GET_INFO]) +'';
     end;
     if trim(EVT_TREE_SET_INFO) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_SET_INFO(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_SET_INFO]) +'';
     end;

     if trim(EVT_TREE_ITEM_ACTIVATED) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_ITEM_ACTIVATED(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_ITEM_ACTIVATED]) +'';
     end;
     if trim(EVT_TREE_ITEM_COLLAPSED) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_ITEM_COLLAPSED(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_ITEM_COLLAPSED]) +'';
     end;

     if trim(EVT_TREE_ITEM_COLLAPSING) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_ITEM_COLLAPSING(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_ITEM_COLLAPSING]) +'';
     end;
     if trim(EVT_TREE_ITEM_EXPANDED) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_ITEM_EXPANDED(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_ITEM_EXPANDED]) +'';
     end;

     if trim(EVT_TREE_ITEM_EXPANDING) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_ITEM_EXPANDING(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_ITEM_EXPANDING]) +'';
     end;
     if trim(EVT_TREE_KEY_DOWN) <> '' then
     begin
          Result:=Result+#13+Format('EVT_TREE_KEY_DOWN(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_TREE_KEY_DOWN]) +'';
     end;

     if trim(EVT_UPDATE_UI) <> '' then
     begin
          Result:=Result+#13+Format('EVT_UPDATE_UI(%s,%s::%s)',[WX_IDName,CurrClassName,EVT_UPDATE_UI]) +'';
     end;

end;

function TWxTreeCtrl.GenerateGUIControlCreation:String;
var
     strStyle,parentName,strAlignment:String;
begin
     Result:='';
    if (self.Parent is TForm) or (self.Parent is TWxSizerPanel) then
       parentName:='this'
    else
       parentName:=self.Parent.name;

    strStyle:=GetTreeViewSpecificStyle(self.Wx_GeneralStyle,Wx_TreeviewStyle);

    Result:=Format('%s =  new %s(%s, %s, wxPoint(%d,%d),wxSize(%d,%d) %s);',[self.Name,self.wx_Class,parentName,GetWxIDString(self.Wx_IDName,self.Wx_IDValue),self.Left,self.Top,self.width,self.Height,strStyle] );

    if trim(self.Wx_ToolTip) <> '' then
        Result:=Result + #13+Format('%s->SetToolTip(wxT("%s"));',[self.Name,self.Wx_ToolTip]);

    if self.Wx_Hidden then
        Result:=Result + #13+Format('%s->Show(false);',[self.Name]);

    if not Wx_Enabled then
        Result:=Result + #13+Format('%s->Enable(false);',[self.Name]);

    if trim(self.Wx_HelpText) <> '' then
        Result:=Result +#13+Format('%s->SetHelpText(_("%s"));',[self.Name,self.Wx_HelpText]);

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

function TWxTreeCtrl.GenerateGUIControlDeclaration:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=Format('%s *%s;',[Self.wx_Class,Self.Name]);
end;

function TWxTreeCtrl.GenerateHeaderInclude:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:='#include <wx/treectrl.h>';
end;

function TWxTreeCtrl.GenerateImageInclude: string;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin

end;

function TWxTreeCtrl.GetEventList:TStringlist;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
result:=FWx_EventList;
end;

function TWxTreeCtrl.GetIDName:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=wx_IDName;
end;

function TWxTreeCtrl.GetIDValue:LongInt;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=wx_IDValue;
end;

function TWxTreeCtrl.GetParameterFromEventName(EventName: string):String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
if EventName = 'EVT_TREE_SEL_CHANGED' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_SEL_CHANGING' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_BEGIN_DRAG' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_BEGIN_RDRAG' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_BEGIN_LABEL_EDIT' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_END_LABEL_EDIT' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_DELETE_ITEM' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_GET_INFO' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_SET_INFO' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_ITEM_ACTIVATED' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_ITEM_COLLAPSED' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_ITEM_COLLAPSING' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_ITEM_EXPANDED' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_ITEM_EXPANDING' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_TREE_KEY_DOWN' then
begin
 Result:='wxTreeEvent& event';
 exit;
end;
if EventName = 'EVT_UPDATE_UI' then
begin
 Result:='wxUpdateUIEvent& event';
 exit;
end;
end;

function TWxTreeCtrl.GetPropertyList:TStringList;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Result:=FWx_PropertyList;
end;

function TWxTreeCtrl.GetTypeFromEventName(EventName: string):string;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin

end;

function TWxTreeCtrl.GetWxClassName:String;
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     if wx_Class = '' then
        wx_Class:='wxTreeCtrl';
     Result:=wx_Class;
end;

procedure TWxTreeCtrl.Loaded;
begin
     inherited Loaded;

     { Perform any component setup that depends on the property
       values having been set }

end;

procedure TWxTreeCtrl.SaveControlOrientation(ControlOrientation:TWxControlOrientation);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     wx_ControlOrientation:=ControlOrientation;
end;

procedure TWxTreeCtrl.SetIDName(IDName:String);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     wx_IDName:=IDName;
end;

procedure TWxTreeCtrl.SetIDValue(IDValue:longInt);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     Wx_IDValue:=IDVAlue;
end;

procedure TWxTreeCtrl.SetWxClassName(wxClassName:String);
     { Internal declarations for method }
     { type }
     { . . . }
     { var }
     { . . . }
begin
     wx_Class:=wxClassName;
end;


end.