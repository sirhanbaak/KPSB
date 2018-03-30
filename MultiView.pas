unit MultiView;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.MultiView, FMX.Controls.Presentation, FMX.ListBox, FMX.Layouts,FMX.Objects,
  Data.Bind.GenData, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, System.Rtti, System.Bindings.Outputs,
  Fmx.Bind.Editors, Data.Bind.EngExt, Fmx.Bind.DBEngExt, Data.Bind.Components,
  FMX.ListView, Data.Bind.ObjectScope, System.Actions, FMX.ActnList,
  FMX.Platform,FMX.VirtualKeyboard,FMX.Helpers.Android, Fmx.Bind.GenData,
  FMXTee.Engine, FMXTee.Series, FMXTee.Procs, FMXTee.Chart, FMX.TabControl;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SpeedButton1: TSpeedButton;
    MultiView1: TMultiView;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    footer1a: TPanel;
    Button1: TButton;
    footer1b: TPanel;
    Button2: TButton;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    StyleBook1: TStyleBook;
    ListBoxItem6: TListBoxItem;
    Label1: TLabel;
    routelistsource: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    ListView1: TListView;
    headRoute: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    tabRoute: TTabControl;
    tabRouteList: TTabItem;
    tabRouteSetup: TTabItem;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    ChangeTabAction2: TChangeTabAction;
    tabRoutePlan: TTabItem;
    tabRoutePlanInfo: TTabItem;
    Button3: TButton;
    Panel3: TPanel;
    Button4: TButton;
    Panel4: TPanel;
    Button5: TButton;
    ChangeTabAction3: TChangeTabAction;
    ChangeTabAction4: TChangeTabAction;
    ChangeTabAction5: TChangeTabAction;
    Button6: TButton;
    ChangeTabAction6: TChangeTabAction;
    GridPanelLayout1: TGridPanelLayout;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    LinkListControlToField1: TLinkListControlToField;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldText2: TLinkPropertyToField;
    LinkPropertyToFieldText3: TLinkPropertyToField;
    routesetup: TPrototypeBindSource;
    ListView2: TListView;
    Panel5: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    LinkListControlToField2: TLinkListControlToField;
    Panel6: TPanel;
    Label14: TLabel;
    routeplan: TPrototypeBindSource;
    ListView3: TListView;
    Panel7: TPanel;
    Label15: TLabel;
    LinkListControlToField3: TLinkListControlToField;
    GridPanelLayout2: TGridPanelLayout;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    routeinfo: TPrototypeBindSource;
    Panel8: TPanel;
    ListView4: TListView;
    LinkListControlToField4: TLinkListControlToField;
    Label22: TLabel;
    LinkPropertyToFieldText4: TLinkPropertyToField;
    LinkPropertyToFieldText5: TLinkPropertyToField;
    LinkPropertyToFieldText6: TLinkPropertyToField;
    tabpaf: TTabControl;
    tabpaflist: TTabItem;
    tabpafdetail: TTabItem;
    Panel9: TPanel;
    Label23: TLabel;
    Panel10: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Panel11: TPanel;
    Button7: TButton;
    ListView5: TListView;
    paflist: TPrototypeBindSource;
    LinkListControlToField5: TLinkListControlToField;
    ChangeTabAction7: TChangeTabAction;
    pafdetail: TPrototypeBindSource;
    Panel12: TPanel;
    GridPanelLayout3: TGridPanelLayout;
    Panel13: TPanel;
    ListView6: TListView;
    Panel14: TPanel;
    Panel15: TPanel;
    Label29: TLabel;
    Image1: TImage;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    Label30: TLabel;
    LinkListControlToField6: TLinkListControlToField;
    Button8: TButton;
    ChangeTabAction8: TChangeTabAction;
    tabOrders: TTabControl;
    tabsalesorder: TTabItem;
    taborderlines: TTabItem;
    order: TPrototypeBindSource;
    Panel16: TPanel;
    Panel17: TPanel;
    ListView7: TListView;
    Panel18: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    LinkListControlToField7: TLinkListControlToField;
    Button9: TButton;
    ChangeTabAction9: TChangeTabAction;
    Panel19: TPanel;
    GridPanelLayout4: TGridPanelLayout;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Panel20: TPanel;
    Panel21: TPanel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Panel22: TPanel;
    ListView8: TListView;
    Button10: TButton;
    ChangeTabAction10: TChangeTabAction;
    orderline: TPrototypeBindSource;
    LinkListControlToField8: TLinkListControlToField;
    LinkPropertyToFieldText7: TLinkPropertyToField;
    LinkPropertyToFieldText8: TLinkPropertyToField;
    LinkPropertyToFieldText9: TLinkPropertyToField;
    LinkPropertyToFieldText10: TLinkPropertyToField;
    LinkPropertyToFieldText11: TLinkPropertyToField;
    LinkPropertyToFieldText12: TLinkPropertyToField;
    tabCustomer: TTabControl;
    tabsearchcust: TTabItem;
    tabcustinfo: TTabItem;
    ListView9: TListView;
    Panel23: TPanel;
    Panel24: TPanel;
    Button11: TButton;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Panel25: TPanel;
    customer: TPrototypeBindSource;
    LinkListControlToField9: TLinkListControlToField;
    Panel26: TPanel;
    GridPanelLayout5: TGridPanelLayout;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label72: TLabel;
    Panel27: TPanel;
    Panel28: TPanel;
    ListView10: TListView;
    Label73: TLabel;
    Button12: TButton;
    ChangeTabAction11: TChangeTabAction;
    LinkPropertyToFieldText13: TLinkPropertyToField;
    LinkPropertyToFieldText14: TLinkPropertyToField;
    LinkPropertyToFieldText15: TLinkPropertyToField;
    LinkPropertyToFieldText16: TLinkPropertyToField;
    LinkPropertyToFieldText17: TLinkPropertyToField;
    Button13: TButton;
    ChangeTabAction12: TChangeTabAction;
    custinfo: TPrototypeBindSource;
    Panel29: TPanel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    LinkListControlToField10: TLinkListControlToField;
    tabDashboard: TTabControl;
    tabDash1: TTabItem;
    dashboard: TVertScrollBox;
    Panel30: TPanel;
    Chart1: TChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Chart2: TChart;
    BarSeries1: TBarSeries;
    BarSeries2: TBarSeries;
    Chart3: TChart;
    BarSeries3: TBarSeries;
    BarSeries4: TBarSeries;
    tabService: TTabControl;
    tabRetailer: TTabItem;
    tabRetailDetail: TTabItem;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Label79: TLabel;
    Button14: TButton;
    Label80: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    Panel34: TPanel;
    Button15: TButton;
    ListView11: TListView;
    ChangeTabAction13: TChangeTabAction;
    sales: TPrototypeBindSource;
    LinkListControlToField11: TLinkListControlToField;
    Panel35: TPanel;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    Panel36: TPanel;
    Label87: TLabel;
    GridPanelLayout6: TGridPanelLayout;
    Label88: TLabel;
    Label89: TLabel;
    Label90: TLabel;
    Label91: TLabel;
    Label92: TLabel;
    Label93: TLabel;
    Panel37: TPanel;
    Label94: TLabel;
    GridPanelLayout7: TGridPanelLayout;
    Button19: TButton;
    Button20: TButton;
    Button21: TButton;
    Button22: TButton;
    Panel38: TPanel;
    Label95: TLabel;
    Panel39: TPanel;
    Button23: TButton;
    ChangeTabAction14: TChangeTabAction;
    GridPanelLayout8: TGridPanelLayout;
    GridPanelLayout9: TGridPanelLayout;
    Label103: TLabel;
    Label105: TLabel;
    Label108: TLabel;
    Label110: TLabel;
    LinkPropertyToFieldText18: TLinkPropertyToField;
    LinkPropertyToFieldText19: TLinkPropertyToField;
    LinkPropertyToFieldText20: TLinkPropertyToField;
    LinkPropertyToFieldText21: TLinkPropertyToField;
    LinkPropertyToFieldText22: TLinkPropertyToField;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    CheckBox5: TCheckBox;
    CheckBox6: TCheckBox;
    CheckBox7: TCheckBox;
    CheckBox8: TCheckBox;
    CheckBox9: TCheckBox;
    CheckBox10: TCheckBox;
    CheckBox11: TCheckBox;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    Label104: TLabel;
    Label106: TLabel;
    Label107: TLabel;
    Label109: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    LinkPropertyToFieldText23: TLinkPropertyToField;
    LinkPropertyToFieldText24: TLinkPropertyToField;
    LinkPropertyToFieldText25: TLinkPropertyToField;
    LinkPropertyToFieldText26: TLinkPropertyToField;
    LinkPropertyToFieldText27: TLinkPropertyToField;
    LinkPropertyToFieldText28: TLinkPropertyToField;
    LinkPropertyToFieldText29: TLinkPropertyToField;
    LinkPropertyToFieldText30: TLinkPropertyToField;
    LinkPropertyToFieldText31: TLinkPropertyToField;
    LinkPropertyToFieldText32: TLinkPropertyToField;
    LinkPropertyToFieldText33: TLinkPropertyToField;
    Label115: TLabel;
    procedure ListBoxItem1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
    procedure ListBoxItem4Click(Sender: TObject);
    procedure ListBoxItem5Click(Sender: TObject);
    procedure ListBoxItem6Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button11Click(Sender: TObject);
