unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Unit2, ComCtrls, Buttons, ToolWin, Menus, StdCtrls, ImgList, Printers, Unit4,
  System.ImageList;

type
  TForm1 = class(TForm)
    StatusBar1: TStatusBar;
    MainMenu1: TMainMenu;
    Archivo1: TMenuItem;
    Nuevo1: TMenuItem;
    N1: TMenuItem;
    Abrir1: TMenuItem;
    Cerrar1: TMenuItem;
    N2: TMenuItem;
    Salir1: TMenuItem;
    Edicion1: TMenuItem;
    Formato1: TMenuItem;
    Deshacer1: TMenuItem;
    N3: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    Fuente2: TMenuItem;
    Copiar1: TMenuItem;
    Cortar1: TMenuItem;
    Pegar1: TMenuItem;
    ToolBar2: TToolBar;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ToolButton4: TToolButton;
    Ayuda1: TMenuItem;
    Color1: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    FontDialog1: TFontDialog;
    ColorDialog1: TColorDialog;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    ToolButton9: TToolButton;
    ToolButton10: TToolButton;
    ToolButton11: TToolButton;
    ToolButton12: TToolButton;
    ToolButton13: TToolButton;
    ToolButton14: TToolButton;
    ToolButton17: TToolButton;
    Buscar1: TMenuItem;
    ToolButton18: TToolButton;
    ToolButton19: TToolButton;
    ToolButton20: TToolButton;
    ToolButton21: TToolButton;
    ToolButton22: TToolButton;
    ToolButton23: TToolButton;
    ToolButton24: TToolButton;
    ToolButton25: TToolButton;
    ToolButton26: TToolButton;
    ToolButton15: TToolButton;
    Guardar1: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Imprimir1: TMenuItem;
    N7: TMenuItem;
    ImageList2: TImageList;
    ToolButton27: TToolButton;
    ToolButton28: TToolButton;
    ToolButton29: TToolButton;
    ToolButton16: TToolButton;
    ToolButton30: TToolButton;
    FindDialog1: TFindDialog;
    ToolButton31: TToolButton;
    ToolButton32: TToolButton;
    ToolButton33: TToolButton;
    ToolButton34: TToolButton;
    ToolButton35: TToolButton;
    ToolButton36: TToolButton;
    Guardar2: TMenuItem;
    ReplaceDialog1: TReplaceDialog;
    Reemplazar1: TMenuItem;
    Acercade1: TMenuItem;
    Notasdelaversion1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ToolButton5Click(Sender: TObject);
    procedure ToolButton6Click(Sender: TObject);
    procedure ToolButton7Click(Sender: TObject);
    procedure ToolButton8Click(Sender: TObject);
    procedure ToolButton10Click(Sender: TObject);
    procedure ToolButton9Click(Sender: TObject);
    procedure Fuente2Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Color1Click(Sender: TObject);
    procedure ToolButton13Click(Sender: TObject);
    procedure ToolButton18Click(Sender: TObject);
    procedure ToolButton17Click(Sender: TObject);
    procedure ToolButton23Click(Sender: TObject);
    procedure Cerrar1Click(Sender: TObject);
    procedure Cascada1Click(Sender: TObject);
    procedure Mosaico1Click(Sender: TObject);
    procedure ToolButton11Click(Sender: TObject);
    procedure ToolButton22Click(Sender: TObject);
    procedure ComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure ToolButton28Click(Sender: TObject);
    procedure ToolButton16Click(Sender: TObject);
    procedure FindDialog1Find(Sender: TObject);
    procedure ToolButton32Click(Sender: TObject);
    procedure ToolButton33Click(Sender: TObject);
    procedure erceraversion1Click(Sender: TObject);
    procedure ToolButton35Click(Sender: TObject);
    procedure Guardar2Click(Sender: TObject);
    procedure ToolButton37Click(Sender: TObject);
    procedure Acercade1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private

         guardado: boolean;
  public


  end;

var
  Form1: TForm1;

implementation

uses Unit3;

{$R *.dfm}

procedure oculta_botons;       // PROCEDIMIENTO QUE OCULTA LOS BOTONES CUANDO NO HAY NINGUNA
                               // HIJA
