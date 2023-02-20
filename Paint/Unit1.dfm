object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Paint'
  ClientHeight = 427
  ClientWidth = 740
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ImageCanvas: TImage
    Left = 32
    Top = 24
    Width = 577
    Height = 345
    OnMouseDown = ImageCanvasMouseDown
    OnMouseMove = ImageCanvasMouseMove
    OnMouseUp = ImageCanvasMouseUp
  end
end
