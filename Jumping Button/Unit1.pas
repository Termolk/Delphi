unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button: TButton;
    procedure ButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}



procedure TForm1.ButtonClick(Sender: TObject);
begin
  Button.Width:= random(90)+10;
  Button.Height:= random(90)+10;
  Button.Top:= random(430);
  Button.Left:= random(800);
  if Button.Top+Button.Height>=600 then Button.Height:=600-Button.Top;
 if Button.Left+Button.Width>=600 then Button.Width:=600-Button.Left;
 Form1.Color:=random($FFFFFF);
end;

initialization
randomize;


end.
