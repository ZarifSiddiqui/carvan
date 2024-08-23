unit uFTP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdFTP, RzBorder, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinSilver,
  cxLabel;

type
  Tfrm_ftp = class(TForm)
    OpenDialog1: TOpenDialog;
    IdFTP2: TIdFTP;
    Edit1: TEdit;
    btn_Upload: TButton;
    RzProgressDisplay1: TRzProgressDisplay;
    lbl_frmCaption: TcxLabel;
    procedure FormShow(Sender: TObject);
    procedure IdFTP2WorkBegin(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCountMax: Integer);
    procedure IdFTP2AfterClientLogin(Sender: TObject);
    procedure IdFTP2AfterGet(ASender: TObject; VStream: TStream);
    procedure IdFTP2Status(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure IdFTP2Work(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
    procedure IdFTP2WorkEnd(Sender: TObject; AWorkMode: TWorkMode);
    procedure IdFTP2Disconnected(Sender: TObject);
    procedure btn_UploadClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure Openfile();
    procedure PutFile(myFile, ftpPath: string);
    procedure GetFile(myFile, ftpPath: string);
    procedure  Progress(sSTEP: string) ;
  end;

var
  frm_ftp: Tfrm_ftp;
  sActionType, sFtpFolder, sSelFile: string;
implementation
uses
  unit_dm, unit_index, dateutils;
{$R *.dfm}

procedure Tfrm_ftp.FormShow(Sender: TObject);
begin
 RzProgressDisplay1.Clear ;
  Edit1.Text := '';

 

end;

procedure  Tfrm_ftp.Progress(sSTEP: string) ;
begin

    RzProgressDisplay1.AddStep(sSTEP);

end ;
procedure Tfrm_ftp.PutFile(myFile, ftpPath: string);
var
  ftpUpStream: TFileStream;
begin

  IdFTP2.Connect(true, 0);
  ftpUpStream := TFileStream.create(myFile, fmopenread);

  IdFTP2.ChangeDir(ftpPath);

  IdFTP2.Put(ftpUpStream, ExtractFileName(myFile), true);

  Progress('ftp file :' + ExtractFileName(myFile));
  Progress('ftp data size..'+IntToStr(IdFTP2.size(myfile)) + ' bytes') ;

  ftpUpStream.Free;

  IdFTP2.Disconnect;

  //Close; 
end;

procedure Tfrm_ftp.GetFile(myFile, ftpPath: string);
var
  ftpDownStream: TFileStream;
begin

  if FileExists(myFile) then DeleteFile(myFile);

  IdFTP2.Connect(true, 0);
  ftpDownStream := TFileStream.create(myFile, fmCreate);
  IdFTP2.ChangeDir(ftpPath);



  try begin
      IdFTP2.Get(myFile, ftpDownStream, true);
  end except; end;

    Progress('ftp download file :' + ExtractFileName(myFile));
  Progress('ftp download size..'+IntToStr(IdFTP2.size(myfile)) + ' bytes') ;
  ftpDownStream.Free;
  IdFTP2.Disconnect;
  Edit1.Text := ExtractFileDir(Application.ExeName) + '\' + myFile;
end;

procedure Tfrm_ftp.Openfile();
var
  fi: string;
begin
  if Opendialog1.execute then
  begin
    Fi := Opendialog1.filename;

    Edit1.Text := Fi;
    sSelFile :=  Edit1.Text;
  end
end;

procedure Tfrm_ftp.IdFTP2WorkBegin(Sender: TObject; AWorkMode: TWorkMode;
  const AWorkCountMax: Integer);
begin
  if AWorkMode = wmWrite then

    Progress('Start..Uploading')
  else Progress('Start..Downloading');

end;

procedure Tfrm_ftp.IdFTP2AfterClientLogin(Sender: TObject);
begin

   Progress('ftp connected..')
end;

procedure Tfrm_ftp.IdFTP2AfterGet(ASender: TObject; VStream: TStream);
begin

  Progress('ftp downloading..')
end;

procedure Tfrm_ftp.IdFTP2Status(ASender: TObject; const AStatus: TIdStatus;
  const AStatusText: string);
begin
 
  Progress(AStatusText);
end;

procedure Tfrm_ftp.IdFTP2Work(Sender: TObject; AWorkMode: TWorkMode;
  const AWorkCount: Integer);
begin

  Progress('ftp data size..'+IntToStr(AWorkCount) + ' bytes')
end;

procedure Tfrm_ftp.IdFTP2WorkEnd(Sender: TObject; AWorkMode: TWorkMode);
begin

  Progress('ftp end..')
end;

procedure Tfrm_ftp.IdFTP2Disconnected(Sender: TObject);
begin

    Progress('ftp disconnected..')
end;

procedure Tfrm_ftp.btn_UploadClick(Sender: TObject);
begin

  RzProgressDisplay1.Clear ;
  Edit1.Text := '';


  //if sActionType = 'Put' then begin

    Openfile();

    if Length(sSelFile) > 0 then begin
      PutFile(sSelFile, sFtpFolder);
    end else begin
      ShowMessage('Check your internet connection and try again.');
      //close;
    end;
 // end;
end;

end.

