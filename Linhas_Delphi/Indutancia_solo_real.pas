unit Indutancia_solo_real;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Button1: TButton;
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
    GroupBox5: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    Edit14: TEdit;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Edit4: TEdit;
    Button3: TButton;
    Label10: TLabel;
    Label11: TLabel;
    Edit5: TEdit;
    Label12: TLabel;
    Label13: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Principal;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  Form1.Show;
  Form5.Close;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  ShowMessage('Calcular Reatâncias Indutivas (solo real - Carson Aproximado)');
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
  ShowMessage('Calcular Reatâncias Indutivas (solo real - Carson Exato)');
end;

end.
