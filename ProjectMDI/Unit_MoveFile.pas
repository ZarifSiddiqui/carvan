(*        GREATIS DELPHI PAGES         *)
(* Copyright (C) 2001 Greatis Software *)
(*  web: http://www.greatisdelphi.com  *)
(*     e-mail: delphi@greatis.com      *)

unit Unit_MoveFile;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, FileCtrl, ExtCtrls;

type
  Tfrm_MoveFile = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Edit1: TEdit;
    btn_Fromfile: TButton;
    OpenDialog1: TOpenDialog;
    Label3: TLabel;
    btn_Copyfile: TButton;
    Panel1: TPanel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit2: TEdit;
    Edit6: TEdit;
    Label2: TLabel;
    btn_Rename: TButton;
    btn_toFile: TButton;
    procedure btn_FromfileClick(Sender: TObject);
    procedure btn_RenameClick(Sender: TObject);
    procedure btn_CopyfileClick(Sender: TObject);
    procedure btn_toFileClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_MoveFile: Tfrm_MoveFile;


implementation
uses
  Unit_DM;
{$R *.DFM}

procedure Tfrm_MoveFile.btn_FromfileClick(Sender: TObject);
begin
  Label3.Caption := '';

 // OpenDialog1.DefaultExt :=  GraphicExtension(TGraphic);
//  OpenDialog1.Filter := '*.jpg' ; //GraphicFilter(TGraphic);


  if OpenDialog1.Execute then
  begin
    Edit1.Text := OpenDialog1.FileName;


    Edit2.Text := Edit1.Text;

    Edit3.Text := ExtractFilePath(Edit1.Text);
    Edit4.Text := ExtractFileName(Edit1.Text);
    Edit5.Text := ExtractFileExt(Edit1.Text);

    Edit6.Text := sFileFolder + sRefNo + Edit5.Text;

  end;
  btn_CopyfileClick(nil);
  //btn_toFileClick(nil);
end;

procedure Tfrm_MoveFile.btn_RenameClick(Sender: TObject);
begin
  if (Edit1.Text <> '') and (Edit2.Text <> '') then
    if RenameFile(Edit1.Text, Edit2.Text) then Label3.Caption := 'OK'
end;

procedure Tfrm_MoveFile.btn_CopyfileClick(Sender: TObject);
begin
  if (Edit1.Text <> '') and (Edit2.Text <> '') then
    if CopyFile(PChar(Edit1.Text), PChar(Edit6.Text), False) then Label3.Caption := 'OK';

  Close;


end;

procedure Tfrm_MoveFile.btn_toFileClick(Sender: TObject);
var
  St: string;
begin
  St := sFileFolder;
  //if SelectDirectory(St, [], 0) then
  Edit2.Text := St + ExtractFileName(Edit1.Text);
end;

procedure Tfrm_MoveFile.FormShow(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
end;

end.