var
   i,j: integer;
begin
     for i:=3 to form1.ToolBar1.ButtonCount -3 do begin //DESACTIVA ALGUNOS BOTONES DE LA TOOLBAR1
          form1.ToolBar1.Buttons[i].Enabled:= false;

     end;
     for j:=0 to form1.ToolBar2.ButtonCount -1 do      //DESACTIVA LOS BOTONES DE LA TOOLBAR2
         form1.ToolBar2.Buttons[j].Enabled:= false;

     for i:=3 to form1.MainMenu1.Items[0].Count -2 do     //desactivar menu ARCHIVO
         form1.MainMenu1.Items[0].Items[i].Enabled:= false;

     for j:=0 to form1.MainMenu1.Items[1].Count -1 do      //DESACTIVAR MENU EDICION
         form1.MainMenu1.Items[1].Items[j].Enabled:= false;

     for j:=0 to form1.MainMenu1.Items[2].Count -1 do      //DESACTIVAR MENU FORMATO
         form1.MainMenu1.Items[2].Items[j].Enabled:= false;

end;

procedure muestra_botons;                        //PROCEDIMIENTO QUE MUESTRA TODOS LOS BOTONES
                                                 //CUANDO HAY HIJAS
var
   i,j: integer;
begin
for i:=3 to form1.ToolBar1.ButtonCount -3 do begin      //MOSTRAR TODOS LOS BOTONES DEL TOOLBAR1
          form1.ToolBar1.Buttons[i].Enabled:= true;
     end;
     for j:=0 to form1.ToolBar2.ButtonCount -1 do       //MOSTRAR TODOS LOS BOTONES DEL TOOLBAR2
         form1.ToolBar2.Buttons[j].Enabled:= true;


     for i:=3 to form1.MainMenu1.Items[0].Count -2 do     //activar menu ARCHIVO
         form1.MainMenu1.Items[0].Items[i].Enabled:= true;

     for j:=0 to form1.MainMenu1.Items[1].Count -1 do      //ACTIVAR MENU EDICION
         form1.MainMenu1.Items[1].Items[j].Enabled:= true;

     for j:=0 to form1.MainMenu1.Items[2].Count -1 do      //ACTIVAR MENU FORMATO
         form1.MainMenu1.Items[2].Items[j].Enabled:= true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
     combobox1.Items:= screen.Fonts;  //AL CREAR EL FORM PADRE LLENO EL COMBOBOX1 DE NOMBRES
                                      //DE LAS FUENTES DEL SISTEMA
     form1.ToolButton24.Down:= true;  //BOTON QUE ALINEA EL PARRAFO A LA IZQUIERDA
     
end;

procedure TForm1.ToolButton5Click(Sender: TObject);   //***/AL PULSAR "NUEVO DOCUMENTO"/****//
var
   forma: TForm2;

   begin
     forma:= TForm2.Create(self);     //CREO EL FORM2
     forma.Show;
     forma.RichEdit1.Font.Size:= 10;        //LE AJUSTO LOS PARAMETROS POR DEFECTO QUE TENDRÁ
     forma.RichEdit1.Font.Name:= 'Arial';
     forma.RichEdit1.Modified:= false;
     form1.ToolButton24.Down:= true;
     muestra_botons;  //VOY A MESTRA BOTONS POR SI SE EJECUTA CUANDO NO HAY NINGUNA HIJA CREADA
                      //Y LOS BOTONES ESTÁN DESACTIVADOS
                     // combobox1.Text:= forma.RichEdit1.Font.Name;

end;

procedure TForm1.ToolButton6Click(Sender: TObject);  //****/ABRIR ARCHIVO/***//
var
   forma: TForm2;
