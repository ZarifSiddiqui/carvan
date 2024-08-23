program MyApp;

uses
  Forms,
  Unit_Index in 'Unit_Index.pas' {frm_Index},
  Unit_Child in 'Unit_Child.pas' {frm_Child},
  Unit_DM in '..\Source\Unit_DM.pas' {DM: TDataModule},
  Unit_Login in '..\Source\Unit_Login.pas' {frm_Login},
  Unit_AccReport in '..\Source\Unit_AccReport.pas' {frm_AccountReport},
  Unit_ActivityMonitor in '..\Source\Unit_ActivityMonitor.pas' {frm_ActivityMonitor},
  Unit_BalanceSheet in '..\Source\Unit_BalanceSheet.pas' {frm_BalanceSheet},
  Unit_BankBook in 'Unit_BankBook.pas' {frm_BankBook},
  Unit_City in '..\Source\Unit_City.pas' {frm_City},
  Unit_COA in '..\Source\Unit_COA.pas' {frm_COA},
  Unit_CompanyBill in '..\Source\Unit_CompanyBill.pas' {frm_CompanyBill},
  Unit_Contract in '..\Source\Unit_Contract.pas' {frm_Contract},
  Unit_Vehicle in '..\Source\Unit_Vehicle.pas' {frm_Vehicle},
  Unit_Ledger in '..\Source\Unit_Ledger.pas' {frm_Ledger},
  Unit_Setup in '..\Source\Unit_Setup.pas' {frm_Setup},
  Unit_LOV_Trip in '..\Source\Unit_LOV_Trip.pas' {frm_Lov_Trip},
  Unit_LOV_Voucher in '..\Source\Unit_LOV_Voucher.pas' {frm_LOV_Voucher},
  Unit_MasterProfile in '..\Source\Unit_MasterProfile.pas' {frm_MasterProfile},
  Unit_OpeningBalance in '..\Source\Unit_OpeningBalance.pas' {frm_OpeningBalance},
  Unit_Password in '..\Source\Unit_Password.pas' {PasswordDlg},
  Unit_Shortage in '..\Source\Unit_Shortage.pas' {frm_Shortage},
  Unit_PowerPlay in '..\Source\Unit_PowerPlay.pas' {frm_PowerPlay},
  Unit_PrintOption in '..\Source\Unit_PrintOption.pas' {frm_PrintOption},
  Unit_Product in '..\Source\Unit_Product.pas' {frm_Product},
  Unit_Estimate in 'Unit_Estimate.pas' {frm_Estimate},
  Unit_StockReport in '..\Source\Unit_StockReport.pas' {frm_StockReport},
  Unit_SMSCaster in '..\Source\Unit_SMSCaster.pas' {frm_SMSCaster},
  Unit_XlsLoad in '..\Source\Unit_XlsLoad.pas' {frm_XlsLoad},
  Unit_TripReconcile in '..\Source\Unit_TripReconcile.pas' {frm_TripReconcile},
  Unit_ChangeDate in '..\Source\Unit_ChangeDate.pas' {dlg_ChangeDate},
  Unit_MoveFile in 'Unit_MoveFile.pas' {frm_MoveFile},
  Unit_BankRecon in '..\Source\Unit_BankRecon.pas' {frm_BankRecon},
  Unit_FramFatch in 'Unit_FramFatch.pas' {Frame1: TFrame},
  Unit_Location in '..\Source\Unit_Location.pas' {frm_Location},
  Unit_Notes in '..\Source\Unit_Notes.pas' {frm_Notes},
  Unit_CostCentre in '..\Source\Unit_CostCentre.pas' {frm_CostCentre},
  Unit_PaymentRecon in '..\Source\Unit_PaymentRecon.pas' {frm_PaymentRecon},
  Unit_ClubCard in '..\Source\Unit_ClubCard.pas' {frm_ClubCard},
  Unit_RTS_Vehicle in '..\Source\Unit_RTS_Vehicle.pas' {frm_RTS_Vechile},
  Unit_RTS_Driver in '..\Source\Unit_RTS_Driver.pas' {frm_RTS_Driver},
  Unit_RTS_DashBoard in '..\Source\Unit_RTS_DashBoard.pas' {frm_RTS_DashBoard},
  Unit_Fin_DashBoard in '..\Source\Unit_Fin_DashBoard.pas' {frm_Fin_DashBoard},
  Unit_ChangePassword in 'Unit_ChangePassword.pas' {frm_ChangePassword},
  Unit_TestUnit in 'Unit_TestUnit.pas' {Form_Test},
  Unit_AddEdit_String in 'Unit_AddEdit_String.pas' {dlg_AddEditString},
  Unit_NoteSheet in '..\Source\Unit_NoteSheet.pas' {frm_NoteSheet},
  Unit_dbSelect in 'Unit_dbSelect.pas' {Form_dbSelect},
  UnitTyre in 'UnitTyre.pas' {frmTyre},
  Unit_KPI in '..\Source\Unit_KPI.pas' {frm_Kpi},
  Unit_CashBook in 'Unit_CashBook.pas' {frm_CashBook},
  Unit_ProductInfo in 'Unit_ProductInfo.pas' {frm_ProductInfo},
  Unit_BckXLS in 'Unit_BckXLS.pas' {frm_BakcupXLS},
  Unit_SerialAddEdit in 'trading_src\Unit_SerialAddEdit.pas' {frm_SerialAddEdit},
  Unit_ClientIndex in 'Unit_ClientIndex.pas' {frm_ClientIndex},
  Unit_SalesReceipt in 'Unit_SalesReceipt.pas' {frm_SalesReceipt},
  Unit_BookEntry in '..\Source\Unit_BookEntry.pas' {frm_BookEntry},
  Unit_Trip in '..\Source\Unit_Trip.pas' {frm_Trip},
  Unit_TripNew in 'Unit_TripNew.pas' {frm_TripNew},
  Unit_Lov_TripNew in 'Unit_Lov_TripNew.pas' {frm_Lov_TripNew},
  Unit_PurchaseBill in '..\Source\Unit_PurchaseBill.pas' {frm_PurchaseBill},
  Unit_SalesBill in '..\Source\Unit_SalesBill.pas' {frm_SalesBill},
  UnitLoadAddEdit in 'UnitLoadAddEdit.pas' {frmLoadAddEdit},
  Unit_TripAdvAddEdit in 'Unit_TripAdvAddEdit.pas' {frm_TripAdvanceAddEdit},
  Unit_TripHeaderAddEdit in 'Unit_TripHeaderAddEdit.pas' {frm_TripHeaderAddEdit},
  Unit_TripReconNew in 'Unit_TripReconNew.pas' {frm_TripReconNew},
  Unit_SalesNew in 'Unit_SalesNew.pas' {frm_SalesBillNew},
  Unit_SalesAddEdit in 'Unit_SalesAddEdit.pas' {frm_SalesAddEdit},
  Unit_TripMaitianenceAddEdit in 'Unit_TripMaitianenceAddEdit.pas' {frm_TripMaitianenceAddEdit},
  Unit_StockAdj in 'Unit_StockAdj.pas' {frm_StockAdj},
  Unit_StockADJAddEdit in 'Unit_StockADJAddEdit.pas' {frm_StockADJAddEdit},
  Unit_AccountVoucher in 'Unit_AccountVoucher.pas' {frm_AccountVoucher},
  Unit_CompanyBillNew in 'Unit_CompanyBillNew.pas' {frm_CompanyBillNew},
  Unit_CompanyBillExecute in 'Unit_CompanyBillExecute.pas' {frm_CompanyBillExecute},
  Unit_PaymentReconNew in 'Unit_PaymentReconNew.pas' {frm_PaymentReconNew},
  Uni_PaymentReconAddEdit in 'Uni_PaymentReconAddEdit.pas' {frm_PaymentReconAddEdit},
  Unit_LovCompanyBill in 'Unit_LovCompanyBill.pas' {frm_Lov_CompanyBill},
  Unit_PurchaseNew in 'Unit_PurchaseNew.pas' {frm_PurchaseNew},
  Unit_PurchaseAddEdit in 'Unit_PurchaseAddEdit.pas' {frm_PurchaseAddEdit},
  uRTSDVR_Assesment in 'uRTSDVR_Assesment.pas' {frm_DriverAssesment},
  uProfilePicture in 'uProfilePicture.pas' {frm_ProfilePicture},
  uRTS_attribute in 'uRTS_attribute.pas' {frm_RTS_Attribute},
  uRTSVRN_ATT in 'uRTSVRN_ATT.pas' {frm_VRN_Attribute},
  uVRNDOC in 'uVRNDOC.pas' {frm_VRN_DOC},
  uFTP in 'uFTP.pas' {frm_ftp},
  uVRNProfile in 'uVRNProfile.pas' {frm_VRN_Pofile},
  uLOV_VRN in 'uLOV_VRN.pas' {frm_LOV_VRN},
  uUnlockVoucher in 'uUnlockVoucher.pas' {frm_UnlockVoucher},
  uVRN_Edit in 'uVRN_Edit.pas' {frm_VRN_Edit},
  uRTSDVR_Medical in 'uRTSDVR_Medical.pas' {frm_DriverMedical},
  uRTSDVR_Training in 'uRTSDVR_Training.pas' {frm_DriverTraining},
  uRTSDVR_Voilation in 'uRTSDVR_Voilation.pas' {frm_DriverViolation},
  uRTSDVR_License in 'uRTSDVR_License.pas' {frm_DriverLicense},
  uTyreAttribute in 'uTyreAttribute.pas' {frm_Tyre_Attribute},
  uTyreAllocation in 'uTyreAllocation.pas' {frm_Tyre_Allocation},
  uODO in 'uODO.pas' {frm_ODO},
  uSPOT_LIST in 'uSPOT_LIST.pas' {frm_SpotList},
  uLOV_DRIVER in 'uLOV_DRIVER.pas' {frm_LOV_DVR},
  uLOV_ATT in 'uLOV_ATT.pas' {frm_LOV_ATT},
  uVouhcerLine in 'uVouhcerLine.pas' {frm_BookDetail_Entry},
  uVoucherList in 'uVoucherList.pas' {frm_VoucherList},
  Unit_FreightRate in 'Unit_FreightRate.pas' {frm_FreightRate};

