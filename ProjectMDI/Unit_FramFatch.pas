unit Unit_FramFatch;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxImage;

type
  TFrame1 = class(TFrame)
    Button1: TButton;
    ProgressBar1: TProgressBar;
    Edit1: TEdit;
    cxImage1: TcxImage;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation
uses
  Unit_DM;
{$R *.dfm}

procedure TFrame1.Button1Click(Sender: TObject);
var
  sActiveControl, sStat: string;

begin
  {sActiveControl := Screen.ActiveForm.Caption ;
ShowMessage('Run From ' + sActiveControl); }

  dm.MSQuery1.Close;
  dm.MSQuery1.SQL.Clear;
  dm.MSQuery1.SQL.Add('Update SP_JOBInvoiceMasterTAB Set IsInvoiceAttached = 0 ');
  dm.MSQuery1.ExecSQL;

  dm.MSTable1.TableName := 'SP_JOBInvoiceMasterTAB';

  dm.MSTable1.Open;
  dm.MSTable1.First;
  ProgressBar1.Max := dm.MSTable1.RecordCount;


  while not dm.MSTable1.Eof do
  begin
    sRefNo := dm.MSTable1.FieldValues['RefNo'];
    sImageFile := sRefNo + '.png';
    sImagePath := sFileFolder + sImageFile;
    Edit1.Text := sRefNo;
    sStat := ' N/A';

    ProgressBar1.Position := dm.MSTable1.RecNo;
    ProgressBar1.Update;
    if FileExists(sImagePath) then
    begin
      cxImage1.Picture.LoadFromFile(sImagePath);
      sStat := ' ' + sImagePath;
      dm.MSQuery1.Close;
      dm.MSQuery1.SQL.Clear;
      dm.MSQuery1.SQL.Add('Update SP_JOBInvoiceMasterTAB Set IsInvoiceAttached = 1 where RefNo = ' + QuotedStr(sRefNo));
      dm.MSQuery1.ExecSQL;

    end;
    sActiveControl := sRefNo + sStat;
    Memo1.Lines.Add(sActiveControl);
    dm.MSTable1.Next;

  end;
end;

end.

