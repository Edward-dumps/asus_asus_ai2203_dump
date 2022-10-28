.class public Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;
.super Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;
.source "AsusFingerprintEnrollIntroduction.java"


# instance fields
.field private mHasPassword:Z

.field private mMessage:Landroid/widget/TextView;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;-><init>()V

    return-void
.end method

.method private launchChooseLock()V
    .locals 4

    .line 117
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hide_insecure_options"

    const/4 v2, 0x1

    .line 120
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "request_gk_pw_handle"

    .line 121
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->getExtraKeyForBiometric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    const-string v3, "android.intent.extra.USER_ID"

    .line 124
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 126
    :cond_0
    invoke-virtual {p0, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchFindSensor(Landroid/content/Intent;)V
    .locals 5

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 132
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFromChooseLock:Z

    const-string v2, "FROM_CHOOSE_LOCK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v1

    const-string v2, "gk_pw_handle"

    if-eqz v1, :cond_0

    .line 138
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v3

    .line 137
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 140
    :cond_0
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_1

    const-string v1, "android.intent.extra.USER_ID"

    .line 141
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 143
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v3

    .line 144
    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 147
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/biometrics/BiometricUtils;->copyMultiBiometricExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 148
    iget-wide v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mChallenge:J

    const-string p1, "challenge"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 149
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mSensorId:I

    const-string v1, "sensor_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 150
    invoke-virtual {p0, v0, p1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private updatePasswordQuality()V
    .locals 3

    .line 87
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    .line 88
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 89
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->mHasPassword:Z

    return-void
.end method


# virtual methods
.method protected getExtraKeyForBiometric()Ljava/lang/String;
    .locals 0

    const-string p0, "for_fingerprint"

    return-object p0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf3

    return p0
.end method

.method protected launchConfirmLock(I)V
    .locals 2

    .line 154
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x4

    .line 155
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 157
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 158
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 159
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 161
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_0

    .line 162
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 165
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    if-nez p1, :cond_1

    .line 169
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x2

    if-ne p1, v3, :cond_5

    if-nez v2, :cond_2

    if-eq p2, v3, :cond_2

    if-nez p2, :cond_1

    goto :goto_1

    .line 200
    :cond_1
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 201
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "config_fingerprintMaxTemplatesPerUser"

    const-string v4, "integer"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 202
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-lt v0, v1, :cond_7

    .line 205
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    const/4 v3, -0x1

    :cond_3
    if-nez v2, :cond_4

    .line 187
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFromChooseLock:Z

    if-eqz p1, :cond_4

    .line 188
    invoke-virtual {p0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 194
    :cond_4
    invoke-virtual {p0, v3, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 195
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_5
    const/4 v3, 0x4

    if-eq p1, v1, :cond_6

    if-ne p1, v3, :cond_7

    :cond_6
    if-nez v2, :cond_8

    if-ne p1, v3, :cond_7

    goto :goto_3

    .line 225
    :cond_7
    :goto_2
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void

    :cond_8
    :goto_3
    if-ne p1, v1, :cond_9

    move v0, v1

    .line 210
    :cond_9
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFromChooseLock:Z

    .line 211
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 212
    sget p1, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget p2, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 221
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->launchFindSensor(Landroid/content/Intent;)V

    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 0

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 230
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->cancel_button:I

    if-ne v0, v1, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->onCancelButtonClick()V

    .line 233
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 62
    sget p1, Lcom/android/settings/R$layout;->asus_fingerprint_enroll_introduction:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setSubContentView(I)V

    .line 63
    sget p1, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_introduction_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setHeaderText(I)V

    .line 64
    sget p1, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget p1, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->mMessage:Landroid/widget/TextView;

    .line 69
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->updatePasswordQuality()V

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->mHasPassword:Z

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->launchChooseLock()V

    goto :goto_0

    .line 112
    :cond_0
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_preference_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;->launchConfirmLock(I)V

    :goto_0
    return-void
.end method

.method protected setButtonText(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 2

    .line 247
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_continue:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
