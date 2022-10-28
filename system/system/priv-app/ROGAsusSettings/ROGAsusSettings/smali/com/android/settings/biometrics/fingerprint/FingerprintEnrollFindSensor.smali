.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "FingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# instance fields
.field private mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

.field private mCanAssumeUdfps:Z

.field private mNextClicked:Z

.field private mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method public static synthetic $r8$lambda$4daull5ZuBU2Dz0rPnqrRnvTetQ(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->onStartButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BIZwhP96Hcr_xv5kvapS73PWLT4(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->lambda$onCreate$0(IIJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(IIJ)V
    .locals 0

    .line 102
    iput-wide p3, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    .line 103
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    .line 104
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 109
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    const-string p3, "hw_auth_token"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 111
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    return-void
.end method

.method private onStartButtonClick(Landroid/view/View;)V
    .locals 1

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getFingerprintEnrollingIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private proceedToEnrolling(Z)V
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 233
    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    .line 241
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    const/4 p1, 0x0

    .line 242
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getFingerprintEnrollingIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_1
    return-void
.end method

.method private startLookingForFingerprint()V
    .locals 3

    .line 162
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_1

    .line 170
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    const/4 v2, 0x1

    .line 171
    invoke-virtual {v0, v2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->setEnrollReason(I)V

    .line 172
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    .line 173
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 176
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    return-void
.end method

.method private stopLookingForFingerprint()V
    .locals 3

    .line 152
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 153
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    .line 154
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 156
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 157
    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    :cond_0
    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 0

    .line 137
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeUdfps:Z

    if-eqz p0, :cond_0

    .line 138
    sget p0, Lcom/android/settings/R$layout;->udfps_enroll_find_sensor_layout:I

    return p0

    .line 140
    :cond_0
    sget p0, Lcom/android/settings/R$layout;->fingerprint_enroll_find_sensor:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf1

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Pretty sure this is dead code"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 259
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_2
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    const/4 p1, 0x1

    if-eq p2, p1, :cond_4

    const/4 p1, 0x2

    if-eq p2, p1, :cond_4

    const/4 p1, 0x3

    if-eq p2, p1, :cond_4

    .line 270
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    .line 271
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 272
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const-string v0, "config_fingerprintMaxTemplatesPerUser"

    const-string v1, "integer"

    const-string v2, "android"

    invoke-virtual {p3, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    .line 272
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    if-lt p1, p2, :cond_3

    .line 275
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 278
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    goto :goto_1

    .line 266
    :cond_4
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 267
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 283
    :cond_5
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 132
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->stopLookingForFingerprint()V

    .line 133
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const-class p1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 61
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeUdfps:Z

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->getContentView()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p1

    const-class v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object p1

    check-cast p1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 65
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_enrolling_skip:I

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x7

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 74
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeUdfps:Z

    if-eqz p1, :cond_1

    .line 75
    sget p1, Lcom/android/settings/R$string;->security_settings_udfps_enroll_find_sensor_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 76
    sget p1, Lcom/android/settings/R$string;->security_settings_udfps_enroll_find_sensor_message:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    .line 77
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_udfps_enroll_find_sensor_start_button:I

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V

    .line 80
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 81
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    .line 77
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setPrimaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 86
    sget p1, Lcom/android/settings/R$id;->illustration_lottie:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/airbnb/lottie/LottieAnimationView;

    .line 87
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 88
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    sget v0, Lcom/android/settings/R$raw;->udfps_edu_a11y_lottie:I

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    goto :goto_1

    .line 93
    :cond_1
    sget p1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_find_sensor_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 94
    sget p1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_find_sensor_message:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    .line 99
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-nez p1, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 100
    const-class p1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 101
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_2

    .line 113
    :cond_3
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-eqz p1, :cond_5

    .line 115
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    :goto_2
    const/4 p1, 0x0

    .line 121
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    .line 122
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mCanAssumeUdfps:Z

    if-nez p1, :cond_4

    .line 123
    sget p1, Lcom/android/settings/R$id;->fingerprint_sensor_location_animation:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 124
    instance-of v0, p1, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_4

    .line 125
    check-cast p1, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    :cond_4
    return-void

    .line 118
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "HAT and GkPwHandle both missing..."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onDestroy()V
    .locals 0

    .line 214
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    .line 215
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz p0, :cond_0

    .line 216
    invoke-interface {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 191
    iget-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    if-eqz p2, :cond_0

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    .line 192
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    .line 193
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling(Z)V

    goto :goto_0

    .line 195
    :cond_0
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;->showErrorDialog(Lcom/android/settings/biometrics/BiometricEnrollBase;I)V

    :goto_0
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 0

    const/4 p1, 0x1

    .line 181
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    .line 182
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling(Z)V

    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    .line 225
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->stopLookingForFingerprint()V

    const/4 p1, 0x2

    .line 226
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 227
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onStart()V
    .locals 0

    .line 145
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    .line 146
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz p0, :cond_0

    .line 147
    invoke-interface {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;->startAnimation()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 201
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onStop()V

    .line 202
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;

    if-eqz p0, :cond_0

    .line 203
    invoke-interface {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintFindSensorAnimation;->pauseAnimation()V

    :cond_0
    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 1

    .line 209
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
