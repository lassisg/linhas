unit Indutancia_sem_solo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm3 = class(TForm)
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
  Form3: TForm3;

implementation

uses Principal;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  Form1.Show;
  Form3.Close;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  ShowMessage('Calcular Reatâncias Indutivas (sem solo)');
end;

end.
