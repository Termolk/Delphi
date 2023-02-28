object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Paint'
  ClientHeight = 426
  ClientWidth = 648
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object ImageCanvas: TImage
    Left = 16
    Top = 33
    Width = 577
    Height = 345
    OnMouseDown = ImageCanvasMouseDown
    OnMouseMove = ImageCanvasMouseMove
    OnMouseUp = ImageCanvasMouseUp
  end
  object SpinEditWidth: TSpinEdit
    Left = 472
    Top = 384
    Width = 121
    Height = 22
    AutoSelect = False
    AutoSize = False
    Ctl3D = True
    MaxValue = 0
    MinValue = 0
    ParentCtl3D = False
    TabOrder = 0
    Value = 1
    OnChange = SpinEditWidthChange
  end
  object MainMenu1: TMainMenu
    Left = 8
    object FileMenuItem: TMenuItem
      Caption = 'File'
      object FileOpenMenuItem: TMenuItem
        Caption = 'Open'
        OnClick = FileOpenMenuItemClick
      end
      object FileSaveMenuItem: TMenuItem
        Caption = 'Save'
        OnClick = FileSaveMenuItemClick
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
    object EditMenuItem: TMenuItem
      Caption = 'Edit'
      object EditColorMenuItem: TMenuItem
        Caption = 'Change color'
        OnClick = EditColorMenuItemClick
      end
    end
  end
  object ColorDialog: TColorDialog
    CustomColors.Strings = (
      'ColorA=FFFFFFFF'
      'ColorB=FFFFFFFF'
      'ColorC=FFFFFFFF'
      'ColorD=FFFFFFFF'
      'ColorE=FFFFFFFF'
      'ColorF=FFFFFFFF'
      'ColorG=FFFFFFFF'
      'ColorH=FFFFFFFF'
      'ColorI=FFFFFFFF'
      'ColorJ=FFFFFFFF'
      'ColorK=FFFFFFFF'
      'ColorL=FFFFFFFF'
      'ColorM=FFFFFFFF'
      'ColorN=FFFFFFFF'
      'ColorO=FFFFFFFF'
      'ColorP=FFFFFFFF')
    Options = [cdPreventFullOpen]
    Left = 40
  end
  object SavePictureDialog: TSavePictureDialog
    Options = [ofCreatePrompt, ofEnableSizing]
    Left = 104
  end
  object OpenPictureDialog: TOpenPictureDialog
    Options = [ofReadOnly, ofOverwritePrompt, ofHideReadOnly, ofEnableSizing]
    Left = 72
  end
end
