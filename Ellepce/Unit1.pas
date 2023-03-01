unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button: TButton;
    Image: TImage;
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
  Image.Canvas.Pen.Color:= random($FFFFFF);
  Image.Canvas.Ellipse(random(250), random(250), random(533), random(500));
end;


initialization
randomize;
end.
