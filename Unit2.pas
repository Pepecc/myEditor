unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus;

type
  TForm2 = class(TForm)
    RichEdit1: TRichEdit;
    PopupMenu1: TPopupMenu;
    Fuente1: TMenuItem;
    Colordefondo1: TMenuItem;
    Copiar1: TMenuItem;
    Cortar1: TMenuItem;
    Pegar1: TMenuItem;
    N1: TMenuItem;
    procedure Cortar1Click(Sender: TObject);
    procedure Copiar1Click(Sender: TObject);
    procedure Pegar1Click(Sender: TObject);
    procedure Colordefondo1Click(Sender: TObject);
    procedure Fuente1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.Cortar1Click(Sender: TObject);
begin
     form1.ToolButton9Click(Sender);
end;

procedure TForm2.Copiar1Click(Sender: TObject);
begin
     form1.ToolButton8Click(sender);
end;

procedure TForm2.Pegar1Click(Sender: TObject);
begin
     form1.ToolButton10Click(sender);
end;

procedure TForm2.Colordefondo1Click(Sender: TObject);
begin
      form1.Color1Click(sender);
end;

procedure TForm2.Fuente1Click(Sender: TObject);
begin
     form1.Fuente2Click(sender);
end;

end.
