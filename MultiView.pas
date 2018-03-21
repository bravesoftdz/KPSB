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
  FMXTee.Engine, FMXTee.Series, FMXTee.Procs, FMXTee.Chart;

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
    content1a: TPanel;
    Button1: TButton;
    content1b: TPanel;
    footer1b: TPanel;
    Button2: TButton;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    StyleBook1: TStyleBook;
    ListBoxItem6: TListBoxItem;
    Label1: TLabel;
    PrototypeBindSource1: TPrototypeBindSource;
    BindingsList1: TBindingsList;
    LinkFillControlToField1: TLinkFillControlToField;
    ListView1: TListView;
    LinkFillControlToField2: TLinkFillControlToField;
    ActionList1: TActionList;
    headRoute: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dashboard: TVertScrollBox;
    Panel3: TPanel;
    Chart1: TChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Chart2: TChart;
    BarSeries1: TBarSeries;
    BarSeries2: TBarSeries;
    Chart3: TChart;
    BarSeries3: TBarSeries;
    BarSeries4: TBarSeries;
    procedure ListBoxItem1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListBoxItem2Click(Sender: TObject);
    procedure ListBoxItem3Click(Sender: TObject);
    procedure ListBoxItem4Click(Sender: TObject);
    procedure ListBoxItem5Click(Sender: TObject);
    procedure ListBoxItem6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
//  content1b.BringToFront;
  content1b.Visible:=true;
  content1a.Visible:=false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
//  content1a.BringToFront;
  content1a.Visible:=true;
  content1b.Visible:=false;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  multiview1.HideMaster;
end;

procedure TForm1.ListBoxItem1Click(Sender: TObject);
begin
  multiview1.HideMaster;
  label1.Text:='Route';
  content1b.Visible:=true;
  content1a.Visible:=false;
  dashboard.Visible:=false;
end;

procedure TForm1.ListBoxItem2Click(Sender: TObject);
begin
    multiview1.HideMaster;
    label1.Text:='Sales and Service';
    content1b.Visible:=false;
    content1a.Visible:=false;
    dashboard.Visible:=false;
end;


procedure TForm1.ListBoxItem3Click(Sender: TObject);
begin
    multiview1.HideMaster;
    label1.Text:='PAF';
    content1b.Visible:=false;
    content1a.Visible:=false;
    dashboard.Visible:=false;
end;

procedure TForm1.ListBoxItem4Click(Sender: TObject);
begin
    multiview1.HideMaster;
    label1.Text:='Orders and Delivery';
    content1b.Visible:=false;
    content1a.Visible:=false;
    dashboard.Visible:=false;
end;

procedure TForm1.ListBoxItem5Click(Sender: TObject);
begin
    multiview1.HideMaster;
    label1.Text:='Customer and Aging';
    content1b.Visible:=false;
    content1a.Visible:=false;
    dashboard.Visible:=false;
end;

procedure TForm1.ListBoxItem6Click(Sender: TObject);
begin
    multiview1.HideMaster;
    label1.Text:='Dashboard';
    content1b.Visible:=false;
    content1a.Visible:=false;
    dashboard.Visible:=true;
end;

end.