begin
  if button1.Text='Search Customer' then
  begin
    listview9.SearchVisible:=true;
    button1.Text:='Search Closed';
  end
  else
  begin
    listview9.SearchVisible:=false;
    button1.Text:='Search Customer';
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  multiview1.HideMaster;
  tabroute.TabPosition:=ttabposition.None;
  tabpaf.TabPosition:=ttabposition.None;
  taborders.TabPosition:=ttabposition.None;
  tabcustomer.TabPosition:=ttabposition.None;
  tabdashboard.TabPosition:=ttabposition.None;
  tabservice.TabPosition:=ttabposition.None;
end;

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
  multiview1.HideMaster;
  label1.Text:='Route';
  tabroute.Visible:=true;
    tabpaf.Visible:=false;
    taborders.Visible:=false;
    tabcustomer.Visible:=false;
    tabdashboard.Visible:=false;
    tabservice.Visible:=false;
end;

procedure TForm1.ListBoxItem2Click(Sender: TObject);
begin
  multiview1.HideMaster;
  label1.Text:='Sales and Service';
  tabroute.Visible:=false;
    tabpaf.Visible:=false;
    taborders.Visible:=false;
    tabcustomer.Visible:=false;
    tabdashboard.Visible:=false;
    tabservice.Visible:=true;
