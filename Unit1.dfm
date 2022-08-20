object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1050#1072#1083#1100#1082#1091#1083#1103#1090#1086#1088
  ClientHeight = 423
  ClientWidth = 273
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
  object Label1: TLabel
    Left = 200
    Top = 56
    Width = 31
    Height = 13
    Caption = 'Label1'
  end
  object calculatorEdit: TEdit
    Left = 0
    Top = 0
    Width = 273
    Height = 21
    Align = alTop
    TabOrder = 0
    OnClick = calculatorEditClick
    OnKeyPress = calculatorEditKeyPress
  end
  object Button1: TButton
    Tag = 1
    Left = 8
    Top = 283
    Width = 57
    Height = 57
    Caption = '1'
    TabOrder = 1
    OnClick = ButtonClick
  end
  object Button2: TButton
    Tag = 2
    Left = 71
    Top = 283
    Width = 57
    Height = 57
    Caption = '2'
    TabOrder = 2
    OnClick = ButtonClick
  end
  object Button3: TButton
    Tag = 3
    Left = 134
    Top = 283
    Width = 57
    Height = 57
    Caption = '3'
    TabOrder = 3
    OnClick = ButtonClick
  end
  object Button4: TButton
    Tag = 4
    Left = 8
    Top = 220
    Width = 57
    Height = 57
    Caption = '4'
    TabOrder = 4
    OnClick = ButtonClick
  end
  object Button5: TButton
    Tag = 5
    Left = 71
    Top = 220
    Width = 57
    Height = 57
    Caption = '5'
    TabOrder = 5
    OnClick = ButtonClick
  end
  object Button6: TButton
    Tag = 6
    Left = 134
    Top = 220
    Width = 57
    Height = 57
    Caption = '6'
    TabOrder = 6
    OnClick = ButtonClick
  end
  object Button7: TButton
    Tag = 7
    Left = 8
    Top = 157
    Width = 57
    Height = 57
    Caption = '7'
    TabOrder = 7
    OnClick = ButtonClick
  end
  object Button8: TButton
    Tag = 8
    Left = 71
    Top = 157
    Width = 57
    Height = 57
    Caption = '8'
    TabOrder = 8
    OnClick = ButtonClick
  end
  object Button9: TButton
    Tag = 9
    Left = 134
    Top = 157
    Width = 57
    Height = 57
    Caption = '9'
    TabOrder = 9
    OnClick = ButtonClick
  end
  object Button10: TButton
    Left = 71
    Top = 346
    Width = 57
    Height = 57
    Caption = '0'
    TabOrder = 10
    OnClick = ButtonClick
  end
  object ButtonClear: TButton
    Left = 71
    Top = 31
    Width = 57
    Height = 57
    Caption = 'CE'
    TabOrder = 11
    OnClick = ButtonClearClick
  end
  object ButtonDelete: TButton
    Left = 134
    Top = 31
    Width = 57
    Height = 57
    Caption = 'DEL'
    TabOrder = 12
    OnClick = ButtonDeleteClick
  end
  object ButtonPlus: TButton
    Left = 197
    Top = 94
    Width = 57
    Height = 57
    Caption = '+'
    TabOrder = 13
    OnClick = ButtonPlusClick
  end
  object ButtonMinus: TButton
    Left = 197
    Top = 157
    Width = 57
    Height = 57
    Caption = '-'
    TabOrder = 14
    OnClick = ButtonMinusClick
  end
  object ButtonMultiply: TButton
    Left = 197
    Top = 220
    Width = 57
    Height = 57
    Caption = '*'
    TabOrder = 15
    OnClick = ButtonMultiplyClick
  end
  object ButtonDivide: TButton
    Left = 197
    Top = 283
    Width = 57
    Height = 57
    Caption = '/'
    TabOrder = 16
    OnClick = ButtonDivideClick
  end
  object ButtonEqually: TButton
    Left = 197
    Top = 348
    Width = 57
    Height = 57
    Caption = '='
    TabOrder = 17
    OnClick = ButtonEquallyClick
  end
  object ButtonFloat: TButton
    Left = 134
    Top = 346
    Width = 57
    Height = 57
    Caption = ','
    TabOrder = 18
    OnClick = ButtonFloatClick
  end
  object ButtonPercent: TButton
    Left = 8
    Top = 31
    Width = 57
    Height = 57
    Caption = '%'
    TabOrder = 19
    OnClick = ButtonPercentClick
  end
  object ButtonPart: TButton
    Tag = 1
    Left = 8
    Top = 94
    Width = 57
    Height = 57
    Caption = '1/x'
    TabOrder = 20
    OnClick = ButtonPartClick
  end
  object ButtonSquare: TButton
    Tag = 1
    Left = 71
    Top = 94
    Width = 57
    Height = 57
    Caption = ' x^2'
    TabOrder = 21
    OnClick = ButtonSquareClick
  end
  object ButtonSquareRoot: TButton
    Tag = 1
    Left = 134
    Top = 94
    Width = 57
    Height = 57
    Caption = #8730'x'
    TabOrder = 22
    OnClick = ButtonSquareRootClick
  end
end
