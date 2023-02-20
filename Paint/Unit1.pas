unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus;

type
  TForm1 = class(TForm)
    ImageCanvas: TImage;
    procedure FormCreate(Sender: TObject);
    procedure ImageCanvasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageCanvasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageCanvasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}


var
  pen: bool;

  
procedure TForm1.FormCreate(Sender: TObject);
begin
  pen:= false;
  ImageCanvas.Canvas.Pen.Width:= 1;
end;


procedure TForm1.ImageCanvasMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pen:= true;
  Canvas.MoveTo(X + 32, Y + 24);
end;


procedure TForm1.ImageCanvasMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if pen then
  begin
    Canvas.LineTo(X + 32, Y + 24);
  end;
end;


procedure TForm1.ImageCanvasMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pen:= false;
end;

end.