begin
     try begin
              if opendialog1.Execute= true then begin   // EJECUTO EL OPENDIALOG1
              forma:= Tform2.Create(self);           // CREO EL FORMULARIO HIJA
              forma.RichEdit1.Lines.LoadFromFile(opendialog1.FileName);  //CARGO EL ARCHIVO EN EL RICHEDIT DEL FORM HIJA

              forma.RichEdit1.Modified:= false; //AJUSTO ESTA PROPIEDAD A FALSE PORQUE SINÓ POR DEFECTO NO SE PONE SOLA
                                       //Y ES PARA QUE ME DIGA SI GUARDO ANTES DE CERRAR
              form1.StatusBar1.SimpleText:= opendialog1.FileName; //A LA STATUS BAR LE PONGO EL NOMBRE DEL ARCHIVO ABIERTO
              muestra_botons; //LLAMO AL PROCEDIMIENTO QUE ME MUESTRA LOS BOTONES, POR SI ESTOS ESTÁN ANTES DESACTIVADOS
              combobox1.Text:= forma.Font.Name;
              end;
              end;
     except
           MessageDlg('Error al abrir el archivo',mtError,[mbOk],0);
     end;
end;

procedure TForm1.ToolButton7Click(Sender: TObject);  //******/GUARDAR COMO.../******//
var
   forma: TForm2;
   begin
     forma:=(ActiveMDIChild as TForm2);    //A FORMA LE DIGO QUE COJA EL FORMULARIO HIJA QUE ESTÁ ACTIVO EN ESE
                                           //MOMENTO
     if savedialog1.Execute= true then
        forma.RichEdit1.Lines.SaveToFile(savedialog1.FileName); //GUARDO EL CONTENIDO DEL RICH EDIT
        form1.StatusBar1.SimpleText:= savedialog1.FileName; //LE CAMBIO EL NOMBRE DE ARCHIVO A LA STATUS BAR
        forma.RichEdit1.Modified:= false; //CAMBIO ESTA PROPIEDAD PORQUE CUANDO GUARDO ESTE ARCHIVO DEJA DE ESTAR
                                          //MODIFICADO HASTA QUE EL USUARIO PULSE UNA TECLA
        guardado:= true; //VARIABLE QUE USO PARA EL BOTON "GUARDAR", PARA QUE NO SE EJECUTE OTRA VEZ EL SAVEDIALOG
end;

procedure TForm1.ToolButton8Click(Sender: TObject); //***********//COPIAR//***********//
var
   forma: TForm2;
begin
     forma:=(ActiveMDIChild as TForm2); //FORMULARIO ACTIVO//
     forma.RichEdit1.CopyToClipboard; //COPIO EN EL PROTAPAPELES EL TEXTO SELECCIONADO DEL FORM2 ACTIVO
end;

procedure TForm1.ToolButton10Click(Sender: TObject);  //********//PEGAR//**********//
var
   forma: TForm2;
begin
     forma:=(ActiveMDIChild as TForm2);
     forma.RichEdit1.PasteFromClipboard;    //PEGO EN EL PROTAPAPELES
end;

procedure TForm1.ToolButton9Click(Sender: TObject); //**********//CORTAR//***************//
var
   forma: TForm2;
begin
     forma:=(ActiveMDIChild as TForm2);
     forma.RichEdit1.CutToClipboard;
end;

procedure TForm1.Fuente2Click(Sender: TObject); //*********/CAMBIAR LA FUENTE CON EL "FONTDIALOG"/*******//
var
   forma: TForm2;
begin
     forma:=(ActiveMDIChild as TForm2);
     if fontdialog1.Execute= true then
        forma.RichEdit1.SelAttributes.Assign(fontdialog1.Font); //MODIFICO SOLO EL TEXTO SELECCIONADO//

end;

procedure TForm1.ComboBox1Change(Sender: TObject); //***/CAMBIAR EL TIPO DE FUENTE/****//
begin
     form2.RichEdit1.SelAttributes.Name:= combobox1.Text; //AL RICH EDIT LE PASO EL TIPO DE LETRA
                                                          //SELECCIONADA EN EL COMBOBOX1
     form2.RichEdit1.SetFocus; //CENTRO EL FOCO PERO EL PROGRAMA NO LO CENTRA
end;

procedure TForm1.ComboBox2Change(Sender: TObject); //*******//CAMBIAR EL TAMAÑO DE FUENTE/*********//
var
   forma: TForm2;
begin
     forma:=(ActiveMDIChild as TForm2);
     if combobox2.Text='' then
        combobox2.Text:='10';
       forma.RichEdit1.SelAttributes.Size:= strtoint(combobox2.Text);
