program MyEditor2024;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit4 in 'Unit4.pas' {AboutBox1},
  Unit3 in 'Unit3.pas' {AboutBox};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TAboutBox1, AboutBox1);
  Application.CreateForm(TAboutBox, AboutBox);
  Application.Run;
end.
