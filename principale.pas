unit principale;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Viewport3D, System.Math.Vectors, FMX.Types3D, FMX.Controls3D,
  FMX.Objects3D, FMX.MaterialSources, FMX.Ani, System.Threading,
  FMX.Objects, FMX.Layouts, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Edit, FMX.Effects, FMX.Filter.Effects, System.UIConsts, GBECubemap, Math,
  FMX.ListBox, FMX.ScrollBox, FMX.Memo, FMX.Types;

type
  TfPrincipale = class(TForm)
    vMain3D: TViewport3D;
    dmyIntro: TDummy;
    materialDrapeau: TLightMaterialSource;
    pDrapeau: TPlane;
    lIntro: TLight;
    aniPrincipale: TFloatAnimation;
    iFMXRace: TImage;
    layMainMenu: TLayout;
    btnStart: TRoundRect;
    lblStart: TLabel;
    btnOptions: TRoundRect;
    lblOptions: TLabel;
    btnCredits: TRoundRect;
    lblCredits: TLabel;
    layBackNext: TLayout;
    btnBack: TRoundRect;
    lblBack: TLabel;
    btnNext: TRoundRect;
    lblNext: TLabel;
    lblBackNext: TLabel;
    dmySelectCar: TDummy;
    cSocle1: TCylinder;
    matSocle: TLightMaterialSource;
    mVoitureBleue: TModel3D;
    matVoitureBleue: TLightMaterialSource;
    aniRotationSocle: TFloatAnimation;
    mRoueAvantDroiteBleue: TModel3D;
    mRoueMat01: TLightMaterialSource;
    mRoueArriereDroiteBleue: TModel3D;
    mRoueArriereGaucheBleue: TModel3D;
    mRoueAvantGaucheBleue: TModel3D;
    layPrec: TLayout;
    Pie1: TPie;
    layNext: TLayout;
    Pie2: TPie;
    aniDecalerSocle: TFloatAnimation;
    matVoitureRouge: TLightMaterialSource;
    matVoitureGrise: TLightMaterialSource;
    matVoiturePurple: TLightMaterialSource;
    lSelectCar1: TLight;
    layEnterName: TLayout;
    ePlayerName: TEdit;
    dmyRace: TDummy;
    mSol: TMesh;
    matSol: TLightMaterialSource;
    lSol: TLight;
    Camera1: TCamera;
    matCubemap: TTextureMaterialSource;
    dmyTrainArriereBleu: TDummy;
    dmyTrainAvantBleu: TDummy;
    layDroite: TLayout;
    layDirection: TLayout;
    GadgetsCircle: TCircle;
    GadgetsLayout: TLayout;
    sbArrowDown: TSpeedButton;
    ptArrowDown: TPath;
    sbArrowUp: TSpeedButton;
    ptArrowUp: TPath;
    sbArrowLeft: TSpeedButton;
    ptArrowLeft: TPath;
    sbArrowRight: TSpeedButton;
    ptArrowRight: TPath;
    Joystick: TCircle;
    dmyPositionJoueur: TDummy;
    dmyVoitureJoueur: TDummy;
    dmyProchainePosition: TDummy;
    layVitesse: TLayout;
    lblVitesse: TLabel;
    Rectangle1: TRectangle;
    layNom: TLayout;
    lblNom: TLabel;
    Rectangle2: TRectangle;
    mMontagne: TMesh;
    matMontagne: TLightMaterialSource;
    matPilierTunnel: TLightMaterialSource;
    matMurTunnel: TLightMaterialSource;
    pilier1: TRectangle3D;
    pilier2: TRectangle3D;
    pilier3: TRectangle3D;
    pilier4: TRectangle3D;
    pilier5: TRectangle3D;
    pilier6: TRectangle3D;
    murDroit: TPlane;
    murGauche: TPlane;
    plafond: TPlane;
    batiment1: TRectangle3D;
    matBatiment1: TLightMaterialSource;
    matBatiment1Cote: TLightMaterialSource;
    Batiment2: TRectangle3D;
    batiment3: TModel3D;
    Model3D1Mat01: TLightMaterialSource;
    batiment4: TModel3D;
    batiment5: TRectangle3D;
    batiment6: TCylinder;
    batiment7: TCylinder;
    batiment8: TCylinder;
    batiment9: TCylinder;
    batiment10: TRectangle3D;
    batiment11: TModel3D;
    layChrono: TLayout;
    lblChrono: TLabel;
    matPanneauDroite: TTextureMaterialSource;
    matPanneauGauche: TTextureMaterialSource;
    panneau1: TPlane;
    panneau2: TPlane;
    panneau3: TPlane;
    panneau4: TPlane;
    panneau5: TPlane;
    panneau6: TPlane;
    panneau7: TPlane;
    panneau8: TPlane;
    panneau9: TPlane;
    panneau10: TPlane;
    panneau11: TPlane;
    layBas: TLayout;
    btnCamera: TButton;
    Camera2: TCamera;
    Camera3: TCamera;
    layOptions: TLayout;
    recOptions: TRectangle;
    lOptions: TLabel;
    RoundRect1: TRoundRect;
    Label1: TLabel;
    lblMultisample: TLabel;
    layCredits: TLayout;
    Rectangle3: TRectangle;
    RoundRect2: TRoundRect;
    Label3: TLabel;
    memCredits: TMemo;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Rectangle4: TRectangle;
    btnQuitter: TButton;
    tmFPS: TTimer;
    lblFPS: TLabel;
    lblShowFPS: TLabel;
    sShowFPS: TSwitch;
    lblVille: TLabel;
    sVille: TSwitch;
    lblMontagne: TLabel;
    sMontagne: TSwitch;
    lblInclinaison: TLabel;
    sInclinaison: TSwitch;
    Camera4: TCamera;
    procedure aniPrincipaleProcess(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pDrapeauRender(Sender: TObject; Context: TContext3D);
    procedure btnStartClick(Sender: TObject);
    procedure btnOptionsClick(Sender: TObject);
    procedure btnCreditsClick(Sender: TObject);
    procedure btnBackClick(Sender: TObject);
    procedure btnNextClick(Sender: TObject);
    procedure Pie2Click(Sender: TObject);
    procedure Pie1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure JoystickMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure GadgetsLayoutMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
    procedure GadgetsLayoutMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
    procedure btnCameraClick(Sender: TObject);
    procedure RoundRect1Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure btnQuitterClick(Sender: TObject);
    procedure vMain3DPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
    procedure tmFPSTimer(Sender: TObject);
  private
    procedure CreateSelectCar;
    procedure ChargerHeightmaps;
    procedure IHMJeu(estVisible: boolean);
    procedure InitialiserJoystick;
    procedure IHMIntro(estVisible: boolean);
    procedure IHMBackNext(estVisible: boolean);
    procedure IHMSelectCar(estVisible: boolean);
    procedure IHMEnterName(estVisible: boolean);
    procedure IHMPrecNext(estVisible: boolean);
    procedure GestionJeu;
    procedure RecupererVoitureSelectionnee;
    procedure InitialisationJeu;
    procedure AnimationRoues(objet: TModel3D);
    procedure NommageEnfants(objet : TModel3D; indiceCar: integer);
    procedure InclinaisonVoiture(objet : TModel3D);
    function GetDirection: TPoint3D;
    procedure accelerer;
    procedure gestionDeceleration;
    procedure SwitchCamera;
    procedure IHMOptions(estVisible: boolean);
    procedure IHMCredits(estVisible: boolean);
    procedure AffichageBatiments;
    procedure GestionJoystick;

    { Déclarations privées }
  public
    { Déclarations publiques }
    scene, voitureSelectionnee, moitieCarte, cameraActive, fps, vitesseKMH : integer;
    temps, miseAEchelle, demiHauteurSol, vitesse, laDirection, angleRoue, deceleration, acceleration, diffx, diffy : single;
    centreDrapeau : TPoint3D;
    maHeightMap, maMontagne: TBitmap;
    dejaClone, creerVoitureJoueur, useJoystick, optionInclinaison, optionVille, optionMontagne, optionFPS : boolean;    // sert pour le joystick virtuel
    optionMultisample : TMultisample;
    Offset: TPointF;       // Décallage entre l'endroit du clic et le centre du cercle du joystick
    depart : TDatetime;
    property direction : TPoint3D read GetDirection; // Propriété de la direction
  end;

const
  SizeMap = 127;
  vitesseMax = 200;
  vitesseMin = -25;
  sizeHauteur = 3;  // Taille hauteur du TMesh
  pasAngle = 0.15;
  pasVitesse = 0.2;
  decelerationDefaut = 0.0005;
  scaleVoiture = 0.2;
  maxCamera = 4;

var
  fPrincipale: TfPrincipale;

implementation

uses uGBEUtils3D;

{$R *.fmx}
//------------------ Boucle principale du jeu -----------------------------------
procedure TfPrincipale.aniPrincipaleProcess(Sender: TObject);
begin
  case scene of
  0 : begin // Intro
        IHMIntro(true);
        IHMBackNext(false);
        IHMPrecNext(false);
        IHMSelectCar(false);
        IHMEnterName(false);
        IHMJeu(false);
        IHMOptions(false);
        IHMCredits(false);
      end;
  1 : begin // Choix voiture
        dmyIntro.Visible := true;
        IHMIntro(false);
        IHMBackNext(true);
        IHMPrecNext(true);
        IHMSelectCar(true);
        IHMEnterName(false);
        IHMJeu(false);
        IHMOptions(false);
        IHMCredits(false);
      end;
  2 : begin // Entrer un nom
        dmyIntro.Visible := true;
        IHMIntro(false);
        IHMBackNext(true);
        IHMPrecNext(false);
        IHMSelectCar(false);
        IHMEnterName(true);
        IHMJeu(false);
        IHMOptions(false);
        IHMCredits(false);
      end;
  3 : begin // Jeu
        dmyIntro.Visible := false;
        IHMIntro(false);
        IHMBackNext(false);
        IHMPrecNext(false);
        IHMSelectCar(false);
        IHMEnterName(false);
        IHMJeu(true);
        IHMOptions(false);
        IHMCredits(false);
        gestionJeu;
      end;
  4 : begin // Options
        IHMIntro(false);
        IHMBackNext(false);
        IHMPrecNext(false);
        IHMSelectCar(false);
        IHMEnterName(false);
        IHMJeu(false);
        IHMOptions(true);
        IHMCredits(false);
      end;
  5 : begin // Credits
        IHMIntro(false);
        IHMBackNext(false);
        IHMPrecNext(false);
        IHMSelectCar(false);
        IHMEnterName(false);
        IHMJeu(false);
        IHMOptions(false);
        IHMCredits(true);
      end;
  end;
  vMain3D.repaint;
end;

//------------------ Gestion de la phase de course -----------------------------------
procedure TfPrincipale.GestionJeu;
var
  duree : TDatetime;
begin
  if creerVoitureJoueur then begin
    initialisationJeu;
    RecupererVoitureSelectionnee;
    dmyPositionJoueur.Position.Y := CalculerHauteur(mSol, dmyPositionJoueur.Position.Point, miseAEchelle, moitieCarte, sizemap);
    if optionInclinaison then InclinaisonVoiture(TModel3D(dmyVoitureJoueur.Children[0]));
  end
  else begin
    duree := now - depart;
    lblChrono.Text := formatdatetime('nn:ss:zzz', duree);
  end;

  deceleration := decelerationDefaut;
  if not(useJoystick) then gestionDeceleration;
  accelerer;

  // Affichage de la vitesse en km/h
  vitesseKMH := Trunc((-vitesse * 700));
  if vitesseKMH = 0 then vitesse := 0;
  lblVitesse.text := vitesseKMH.ToString + ' km/h';

  // Empêche de tourner si vitesse = 0
  if vitesseKMH <> 0 then dmyPositionJoueur.RotationAngle.Y := dmyPositionJoueur.RotationAngle.Y + laDirection;

  // On déplace le dummy de la prochaine position du joueur à la position calculée en fonction de la direction et la vitesse...
  dmyProchainePosition.Position.Point := dmyPositionJoueur.Position.Point + direction * vitesse;
  // ... et en fonction de l'altitude du point concerné
  dmyProchainePosition.Position.Y := CalculerHauteur(mSol, dmyProchainePosition.Position.Point, miseAEchelle, moitieCarte, sizemap);

  // S'il n'y a pas de collision avec le sol et le tunnel, on déplace le joueur à la position calculée, sinon, on stoppe le véhicule
  if (DetectionCollisionObstacle(mSol, dmyProchainePosition) = false) and (DetectionCollisionObstacle(mMontagne, dmyProchainePosition) = false) then dmyPositionJoueur.Position.Point := dmyProchainePosition.Position.Point
  else vitesse := 0;

  // Inclinaison du véhicule
  if optionInclinaison and (vitesseKMH <> 0) then InclinaisonVoiture(TModel3D(dmyVoitureJoueur.Children[0]));

  // Permet de faire tourner les roues
  AnimationRoues(TModel3D(dmyVoitureJoueur.Children[0]));
end;

//------------------ Permet d'incliner la voiture en fonction du sol -----------------------------------
procedure TfPrincipale.InclinaisonVoiture(objet: TModel3D);
var
  hauteurRoueAvantGauche, hauteurRoueAvantDroite, hauteurRoueArriereDroite : single;
begin
  hauteurRoueAvantGauche := CalculerHauteur(mSol, TPoint3D(TModel3D(objet.Children[2].Children[1]).AbsolutePosition), miseAEchelle, moitieCarte, sizemap);
  hauteurRoueAvantDroite := CalculerHauteur(mSol, TPoint3D(TModel3D(objet.Children[2].Children[0]).AbsolutePosition), miseAEchelle, moitieCarte, sizemap);
  hauteurRoueArriereDroite := CalculerHauteur(mSol, TPoint3D(TModel3D(objet.Children[1].Children[0]).AbsolutePosition), miseAEchelle, moitieCarte, sizemap);
  objet.RotationAngle.X := (hauteurRoueAvantGauche - hauteurRoueArriereDroite)*sizemap*scaleVoiture;
  objet.RotationAngle.Z := 180-(hauteurRoueAvantGauche - hauteurRoueAvantDroite)*sizemap*scaleVoiture;
end;

//------------------ Initialisation du jeu -----------------------------------
procedure TfPrincipale.InitialisationJeu;
begin
  vitesse := 0;
  deceleration := 0;
  acceleration := 0;
  angleRoue := 0;
  dmyPositionJoueur.Position.X := -38;
  dmyPositionJoueur.Position.Z := 0;
  dmyPositionJoueur.RotationAngle.y := 10;
  lblNom.Text := ePlayerName.Text;
  cameraActive := 0;
  depart := now;

  if optionMontagne then CreerHeightmap(31, mMontagne, 40, 42, 20, maMontagne)
  else CreerHeightmap(1, mMontagne, 0, 0, 0, maMontagne);

  tmFPS.Enabled := optionFPS;
  if not(optionFPS) then lblFPS.Text := '';

  AffichageBatiments;
  vMain3D.Multisample := optionMultisample;

  dmyPositionJoueur.Width := 2.8;
  dmyPositionJoueur.Height := 1.8;
  dmyPositionJoueur.Depth := 7;
  dmyProchainePosition.Width := dmyPositionJoueur.Width * scaleVoiture;
  dmyProchainePosition.Height := dmyPositionJoueur.Height  * scaleVoiture;
  dmyProchainePosition.Depth := dmyPositionJoueur.Depth * scaleVoiture;
  dmyVoitureJoueur.Scale.x := scaleVoiture;
  dmyVoitureJoueur.Scale.y := scaleVoiture;
  dmyVoitureJoueur.Scale.z := scaleVoiture;
end;

//------------------ Affichage des batiments -------------------------
procedure TfPrincipale.AffichageBatiments;
var
  i : integer;
begin
  for i := 0 to mSol.ChildrenCount-1 do begin
    if pos('batiment', lowercase(mSol.Children[i].name)) > 0 then begin
       (mSol.Children[i] as TControl3D).visible := optionVille;
       if optionVille then (mSol.Children[i] as TControl3D).Tag := 1
       else (mSol.Children[i] as TControl3D).Tag := 0;
    end;
  end;
end;

//------------------ Décélération -----------------------------------
procedure TfPrincipale.gestionDeceleration;
begin
  if vitesseKMH > 0 then vitesse := vitesse + deceleration
  else begin
    if vitesseKMH = 0 then deceleration := 0
    else vitesse := vitesse - deceleration;
  end;
end;

//------------------ Accélération -----------------------------------
procedure TfPrincipale.accelerer;
begin
  GestionJoystick;
  if vitesseKMH > 0 then begin
    if vitesseKMH < vitesseMax then vitesse := vitesse - (acceleration * 0.008);
  end
  else begin
    if vitesseKMH > vitesseMin then vitesse := vitesse - (acceleration * 0.008);
  end;
end;

//------------------ Gestion des roues -----------------------------------
procedure TfPrincipale.AnimationRoues(objet: TModel3D);
begin
  TDummy(objet.Children[1]).rotationangle.X := TDummy(objet.Children[1]).rotationangle.X - vitesse*150;
  TModel3D(objet.Children[2].Children[1]).rotationangle.y := TModel3D(objet.Children[2].Children[1]).rotationangle.y - vitesse*150;
  TModel3D(objet.Children[2].Children[0]).rotationangle.y := TModel3D(objet.Children[2].Children[0]).rotationangle.y + vitesse*150;
end;

//------------------ Permet de récupérer la voiture sélectionnée comme voiture pour le joueur -----------------------------------
procedure TfPrincipale.RecupererVoitureSelectionnee;
var
  i, j: integer;
  aRechercher : string;
begin
  case voitureSelectionnee of
    0: aRechercher := 'mVoitureBleue';
    1: aRechercher := 'mVoitureRouge';
    2: aRechercher := 'mVoitureGrise';
    3: aRechercher := 'mVoiturePurple';
  end;

  for I := 0 to dmySelectCar.ChildrenCount-1 do begin
    if pos('cSocle', dmySelectCar.Children[i].Name) > 0 then begin
      for j := 0 to dmySelectCar.Children[i].ChildrenCount-1 do begin
        if dmySelectCar.Children[i].Children[j].Name = aRechercher then begin
          TModel3D(dmySelectCar.Children[i].Children[j]).RotationAngle.Y := 0;
          dmySelectCar.Children[i].Children[j].Parent := dmyVoitureJoueur;
          break;
        end;
      end;
    end;
  end;

  creerVoitureJoueur := false;
end;

//------------------  -----------------------------------
procedure TfPrincipale.RoundRect1Click(Sender: TObject);
begin
  optionInclinaison := sInclinaison.IsChecked;
  optionVille := sVille.IsChecked;
  optionMontagne := sMontagne.IsChecked;
  optionFPS := sShowFPS.IsChecked;
  if RadioButton1.IsChecked then optionMultisample := TMultisample.None;
  if RadioButton2.IsChecked then optionMultisample := TMultisample.TwoSamples;
  if RadioButton3.IsChecked then optionMultisample := TMultisample.FourSamples;
  scene := 0;
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.IHMOptions(estVisible: boolean);
begin
  layOptions.Visible := estVisible;
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.IHMCredits(estVisible: boolean);
begin
  layCredits.Visible := estVisible;
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.IHMJeu(estVisible : boolean);
begin
  dmyIntro.Visible := not(estVisible);
  dmyRace.Visible := estVisible;
  layDroite.Visible := estVisible;
  layBas.Visible := estVisible;
  lSol.Enabled :=  estVisible;
  if estVisible then SwitchCamera;
  vMain3D.UsingDesignCamera := not(estVisible);
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.IHMIntro(estVisible : boolean);
begin
  iFMXRace.Visible := estVisible;
  layMainMenu.Visible := estVisible;
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.IHMBackNext(estVisible : boolean);
begin
  layBackNext.Visible := estVisible;
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.IHMPrecNext(estVisible : boolean);
begin
  layPrec.Visible := estVisible;
  layNext.Visible := estVisible;
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.IHMSelectCar(estVisible : boolean);
begin
  dmySelectCar.Visible := estVisible;
  lblBackNext.Text := 'Select a car';
  lblNext.text := 'Next';
  if estVisible then creerVoitureJoueur := true;
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.IHMEnterName(estVisible : boolean);
begin
  layEnterName.Visible := estVisible;
  if estVisible then
  begin
    ePlayerName.SetFocus;
    lblBackNext.Text := 'Enter your name';
    lblNext.text := 'Race';
  end;
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.FormCreate(Sender: TObject);
begin
  {$IFDEF ANDROID}
     FullScreen := true;
  {$ENDIF}
  ChargerHeightmaps;
  miseAEchelle := CreerHeightmap(sizemap, mSol, sizemap, sizemap, sizeHauteur, maHeightMap);
  moitieCarte := math.Floor(SizeMap/2);
  demiHauteurSol := mSol.Depth/2;
  optionInclinaison := true;
  optionVille := true;
  optionMontagne := true;
  optionMultisample := TMultisample.FourSamples;
  optionFPS := false;

  sVille.IsChecked := optionVille;
  sMontagne.IsChecked := optionMontagne;
  sShowFPS.IsChecked := optionFPS;
  sInclinaison.IsChecked := optionInclinaison;

  scene := 0;
  temps := 0;
  fps := 0;
  useJoystick := false;
  voitureSelectionnee := 0;
  dejaClone := false;

  with TGBECubeMap.Create(dmyRace) do begin
    MaterialSource := matCubemap;
    width := mSol.Width*2;
    height := width;
    depth := width;
    parent := dmyRace;
    TwoSide := true;
    hittest := false;
    position.X := 0;
    position.Y := 0;
    position.Z := 0;
  end;

  centreDrapeau := Point3D(pDrapeau.SubdivisionsWidth / pDrapeau.Width, pDrapeau.SubdivisionsHeight / pDrapeau.Height, 2);
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.FormDestroy(Sender: TObject);
begin
  FreeAndNil(maHeightMap);
  FreeAndNil(maMontagne);
end;

//-------- Clic sur le joystick ------------------------------------------------------------
procedure TfPrincipale.GadgetsLayoutMouseDown(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  Offset.X := X;
  Offset.Y := Y;
  GadgetsLayout.Root.Captured := GadgetsLayout;
  useJoystick := true;
end;

//-------- Déplacemet du joystick ----------------------------------------------------------
procedure TfPrincipale.GadgetsLayoutMouseMove(Sender: TObject; Shift: TShiftState; X, Y: Single);
var
  newX, newY : single;
begin
  if useJoystick then begin
    if X > (GadgetsLayout.Width + Offset.X ) then X := GadgetsLayout.Width + Offset.X  ;
    if Y > (GadgetsLayout.Height + Offset.Y  ) then Y := GadgetsLayout.Height + Offset.Y ;

    newX := X - Offset.X + joystick.Width/3;
    newY := Y - Offset.Y + joystick.Width/3;

    diffX := (joystick.Position.X - newX) * pasAngle/2.5;
    diffY := (joystick.Position.Y - newY) * pasVitesse/2.5;
//
//    oldVitesse := vitesse;
//    acceleration := diffY * 0.5;
//
//    if ((oldVitesse < 0) and (vitesse > 0)) or
//       ((oldVitesse > 0) and (vitesse < 0)) then
//       laDirection := 0;
//
//    angleRoue := (diffx * pasAngle);
//
//    if vitesse < 0 then laDirection := laDirection - angleRoue
//    else laDirection := laDirection + angleRoue;

    joystick.Position.X := newX;
    joystick.Position.Y := newY;
  end;

  interactionIHM(aniPrincipale);
end;

//-------- Animation du drapeau en fond d'écran -------------------------------------------
procedure TfPrincipale.pDrapeauRender(Sender: TObject;
  Context: TContext3D);
begin
  TTask.Create( procedure
                begin
                  WavesOnMesh(pDrapeau, Point3D(0,0,0), Point3D(pDrapeau.SubdivisionsWidth, pDrapeau.SubdivisionsHeight, 0) * 0.5 + Point3D(0,1,2) * centreDrapeau, Point3D(0.002, 0.9, 15), pDrapeau.SubdivisionsHeight, temps); // Animtion du drapeau
                end).start;
end;

//-------- Changement de voiture ----------------------------------------------------------
procedure TfPrincipale.Pie1Click(Sender: TObject);
begin
  if not(aniDecalerSocle.Running) then begin
    aniDecalerSocle.StartValue := dmySelectCar.Position.X;
    aniDecalerSocle.StopValue := dmySelectCar.Position.X+11;
    aniDecalerSocle.Start;
    dec(voitureSelectionnee);
  end;
end;

procedure TfPrincipale.Pie2Click(Sender: TObject);
begin
  if not(aniDecalerSocle.Running) then begin
    aniDecalerSocle.StartValue := dmySelectCar.Position.X;
    aniDecalerSocle.StopValue := dmySelectCar.Position.X-11;
    aniDecalerSocle.Start;
    inc(voitureSelectionnee);
  end;
end;

//------- Clic sur les boutons Back ou Next ------------------------------------------------
procedure TfPrincipale.btnBackClick(Sender: TObject);
begin
  scene := scene - 1;
end;

procedure TfPrincipale.btnNextClick(Sender: TObject);
begin
  if not ((scene = 2) and (trim(ePlayerName.Text) = '')) then scene := scene + 1; // Ne pas passer à la scène suivant si aucun nom de joueur saisi
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.btnCameraClick(Sender: TObject);
begin
  inc(cameraActive);
  SwitchCamera;
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.btnCreditsClick(Sender: TObject);
begin
  scene := 5;
end;

//------------------------------------------------------------------------------------------
procedure TfPrincipale.btnOptionsClick(Sender: TObject);
begin
  scene := 4;
end;

//-------- On quitte le jeu ---------------------------------------------------------------
procedure TfPrincipale.btnQuitterClick(Sender: TObject);
begin
  case voitureSelectionnee of
    0: dmyVoitureJoueur.Children[0].Parent := dmySelectCar.Children[0];
    1: dmyVoitureJoueur.Children[0].Parent := dmySelectCar.Children[3];
    2: dmyVoitureJoueur.Children[0].Parent := dmySelectCar.Children[4];
    3: dmyVoitureJoueur.Children[0].Parent := dmySelectCar.Children[5];
  end;
  scene := 0;
end;

//-------- Initialisation écran de sélection de voiture ------------------------------------
procedure TfPrincipale.btnStartClick(Sender: TObject);
begin
  if not(dejaClone) then CreateSelectCar;
  scene := 1;
end;

//-------- Création des 3 voitures supplémentaires dans l'écran de sélection ---------------
procedure TfPrincipale.CreateSelectCar;
var
  nbCar, I: Integer;
  j: integer;
  cylindre : TCylinder;
begin
  dejaClone := true;

  for nbCar := 0 to 2 do begin
    cylindre := TCylinder(cSocle1.Clone(nil));
    cylindre.parent := dmySelectCar;
    cylindre.position.x := (1 + nbCar) * 11;
    cylindre.name := 'cSocleNum'+nbCar.ToString;

    for I := 0 to cylindre.ChildrenCount-1 do begin
      if cylindre.Children[i] is TModel3D then begin
        if TModel3D(cylindre.Children[i]).Tag = 1 then begin
          NommageEnfants(TModel3D(cylindre.Children[i]), nbCar);

          For j := 0 to Length(TModel3D(cylindre.Children[i]).MeshCollection) - 1 do begin
            case nbCar of
              0: TModel3D(cylindre.Children[i]).MeshCollection[j].MaterialSource := matVoitureRouge;
              1: TModel3D(cylindre.Children[i]).MeshCollection[j].MaterialSource := matVoitureGrise;
              2: TModel3D(cylindre.Children[i]).MeshCollection[j].MaterialSource := matVoiturePurple;
            end;
          end;
        end;
      end;
      if cylindre.Children[i] is TFloatAnimation then TFloatAnimation(cylindre.Children[i]).Start;
    end;
  end;
end;

//-------- Nommage des objets clonés ------------------------------------------------------
procedure TfPrincipale.NommageEnfants(objet : TModel3D; indiceCar: integer);
begin
  case indiceCar of
    0: begin
         objet.Name := 'mVoitureRouge';
         objet.Children[1].Name := 'dmyTrainArriereRouge';
         objet.Children[1].Children[0].Name := 'mRoueArriereDroiteBleue';
         objet.Children[1].Children[1].Name := 'mRoueArriereGaucheBleue';
         objet.Children[2].Name := 'dmyTrainAvantRouge';
         objet.Children[2].Children[0].Name := 'mRoueAvantDroiteRouge';
         objet.Children[2].Children[1].Name := 'mRoueAvantGaucheRouge';
       end;
    1: begin
         objet.Name := 'mVoitureGrise';
         objet.Children[1].Name := 'dmyTrainArriereGrise';
         objet.Children[1].Children[0].Name := 'mRoueArriereDroiteGrise';
         objet.Children[1].Children[1].Name := 'mRoueArriereGaucheGrise';
         objet.Children[2].Name := 'dmyTrainAvantGrise';
         objet.Children[2].Children[0].Name := 'mRoueAvantDroiteGrise';
         objet.Children[2].Children[1].Name := 'mRoueAvantGaucheGrise';
       end;
    2: begin
         objet.Name := 'mVoiturePurple';
         objet.Children[1].Name := 'dmyTrainArrierePurple';
         objet.Children[1].Children[0].Name := 'mRoueArriereDroitePurple';
         objet.Children[1].Children[1].Name := 'mRoueArriereGauchePurple';
         objet.Children[2].Name := 'dmyTrainAvantPurple';
         objet.Children[2].Children[0].Name := 'mRoueAvantDroitePurple';
         objet.Children[2].Children[1].Name := 'mRoueAvantGauchePurple';
       end;
  end;
end;

//-------- Chargement des heightmap depuis les ressources ---------------------------------
procedure TfPrincipale.ChargerHeightmaps;
var
  Stream: TResourceStream;
begin
  maHeightMap:=TBitmap.Create;
  Stream := TResourceStream.Create(HInstance, 'circuit1', RT_RCDATA);
  maHeightMap.LoadFromStream(Stream);
  Stream.Free;

  maMontagne:=TBitmap.Create;
  Stream := TResourceStream.create(HInstance, 'montagne', RT_RCDATA);
  maMontagne.LoadFromStream(Stream);
  Stream.Free;
end;

//-------- Initialisation du Joysitck ------------------------------------------------------
procedure TfPrincipale.InitialiserJoystick;
begin
  TAnimator.AnimateFloat(Joystick,'Position.X',16);
  TAnimator.AnimateFloat(Joystick,'Position.Y',16);
  acceleration := 0;
  laDirection := 0;
  diffx := 0;
  diffy := 0;
  gestionJoystick;
end;

//-------- L'utilisateur relache le joystick -----------------------------------------------
procedure TfPrincipale.JoystickMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Single);
begin
  useJoystick := false;
  InitialiserJoystick;
end;

//-------- Validation écran Credits --------------------------------------------------------
procedure TfPrincipale.Label3Click(Sender: TObject);
begin
  scene := 0;
end;

//-------- Gestion de la direction ---------------------------------------------------------
function TfPrincipale.GetDirection: TPoint3D;
begin
  result := Point3D(1,0,1) * (TPoint3D(Camera1.AbsolutePosition) - TPoint3D(dmyPositionJoueur.AbsolutePosition));  // Détermination de l'orientation à partir de camera1 et du dmyPositionJoueur
end;

//-------- Gestion des caméras -------------------------------------------------------------
procedure TfPrincipale.SwitchCamera;
begin
  if cameraActive > maxCamera-1 then cameraActive := 0;

  case cameraActive of
    0: vMain3D.Camera := camera1;
    1: vMain3D.Camera := camera2;
    2: vMain3D.Camera := camera3;
    3: vMain3D.Camera := camera4;
  end;
end;

//-------- Gestion du FPS -------------------------------------------------------------
procedure TfPrincipale.tmFPSTimer(Sender: TObject);
begin
  lblFPS.Text := 'FPS: '+fps.ToString;
  fps := 0;
end;

procedure TfPrincipale.vMain3DPaint(Sender: TObject; Canvas: TCanvas; const ARect: TRectF);
begin
  inc(fps);
end;


//-------- Gestion Joystick -----------------------------------------------------------
procedure TfPrincipale.GestionJoystick;
var
  oldVitesse : single;
begin
  oldVitesse := vitesse;
  acceleration := diffY * 0.5;

  if ((oldVitesse < 0) and (vitesse > 0)) or
     ((oldVitesse > 0) and (vitesse < 0)) then
     laDirection := 0;

  angleRoue := (diffx * pasAngle);

  if vitesse < 0 then laDirection := laDirection - angleRoue
  else laDirection := laDirection + angleRoue;

end;

end.
