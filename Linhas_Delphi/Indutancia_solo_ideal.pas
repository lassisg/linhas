unit Indutancia_solo_ideal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm4 = class(TForm)
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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Principal;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  Form1.Show;
  Form4.Close;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
  ShowMessage('Calcular Reatâncias Indutivas (solo ideal)');
end;

end.
