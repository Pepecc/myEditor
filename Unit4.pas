unit Unit4;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,
  Buttons, ExtCtrls, jpeg;

type
  TAboutBox1 = class(TForm)
    Panel1: TPanel;
    Memo1: TMemo;
    Image1: TImage;
    SpeedButton2: TSpeedButton;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox1: TAboutBox1;

implementation

{$R *.dfm}

procedure TAboutBox1.BitBtn1Click(Sender: TObject);
begin
     close;
end;

end.
 