end;


procedure TForm1.ListBoxItem3Click(Sender: TObject);
begin
    multiview1.HideMaster;
    label1.Text:='PAF';
    tabroute.Visible:=false;
    tabpaf.Visible:=true;
    taborders.Visible:=false;
    tabcustomer.Visible:=false;
    tabdashboard.Visible:=false;
    tabservice.Visible:=false;
end;

procedure TForm1.ListBoxItem4Click(Sender: TObject);
begin
    multiview1.HideMaster;
    label1.Text:='Orders and Delivery';
    tabroute.Visible:=false;
    tabpaf.Visible:=false;
    taborders.Visible:=true;
    tabcustomer.Visible:=false;
    tabdashboard.Visible:=false;
    tabservice.Visible:=false;
end;

procedure TForm1.ListBoxItem5Click(Sender: TObject);
begin
    multiview1.HideMaster;
    label1.Text:='Customer and Aging';
  tabroute.Visible:=false;
    tabpaf.Visible:=false;
    taborders.Visible:=false;
    tabcustomer.Visible:=true;
    tabdashboard.Visible:=false;
    tabservice.Visible:=false;
end;

procedure TForm1.ListBoxItem6Click(Sender: TObject);
begin
    multiview1.HideMaster;
    label1.Text:='Dashboard';
  tabroute.Visible:=false;
    tabpaf.Visible:=false;
    taborders.Visible:=false;
    tabcustomer.Visible:=false;
    tabdashboard.Visible:=true;
    tabservice.Visible:=false;
end;

end.