end;

procedure TForm1.Color1Click(Sender: TObject);    //*****//CAMBIAR EL COLOR DEL RICH EDIT//****///
var
   forma: TForm2;
begin
     forma:=(ActiveMDIChild as TForm2);
     if colordialog1.Execute= true then
        forma.RichEdit1.Color:= colordialog1.Color;
end;

procedure TForm1.ToolButton13Click(Sender: TObject);  //*********//DESHACER CAMBIOS//********//
var
   forma: TForm2;
begin
     forma:= (Activemdichild as tform2);
     forma.RichEdit1.Undo;
end;

procedure TForm1.ToolButton18Click(Sender: TObject); //***//CAMBIAR EL ESTILO DEL TEXTO SELECCIONADO//***********//
var
   forma: TForm2;
begin
     forma:=(ActiveMDIChild as TForm2);

     if sender= toolbutton18 then begin
     with forma.RichEdit1.SelAttributes do
          if toolbutton18.Down= true then
             forma.RichEdit1.SelAttributes.Style:=forma.RichEdit1.SelAttributes.Style+[fsbold] //NEGRITA
          else forma.RichEdit1.SelAttributes.Style:=forma.RichEdit1.SelAttributes.Style-[fsbold];
     end

     else if sender= toolbutton19 then begin
     with forma.RichEdit1.SelAttributes do
          if toolbutton19.Down= true then
             forma.RichEdit1.SelAttributes.Style:=forma.RichEdit1.SelAttributes.Style+[fsitalic] //CURSIVA
          else forma.RichEdit1.SelAttributes.Style:=forma.RichEdit1.SelAttributes.Style-[fsitalic]
     end

     else if sender= toolbutton20 then begin
     with forma.RichEdit1.SelAttributes do
          if toolbutton20.Down= true then
             forma.RichEdit1.SelAttributes.Style:=forma.RichEdit1.SelAttributes.Style+[fsunderline] //SUBRAYADO
          else forma.RichEdit1.SelAttributes.Style:=forma.RichEdit1.SelAttributes.Style-[fsunderline]
     end

     else if sender= toolbutton29 then begin
     with forma.RichEdit1.SelAttributes do
          if toolbutton29.Down= true then
             forma.RichEdit1.SelAttributes.Style:=forma.RichEdit1.SelAttributes.Style+[fsStrikeout] //TACHADO
          else forma.RichEdit1.SelAttributes.Style:=forma.RichEdit1.SelAttributes.Style-[fsStrikeout]
     end;

     forma.RichEdit1.SetFocus;

end;

procedure TForm1.ToolButton17Click(Sender: TObject);  //**********//IMPRIMIR DOCUMENTO//********//
var
   printf: textfile;
   i: integer;
   forma: TForm2;
begin
     forma:=(ActiveMDIChild as TForm2);
     AssignPrn (printf);
     Rewrite(printf);

     for i:=0 to forma.RichEdit1.Lines.Count -1 do
         Writeln(printf,forma.RichEdit1.Lines[i]);

     system.CloseFile(printf);

end;

procedure TForm1.ToolButton23Click(Sender: TObject);     //****//ALINEACIÓN DEL TEXTO//********//
var
   forma: TForm2;
begin
     forma:=(ActiveMDIChild as TForm2);
     if sender= toolbutton23 then begin
        forma.RichEdit1.Paragraph.Alignment:= taCenter;    //AL CENTRO
        toolbutton24.Down:= false;
        toolbutton26.Down:= false;
     end
     else if sender= toolbutton24 then begin
          forma.RichEdit1.Paragraph.Alignment:= taleftjustify; //A LA IZQUIERDA
          toolbutton23.Down:= false;
          toolbutton26.Down:= false;
     end
     else if sender= toolbutton26 then begin
          forma.RichEdit1.Paragraph.Alignment:= tarightjustify; //A LA DERECHA
          toolbutton23.Down:= false;
          toolbutton24.Down:= false;
     end;
     forma.RichEdit1.SetFocus;
end;

procedure TForm1.Cerrar1Click(Sender: TObject);     //*********//CERRAR DOCUMENTO//********//
var
   resp: word;
   forma: TForm2;
