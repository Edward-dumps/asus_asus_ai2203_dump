.class public Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;
.super Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;
.source "AsusFingerprintEnrollFindSensor.java"


# static fields
.field private static APNG_FILE_NAME:I = 0x0

.field private static TAG:Ljava/lang/String; = "AsusFingerprintEnrollFindSensor"


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFindSensorImg:Landroid/widget/ImageView;

.field private mIsPaused:Z

.field private mLaunchedConfirmLock:Z

.field private mNextClicked:Z

.field private mPosition:Z

.field private mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method public static synthetic $r8$lambda$UXeehahZG7XPEm26abaRAkPUQlk(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->lambda$onCreate$0(IIJ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mPosition:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mIsPaused:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mNextClicked:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;Z)Z
    .locals 0

    .line 52
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mNextClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;Z)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->proceedToEnrolling(Z)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(IIJ)V
    .locals 0

    .line 93
    iput-wide p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mChallenge:J

    .line 94
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mSensorId:I

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    .line 100
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    const-string p2, "hw_auth_token"

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    return-void
.end method

.method private launchFindSensor([B)V
    .locals 3

    .line 325
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p1, :cond_0

    const-string v1, "hw_auth_token"

    .line 327
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 329
    :cond_0
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_1

    const-string v1, "android.intent.extra.USER_ID"

    .line 330
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 332
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/BiometricUtils;->copyMultiBiometricExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 333
    iget-wide v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mChallenge:J

    const-string p1, "challenge"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 334
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mSensorId:I

    const-string v1, "sensor_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private proceedToEnrolling(Z)V
    .locals 2

    .line 232
    :try_start_0
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->TAG:Ljava/lang/String;

    const-string v1, "proceedToEnrolling"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 235
    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 243
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 244
    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    goto :goto_0

    .line 246
    :cond_1
    sget-object p1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->TAG:Ljava/lang/String;

    const-string v0, "mSidecar is null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 249
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 250
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 252
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private startLookingForFingerprint()V
    .locals 3

    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_0

    .line 156
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    const/4 v2, 0x1

    .line 157
    invoke-virtual {v0, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->setEnrollReason(I)V

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 159
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$1;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 0

    .line 142
    sget p0, Lcom/android/settings/R$layout;->asus_fingerprint_enroll_find_sensor:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf1

    return p0
.end method

.method protected maybeInitialDatabase()V
    .locals 3

    .line 344
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 345
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 346
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-nez v0, :cond_2

    .line 348
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "unlock_device_with_fingerprint"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 351
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-string v0, "hw_auth_token"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_0

    .line 271
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    if-eqz p1, :cond_0

    .line 274
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->launchFindSensor([B)V

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 279
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p1, v2, :cond_8

    if-nez p3, :cond_3

    .line 284
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 287
    :cond_3
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 288
    iget-wide v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mChallenge:J

    const-string p1, "challenge"

    invoke-virtual {p3, p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 289
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mSensorId:I

    const-string v0, "sensor_id"

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-ne p2, v1, :cond_4

    .line 292
    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 293
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    if-ne p2, v2, :cond_5

    .line 295
    invoke-virtual {p0, v2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    const/4 p1, 0x3

    if-ne p2, p1, :cond_6

    .line 298
    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 299
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 301
    :cond_6
    const-class p1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 302
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 303
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 304
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v0, "config_fingerprintMaxTemplatesPerUser"

    const-string v1, "integer"

    const-string v2, "android"

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 303
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    if-lt p1, p2, :cond_7

    .line 306
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_7
    const/4 p1, 0x0

    .line 316
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mNextClicked:Z

    goto :goto_0

    .line 320
    :cond_8
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 4

    .line 258
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 259
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 260
    iget-wide v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mChallenge:J

    const-string v3, "challenge"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 261
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mSensorId:I

    const-string v2, "sensor_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 262
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 263
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setSubContentView(I)V

    .line 84
    sget v0, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_find_sensor_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setHeaderText(I)V

    if-eqz p1, :cond_0

    const-string v0, "launched_confirm_lock"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    const-string v0, "hw_auth_token"

    .line 87
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    .line 90
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    const-class p1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 92
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_0

    .line 104
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    if-eqz p1, :cond_4

    .line 112
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->maybeInitialDatabase()V

    .line 115
    sget p1, Lcom/android/settings/R$id;->hint_message:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 122
    sget p1, Lcom/android/settings/R$id;->find_sensor_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mFindSensorImg:Landroid/widget/ImageView;

    .line 123
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->isClassicZenUITheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/android/settings/R$raw;->asus_fingerprint_find_sensor_apng:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/android/settings/R$raw;->asus_fingerprint_find_sensor_fod:I

    :goto_1
    sput p1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->APNG_FILE_NAME:I

    .line 124
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mFindSensorImg:Landroid/widget/ImageView;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    :try_start_0
    sget-object p1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->TAG:Ljava/lang/String;

    const-string v1, "Start Apng animation"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object p1, Lcom/linecorp/apng/ApngDrawable;->Companion:Lcom/linecorp/apng/ApngDrawable$Companion;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->APNG_FILE_NAME:I

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v3, v3}, Lcom/linecorp/apng/ApngDrawable$Companion;->decode(Landroid/content/res/Resources;ILjava/lang/Integer;Ljava/lang/Integer;)Lcom/linecorp/apng/ApngDrawable;

    move-result-object p1

    .line 129
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mFindSensorImg:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    instance-of p0, p1, Lcom/linecorp/apng/ApngDrawable;

    if-eqz p0, :cond_3

    .line 131
    invoke-virtual {p1, v0}, Lcom/linecorp/apng/ApngDrawable;->setLoopCount(I)V

    .line 132
    invoke-virtual {p1}, Lcom/linecorp/apng/ApngDrawable;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 135
    sget-object p1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    sget-object p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->TAG:Ljava/lang/String;

    const-string p1, "Exception in start apng"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void

    .line 109
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "HAT and GkPwHandle both missing..."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onDestroy()V
    .locals 0

    .line 192
    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onDestroy()V

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 4

    .line 217
    sget-object v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->TAG:Ljava/lang/String;

    const-string v1, "onNextButtonClick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mNextClicked:Z

    if-nez v0, :cond_0

    .line 219
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$2;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    const/4 v0, 0x1

    .line 226
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mNextClicked:Z

    .line 227
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->startLookingForFingerprint()V

    :cond_1
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 199
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 204
    invoke-super {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 210
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 211
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    const-string v1, "launched_confirm_lock"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 147
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    .line 148
    sget-object p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->TAG:Ljava/lang/String;

    const-string v0, "onStart()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 185
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStop()V

    .line 186
    sget-object p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->TAG:Ljava/lang/String;

    const-string v0, "onStop()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setButtonText(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 8

    const/16 v0, 0x8

    .line 358
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_find_sensor_next_v2:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 360
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 361
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$color;->asusres_button_text_color_disabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/widget/Button;->setTextColor(I)V

    .line 363
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    move-object v0, p1

    move-object v1, p0

    move-object v6, p2

    move-object v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor$3;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;JJLandroid/widget/Button;Landroid/content/Context;)V

    .line 377
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method