{$R *.res}

begin
  Application.Initialize;




  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tfrm_Index, frm_Index);
  Application.CreateForm(TForm_dbSelect, Form_dbSelect);
  Application.CreateForm(Tfrm_BookDetail_Entry, frm_BookDetail_Entry);
  Application.CreateForm(Tfrm_VoucherList, frm_VoucherList);
  Application.CreateForm(Tfrm_FreightRate, frm_FreightRate);
  //Application.CreateForm(Tfrm_ODO, frm_ODO);
  //Application.CreateForm(Tfrm_SpotList, frm_SpotList);
  //Application.CreateForm(Tfrm_LOV_DVR, frm_LOV_DVR);
  //Application.CreateForm(Tfrm_LOV_ATT, frm_LOV_ATT);
  // Application.CreateForm(Tfrm_DriverLicense, frm_DriverLicense);
 // Application.CreateForm(Tfrm_Tyre_Attribute, frm_Tyre_Attribute);
  //Application.CreateForm(Tfrm_Tyre_Allocation, frm_Tyre_Allocation);
  //Application.CreateForm(Tfrm_DriverMedical, frm_DriverMedical);
  //Application.CreateForm(Tfrm_DriverTraining, frm_DriverTraining);
  //Application.CreateForm(Tfrm_RTSDVR_Violation, frm_RTSDVR_Violation);
  // Application.CreateForm(Tfrm_VRN_Edit, frm_VRN_Edit);
  // Application.CreateForm(Tfrm_LOV_VRN, frm_LOV_VRN);
  //Application.CreateForm(Tfrm_UnlockVoucher, frm_UnlockVoucher);
  //Application.CreateForm(Tfrm_VRN_Attribute, frm_VRN_Attribute);
  //Application.CreateForm(Tfrm_VRN_DOC, frm_VRN_DOC);
  Application.CreateForm(Tfrm_ftp, frm_ftp);
  //Application.CreateForm(Tfrm_VRN_Pofile, frm_VRN_Pofile);
  // Application.CreateForm(Tfrm_PurchaseNew, frm_PurchaseNew);
  //Application.CreateForm(Tfrm_PurchaseAddEdit, frm_PurchaseAddEdit);
  //Application.CreateForm(Tfrm_DriverManager, frm_DriverManager);
 // Application.CreateForm(Tfrm_ProfilePicture, frm_ProfilePicture);
  //Application.CreateForm(Tfrm_RTS_Attribute, frm_RTS_Attribute);
  //Application.CreateForm(Tfrm_Lov_CompanyBill, frm_Lov_CompanyBill);
  //Application.CreateForm(Tfrm_CompanyBillNew, frm_CompanyBillNew);
  //Application.CreateForm(Tfrm_CompanyBillExecute, frm_CompanyBillExecute);
  //Application.CreateForm(Tfrm_PaymentReconNew, frm_PaymentReconNew);
  //Application.CreateForm(Tfrm_PaymentReconAddEdit, frm_PaymentReconAddEdit);
  // Application.CreateForm(Tfrm_SalesAddEdit, frm_SalesAddEdit);
 // Application.CreateForm(Tfrm_TripMaitianenceAddEdit, frm_TripMaitianenceAddEdit);
 // Application.CreateForm(Tfrm_PurchaseNew, frm_PurchaseNew);
  //Application.CreateForm(Tfrm_PurchaseAddEdit, frm_PurchaseAddEdit);
  //Application.CreateForm(Tfrm_AccountVoucher, frm_AccountVoucher);
  // Application.CreateForm(Tfrm_Lov_TripNew, frm_Lov_TripNew);
 // Application.CreateForm(Tfrm_PurchaseBill, frm_PurchaseBill);
 // Application.CreateForm(Tfrm_SalesBill, frm_SalesBill);
 // Application.CreateForm(TfrmLoadAddEdit, frmLoadAddEdit);
 // Application.CreateForm(Tfrm_TripAdvanceAddEdit, frm_TripAdvanceAddEdit);
 // Application.CreateForm(Tfrm_TripHeaderAddEdit, frm_TripHeaderAddEdit);
  //Application.CreateForm(Tfrm_TripReconNew, frm_TripReconNew);
 // Application.CreateForm(Tfrm_PurchaseNew, frm_PurchaseNew);
  // Application.CreateForm(TfrmTyre, frmTyre);
  Application.CreateForm(Tfrm_Kpi, frm_Kpi);
 // Application.CreateForm(Tfrm_CashBook, frm_CashBook);
