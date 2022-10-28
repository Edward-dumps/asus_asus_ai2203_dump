.class public Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;
.super Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;
.source "FacelockEnrollIntroduction.java"


# instance fields
.field private mHasPassword:Z

.field private mLaunchFindSensor:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;-><init>()V

    return-void
.end method

.method private launchChooseLock()V
    .locals 4

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hide_insecure_options"

    const/4 v2, 0x1

    .line 118
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "request_gk_pw_handle"

    .line 119
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->getExtraKeyForBiometric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 121
    iget v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    const-string v3, "android.intent.extra.USER_ID"

    .line 122
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 124
    :cond_0
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchFindSensor([B)V
    .locals 1

    const/4 v0, 0x0

    .line 140
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->launchFindSensor([BZ)V

    return-void
.end method

.method private launchFindSensor([BZ)V
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    const-string v1, "hw_auth_token"

    .line 130
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 132
    :cond_0
    iget p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_1

    const-string v1, "android.intent.extra.USER_ID"

    .line 133
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const-string p1, "from_choose_lock"

    .line 135
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 136
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updatePasswordQuality()V
    .locals 3

    .line 76
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mUserId:I

    .line 77
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->mHasPassword:Z

    return-void
.end method


# virtual methods
.method protected getExtraKeyForBiometric()Ljava/lang/String;
    .locals 0

    const-string p0, "for_facelock"

    return-object p0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 195
    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mUserId:I

    invoke-static {p1, p0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_4

    if-nez v1, :cond_1

    if-eq p2, v2, :cond_1

    if-nez p2, :cond_6

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, -0x1

    :cond_2
    if-nez v1, :cond_3

    .line 157
    iget-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->mLaunchFindSensor:Z

    if-nez p1, :cond_3

    .line 158
    invoke-virtual {p0, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 159
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 161
    :cond_3
    invoke-virtual {p0, v2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 162
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    if-ne p1, v0, :cond_6

    if-eqz v1, :cond_6

    .line 167
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->updatePasswordQuality()V

    if-eqz p3, :cond_5

    const-string p1, "hw_auth_token"

    .line 169
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    .line 171
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->launchFindSensor([BZ)V

    goto :goto_1

    :cond_5
    const/4 p1, 0x0

    .line 174
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->launchFindSensor([BZ)V

    :goto_1
    return-void

    .line 179
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 0

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 184
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->cancel_button:I

    if-ne v0, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->onCancelButtonClick()V

    .line 187
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    .line 40
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->updatePasswordQuality()V

    .line 41
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->mHasPassword:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->launchFindSensor([B)V

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->mLaunchFindSensor:Z

    goto :goto_0

    .line 46
    :cond_0
    sget p1, Lcom/android/settings/R$layout;->asus_facelock_enroll_introduction:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->setSubContentView(I)V

    .line 47
    sget p1, Lcom/android/settings/R$string;->asus_security_settings_facelock_enroll_introduction_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->setHeaderText(I)V

    .line 48
    sget p1, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->mLaunchFindSensor:Z

    :goto_0
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->mHasPassword:Z

    if-nez v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->launchChooseLock()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollIntroduction;->launchFindSensor([B)V

    :goto_0
    return-void
.end method
