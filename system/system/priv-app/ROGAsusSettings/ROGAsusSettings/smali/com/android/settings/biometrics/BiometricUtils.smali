.class public Lcom/android/settings/biometrics/BiometricUtils;
.super Ljava/lang/Object;
.source "BiometricUtils.java"


# direct methods
.method public static containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "gk_pw_handle"

    .line 84
    invoke-virtual {p0, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static copyMultiBiometricExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "enroll_after_face"

    const/4 v1, 0x0

    .line 233
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    .line 236
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public static getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 123
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x20000

    const-string v1, "lockscreen.password_type"

    .line 127
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p0, 0x1

    const-string v1, "show_options_button"

    .line 130
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 133
    :cond_0
    invoke-static {p1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0

    .line 136
    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p1
.end method

.method public static getFaceIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    invoke-static {p1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public static getFingerprintFindSensorIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 147
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 148
    invoke-static {p1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public static getFingerprintIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 159
    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 161
    invoke-static {p1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0

    .line 164
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object p1
.end method

.method public static getGatekeeperPasswordHandle(Landroid/content/Intent;)J
    .locals 3

    const-string v0, "gk_pw_handle"

    const-wide/16 v1, 0x0

    .line 88
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getHandoffToParentIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    .line 188
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/BiometricHandoffActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 189
    invoke-static {p1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public static isReverseLandscape(Landroid/content/Context;)Z
    .locals 1

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Display;->getRotation()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static launchEnrollForResult(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;I[BLjava/lang/Long;I)V
    .locals 1

    if-eqz p3, :cond_0

    const-string v0, "hw_auth_token"

    .line 204
    invoke-virtual {p1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_0
    if-eqz p4, :cond_1

    .line 208
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    const-string v0, "gk_pw_handle"

    invoke-virtual {p1, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 211
    :cond_1
    instance-of p3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz p3, :cond_2

    const-string p3, "android.intent.extra.USER_ID"

    .line 212
    invoke-virtual {p1, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    if-eqz p2, :cond_3

    .line 216
    invoke-virtual {p0, p1, p2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 218
    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 219
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public static removeGatekeeperPasswordHandle(Landroid/content/Context;J)V
    .locals 1

    .line 111
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 112
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->removeGatekeeperPasswordHandle(J)V

    const-string p0, "BiometricUtils"

    const-string p1, "Removed handle"

    .line 113
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 107
    :cond_1
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    return-void
.end method

.method public static requestGatekeeperHat(Landroid/content/Context;JIJ)[B
    .locals 6

    .line 74
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-wide v1, p1

    move-wide v3, p4

    move v5, p3

    .line 75
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    .line 77
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p0

    return-object p0

    .line 78
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unable to request Gatekeeper HAT"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B
    .locals 9

    .line 64
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    const-string v2, "gk_pw_handle"

    .line 67
    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    move-object v3, p0

    move v6, p2

    move-wide v7, p3

    .line 69
    invoke-static/range {v3 .. v8}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p0

    return-object p0

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Gatekeeper Password is missing!!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static tryStartingNextBiometricEnroll(Landroid/app/Activity;I)Z
    .locals 10

    const-string v0, "BiometricUtils"

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "enroll_after_face"

    .line 250
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 253
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting pendingIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move v5, p1

    .line 255
    invoke-virtual/range {v3 .. v9}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 260
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending intent canceled: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