//  Application.CreateForm(Tfrm_ProductInfo, frm_ProductInfo);
//  Application.CreateForm(Tfrm_BakcupXLS, frm_BakcupXLS);
//  Application.CreateForm(Tfrm_SerialAddEdit, frm_SerialAddEdit);
 // Application.CreateForm(Tfrm_ClientIndex, frm_ClientIndex);
//  Application.CreateForm(Tfrm_SalesReceipt, frm_SalesReceipt);
 // Application.CreateForm(Tfrm_BookEntry, frm_BookEntry);
  //Application.CreateForm(Tfrm_Trip, frm_Trip);
 // Application.CreateForm(Tfrm_TripNew, frm_TripNew);
  // Application.CreateForm(TFormPower, FormPower);
  Application.CreateForm(Tfrm_SMSCaster, frm_SMSCaster);
  Application.CreateForm(Tdlg_ChangeDate, dlg_ChangeDate);
  Application.CreateForm(Tdlg_AddEditString, dlg_AddEditString);
  //Application.CreateForm(Tfrm_NoteSheet, frm_NoteSheet);
  // Application.CreateForm(Tfrm_MoveFile, frm_MoveFile);
  //Application.CreateForm(Tfrm_BankRecon, frm_BankRecon);

  //Application.CreateForm(TDlg_Error_Pic, Dlg_Error_Pic);
 // Application.CreateForm(Tfrm_Location, frm_Location);
  //Application.CreateForm(Tfrm_Notes, frm_Notes);
 // Application.CreateForm(Tfrm_CostCentre, frm_CostCentre);
 // Application.CreateForm(Tfrm_PaymentRecon, frm_PaymentRecon);
  //Application.CreateForm(Tfrm_ClubCard, frm_ClubCard);
  Application.CreateForm(Tfrm_ChangePassword, frm_ChangePassword);
  Application.CreateForm(TForm_Test, Form_Test);
 // Application.CreateForm(Tdlg_AddEditString, dlg_AddEditString);
  //Application.CreateForm(Tfrm_DBLog, frm_DBLog);
  // Application.CreateForm(Tfrm_TripReconcile, frm_TripReconcile);
  //Application.CreateForm(Tfrm_Child, frm_Child);
  Application.CreateForm(Tfrm_Login, frm_Login);
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.CreateForm(Tfrm_PrintOption, frm_PrintOption);
  {Application.CreateForm(Tfrm_AccountReport, frm_AccountReport);
  Application.CreateForm(Tfrm_ActivityMonitor, frm_ActivityMonitor);
  Application.CreateForm(Tfrm_BalanceSheet, frm_BalanceSheet);
  Application.CreateForm(Tfrm_BookEntry, frm_BookEntry);
  Application.CreateForm(Tfrm_City, frm_City);
  Application.CreateForm(Tfrm_COA, frm_COA);
  Application.CreateForm(Tfrm_CompanyBill, frm_CompanyBill);
  Application.CreateForm(Tfrm_Contract, frm_Contract);
  Application.CreateForm(Tfrm_ContractorBilling, frm_ContractorBilling);
  Application.CreateForm(Tfrm_EstimateBill, frm_EstimateBill);
  Application.CreateForm(Tfrm_Ledger, frm_Ledger);
  Application.CreateForm(Tfrm_Location, frm_Location);
  Application.CreateForm(Tfrm_Lov_Trip, frm_Lov_Trip);
  Application.CreateForm(Tfrm_LOV_Voucher, frm_LOV_Voucher);
  Application.CreateForm(Tfrm_MasterProfile, frm_MasterProfile);
  Application.CreateForm(Tfrm_OpeningBalance, frm_OpeningBalance);
  Application.CreateForm(TPasswordDlg, PasswordDlg);
  Application.CreateForm(Tfrm_PaymentRecon, frm_PaymentRecon);
  Application.CreateForm(Tfrm_PowerPlay, frm_PowerPlay);
  Application.CreateForm(Tfrm_PrintOption, frm_PrintOption);
  Application.CreateForm(Tfrm_Product, frm_Product);
  Application.CreateForm(Tfrm_PurchaseBill, frm_PurchaseBill);
  Application.CreateForm(Tfrm_SMSCaster, frm_SMSCaster);
  Application.CreateForm(Tfrm_Trip, frm_Trip);
  Application.CreateForm(Tfrm_XlsLoad, frm_XlsLoad); }
  //Application.CreateForm(Tfrm_PrintView, frm_PrintView);
  //Application.CreateForm(Tfrm_Sales, frm_Sales);
  Application.Run;
end.

