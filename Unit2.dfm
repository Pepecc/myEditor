object Form2: TForm2
  Left = 164
  Top = 155
  Width = 763
  Height = 434
  BorderIcons = []
  Color = clAppWorkSpace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 0
    Top = 0
    Width = 755
    Height = 407
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    ParentFont = False
    PopupMenu = PopupMenu1
    ScrollBars = ssVertical
    TabOrder = 0
    WantTabs = True
  end
  object PopupMenu1: TPopupMenu
    Left = 168
    Top = 96
    object Cortar1: TMenuItem
      Caption = 'Cortar'
      OnClick = Cortar1Click
    end
    object Copiar1: TMenuItem
      Caption = 'Copiar'
      OnClick = Copiar1Click
    end
    object Pegar1: TMenuItem
      Caption = 'Pegar'
      OnClick = Pegar1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Colordefondo1: TMenuItem
      Caption = 'Color de fondo'
      OnClick = Colordefondo1Click
    end
    object Fuente1: TMenuItem
      Caption = 'Fuente'
      OnClick = Fuente1Click
    end
  end
end
