unit Capacitancia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm2 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label16: TLabel;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label28: TLabel;
    Edit9: TEdit;
    Edit10: TEdit;
    Edit11: TEdit;
    Button2: TButton;
    GroupBox3: TGroupBox;
    Label20: TLabel;
    Label25: TLabel;
    Edit12: TEdit;
    GroupBox4: TGroupBox;
    Label21: TLabel;
    Label22: TLabel;
    Edit13: TEdit;
    GroupBox5: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Edit14: TEdit;
    GroupBox6: TGroupBox;
    Label29: TLabel;
    Label30: TLabel;
    Edit15: TEdit;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Principal;

{$R *.dfm}

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form1.Show;
  Form2.Close;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  ShowMessage('Calcular Reatâncias Capacitivas');
end;

end.
