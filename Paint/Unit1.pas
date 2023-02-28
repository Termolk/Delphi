unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Menus, Vcl.StdCtrls,
  Vcl.Samples.Spin, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls, Vcl.ActnMenus,
  Vcl.ExtDlgs;

type
  TForm1 = class(TForm)
    ImageCanvas: TImage;
    SpinEditWidth: TSpinEdit;
    MainMenu1: TMainMenu;
    FileMenuItem: TMenuItem;
    EditMenuItem: TMenuItem;
    EditColorMenuItem: TMenuItem;
    FileOpenMenuItem: TMenuItem;
    FileSaveMenuItem: TMenuItem;
    ColorDialog: TColorDialog;
    Exit1: TMenuItem;
    SavePictureDialog: TSavePictureDialog;
    OpenPictureDialog: TOpenPictureDialog;
    procedure FormCreate(Sender: TObject);
    procedure ImageCanvasMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure ImageCanvasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ImageCanvasMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpinEditWidthChange(Sender: TObject);
    procedure EditColorMenuItemClick(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure FileSaveMenuItemClick(Sender: TObject);
    procedure FileOpenMenuItemClick(Sender: TObject);
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
  widthPen: Integer;
  colorPen: TColor;






procedure TForm1.FormCreate(Sender: TObject);
begin
  pen:= false;
  ImageCanvas.Canvas.Pen.Width:= widthPen;
end;


procedure TForm1.ImageCanvasMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  ImageCanvas.Canvas.Pen.Width:= widthPen;
  ImageCanvas.Canvas.Pen.Color:= colorPen;
  pen:= true;
  ImageCanvas.Canvas.MoveTo(X, Y);
end;


procedure TForm1.ImageCanvasMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if pen then
  begin
    ImageCanvas.Canvas.LineTo(X, Y);
  end;
end;


procedure TForm1.ImageCanvasMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  pen:= false;
end;


procedure TForm1.SpinEditWidthChange(Sender: TObject);
begin
  widthPen:= StrToInt(SpinEditWidth.Text);
end;


procedure TForm1.FileOpenMenuItemClick(Sender: TObject);
begin
  if OpenPictureDialog.Execute() then
  begin
    ImageCanvas.Picture.LoadFromFile(OpenPictureDialog.FileName);
  end;
end;


procedure TForm1.FileSaveMenuItemClick(Sender: TObject);
begin
  if SavePictureDialog.Execute() then
  begin
    ImageCanvas.Picture.SaveToFile(SavePictureDialog.FileName);
  end;
end;


procedure TForm1.Exit1Click(Sender: TObject);
begin
  Close();
end;


procedure TForm1.EditColorMenuItemClick(Sender: TObject);
begin
  ColorDialog.Execute();
  colorPen:= ColorDialog.Color;
end;


end.
