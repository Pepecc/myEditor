unit Unit3;

interface

uses Windows, SysUtils, Classes, Graphics, Forms, Controls, StdCtrls,ShellApi,
  Buttons, ExtCtrls, jpeg;

type
  TAboutBox = class(TForm)
    Image1: TImage;
    SpeedButton1: TSpeedButton;
    procedure Panel1Click(Sender: TObject);
    procedure CommentsClick(Sender: TObject);
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  AboutBox: TAboutBox;

implementation

{$R *.dfm}

procedure TAboutBox.Panel1Click(Sender: TObject);
begin
     close;
end;

procedure TAboutBox.CommentsClick(Sender: TObject);
begin
      ShellExecute(GetDesktopWindow(),
                nil,
                pChar('mailto:'+
                TLabel(Sender).Caption),
                nil,
                nil,
                SW_SHOWNORMAL);
      close;

end;

procedure TAboutBox.Image1Click(Sender: TObject);
begin
  close;
end;

end.
 