begin
     forma:=(ActiveMDIChild as TForm2);
     if forma.RichEdit1.Modified= true then begin   //PREGUNTA ANTES DE CERRAR SI NO SE HA GUARDADO ANTES
                                                    //EL DOCUMENTO
        resp:=MessageDlg('¿Guardar cambios?',mtInformation,[mbYes,mbNo,mbCancel],0);
        if resp= mrYes then begin
              savedialog1.Execute;
              FORMA.RichEdit1.Modified:= false;
              forma.Free;
              end
           else if resp= mrNo then begin
                FORMA.RichEdit1.Modified:= false;
                forma.Free;
           end
           else if resp= mrCancel then
                   FORMA.RichEdit1.Modified:= true;
     end
     else if forma.RichEdit1.Modified= false then
          forma.Free;

     //guardado:= true;

     if form1.ActiveMDIChild= nil then oculta_botons;
     form1.StatusBar1.SimpleText:='';

end;

procedure TForm1.Cascada1Click(Sender: TObject);  //CAMBIAR A MODO CASCADA
begin
     form1.Cascade;
end;

procedure TForm1.Mosaico1Click(Sender: TObject); //CAMBIAR A MODO MOSAICO
begin
     form1.Tile;
end;

procedure TForm1.ToolButton11Click(Sender: TObject); //********//SALIR//*******//
var
   resp: word;
   forma: TForm2;
   i: integer;

begin

     for i:=0 to form1.MDIChildCount -1 do begin  //CUENTA LAS HIJAS ACTIVAS PARA MOSTRAR EL DIALOGO
                                                  //DE GUARDAR (SI ES NECESARIO)
         forma:=(MDIChildren[i] as TForm2);
         if forma.RichEdit1.Modified= true then
            begin
                resp:=MessageDlg('Guardar cambios?',mtInformation,[mbYes,mbNo,mbCancel],0);
                if resp= mrYes then begin
                   savedialog1.Execute;
                   forma.close;      //CIERRA EL FORM ACTIVO
                   form1.Close;      //CIERRA FORM1
                end

                else if resp= mrNo then begin
                        forma.close;    //CIERRA EL FORM ACTIVO
                        form1.Close;    //CIERRA FORM1
                     end

                else if resp= mrCancel then
                        forma.SetFocus;

            end

        else if forma.RichEdit1.Modified= false then close


     end;

     if form1.MDIChildCount = 0 then close
     else



end;

procedure TForm1.ToolButton22Click(Sender: TObject);   //********//PONER BOLAS EN EL PÁRRAFO//**********//
var
   forma: TForm2;
begin
     forma:=(ActiveMDIChild as TForm2);
     if toolbutton22.Down= true then
        forma.RichEdit1.Paragraph.Numbering:= nsbullet
     else  forma.RichEdit1.Paragraph.Numbering:= nsnone;

     forma.RichEdit1.SetFocus;
end;

procedure TForm1.ComboBox2KeyPress(Sender: TObject; var Key: Char); //AL CAMBIAR EL TAMAÑO DE LA LETRA
                                                                    //EN EL COMBOBOX2
