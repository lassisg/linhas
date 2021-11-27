unit Principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Button1: TButton;
    Button2: TButton;
    Label20: TLabel;
    ComboBox1: TComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cs: Real;
    ac: Real;
    pa: Real;
    f: Real;
    Lbc: Real;
    Fmc: Real;
    Fmp: Real;
    Dsc: Real;
    Dsp: Real;
  end;

var
  Form1: TForm1;

implementation

uses Capacitancia, Indutancia_sem_solo, Indutancia_solo_ideal,
  Indutancia_solo_real, Resistencia;

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form1.Close;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  cs:=StrToFloat(Edit1.Text);
  ac:=StrToFloat(Edit2.Text);
  pa:=StrToFloat(Edit3.Text);
  f:=StrToFloat(Edit4.Text);
  Lbc:=StrToFloat(Edit5.Text);
  Fmc:=StrToFloat(Edit6.Text);
  Fmp:=StrToFloat(Edit7.Text);
  Dsc:=StrToFloat(Edit8.Text);
  Dsp:=StrToFloat(Edit9.Text);
  Case ComboBox1.ItemIndex of
    0:Form2.Show;   //  Reatância Capacitiva
    1:Form3.Show;   //  Reatância Indutiva - Sem solo
    2:Form4.Show;   //  Reatância Indutiva - Solo Ideal
    3:Form5.Show;   //  Reatância Indutiva - Solo Real
    4:Form6.Show;   //  Resistência
  End;
  Form1.Hide;
end;

end.
