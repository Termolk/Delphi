unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Image: TImage;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  Image.Canvas.MoveTo(random(300), random(300));
  Image.Canvas.Font.Color:= RGB(Random(255), Random(255), Random(255));
  Image.Canvas.Font.Height:= random(50)+10;
  Image.Canvas.TextOut(Image.Canvas.PenPos.X, Image.Canvas.PenPos.Y, 'Hello World!')
end;

initialization
randomize;

end.