begin
     if not (key in['0'..'9',#8]) then  //VALIDA QUE LA TECLA SEA UN NUMERO
        key:= #0;
end;

procedure TForm1.ToolButton28Click(Sender: TObject); //*****//CAMBIA COLOR DEL TEXTO SELECCIONADO//*****//
var
   forma: TForm2;
begin
     forma:=(ActiveMDIChild as TForm2);
     if colordialog1.Execute= true then
        forma.RichEdit1.SelAttributes.Color:=colordialog1.Color;
end;

procedure TForm1.ToolButton16Click(Sender: TObject); //***BUSCAR PALABRA**//
begin
    finddialog1.Execute; // EJECUTA EL FIND DIALOG//
end;

procedure TForm1.FindDialog1Find(Sender: TObject);  //PROCEDIMIENTO DE BUSCAR ARCHIVO//
var
  posicion: LongInt;       //FoundAt
  inicio, fin: Integer;  //startpos
  forma: TForm2;
 begin
      forma:=(ActiveMDIChild as TForm2);
  with forma.RichEdit1 do
  begin
    if SelLength <> 0 then  // POSICIONA EL CURSOR AL INICIO DEL TEXTO
      begin
      inicio := SelStart + SelLength;
      end

    else
      inicio := 0;

    fin := Length(Text) - inicio;

    posicion := FindText(FindDialog1.FindText, inicio, fin, [stMatchCase]); // Buscamos una palabra
    if posicion <> -1 then
    begin
      forma.RichEdit1.SetFocus;
      forma.RichEdit1.SelStart:=posicion;
      forma.RichEdit1.SelLength:= Length(FindDialog1.FindText);
    end
    else
    messagedlg('No hay más coincidencias',mtInformation,[mbOK],0);
  end;

end;


procedure TForm1.ToolButton32Click(Sender: TObject);      //REDUCIR LA SANGRÍA GENERAL
var
   forma: TForm2;
begin
     forma:=(ActiveMdichild as TForm2);
     forma.RichEdit1.Paragraph.LeftIndent:= forma.RichEdit1.Paragraph.LeftIndent-15;

end;

procedure TForm1.ToolButton33Click(Sender: TObject);  //AUMENTAR LA SANGRÍA GENERAL
var
   forma: TForm2;
begin
     forma:=(ActiveMdichild as TForm2);
     forma.RichEdit1.Paragraph.LeftIndent:= forma.RichEdit1.Paragraph.LeftIndent+15;
end;

procedure TForm1.erceraversion1Click(Sender: TObject);
begin
     aboutbox1.Show;
end;

procedure TForm1.ToolButton35Click(Sender: TObject); //CAMBIAR EL INICIO DEL PARRAFO
var
   forma: TForm2;
begin
     forma:=(ActiveMdichild as TForm2);
     if sender= toolbutton36 then
        forma.RichEdit1.Paragraph.FirstIndent:=  forma.RichEdit1.Paragraph.FirstIndent + 15 //AUMENTA
     else if sender= toolbutton35 then
          forma.RichEdit1.Paragraph.FirstIndent:=  forma.RichEdit1.Paragraph.FirstIndent - 15; //REDUCE

end;

procedure TForm1.Guardar2Click(Sender: TObject);     //********//PROCEDIMIENTO "GUARDAR"//********//
var
   forma: TForm2;                   //guardar//
begin
     forma:=(ActiveMDIChild as TForm2);
     if guardado= true then begin
        forma.RichEdit1.Lines.SaveToFile(savedialog1.FileName);
        form1.StatusBar1.SimpleText:= savedialog1.FileName;
        forma.RichEdit1.Modified:= false;
        guardado:= true;
     end

     else if guardado= false then begin
          if savedialog1.Execute= true then begin
             forma.RichEdit1.Lines.SaveToFile(savedialog1.FileName);
             guardado:= true;
          end;
     end;

end;

procedure TForm1.ToolButton37Click(Sender: TObject);
begin
     replacedialog1.Execute;
end;

procedure TForm1.Acercade1Click(Sender: TObject);
begin
     aboutbox.Show;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);

   var
   resp: word;
   forma: TForm2;
   i: integer;
begin
begin

     for i:=0 to form1.MDIChildCount -1 do begin  //CUENTA LAS HIJAS ACTIVAS PARA MOSTRAR EL DIALOGO
                                                  //DE GUARDAR (SI ES NECESARIO)
         forma:=(MDIChildren[i] as TForm2);
         if forma.RichEdit1.Modified= true then
            begin
                resp:=MessageDlg('Guardar cambios?',mtInformation,[mbYes,mbNo,mbCancel],0);
                if resp= mrYes then begin
                   savedialog1.Execute;
                   forma.close;      //CIERRA EL FORM ACTIVO
                   form1.Close;      //CIERRA FORM1
                end

                else if resp= mrNo then begin
                        forma.close;    //CIERRA EL FORM ACTIVO
                        form1.Close;    //CIERRA FORM1
                     end

                else if resp= mrCancel then
                        forma.SetFocus;

            end

        else if forma.RichEdit1.Modified= false then close


     end;

     if form1.MDIChildCount = 0 then close
     else

end;
    end;
end.


