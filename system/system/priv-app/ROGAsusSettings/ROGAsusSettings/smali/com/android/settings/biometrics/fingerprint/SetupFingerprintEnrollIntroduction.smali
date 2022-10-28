.class public Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFingerprintEnrollIntroduction.java"


# instance fields
.field private mAlreadyHadLockScreenSetup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    return-void
.end method

.method private getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    if-nez p1, :cond_0

    .line 92
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 94
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const-string v0, ":settings:password_quality"

    .line 95
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .line 148
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    return p0
.end method

.method private setFingerprintCount(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1

    if-nez p1, :cond_0

    .line 104
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 106
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v0, p0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const-string v0, "fingerprint_enrolled_count"

    .line 109
    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    return-object p1
.end method


# virtual methods
.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 4

    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v1

    const-string v3, "gk_pw_handle"

    .line 66
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 69
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf9

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 75
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 78
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v0, :cond_0

    .line 79
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 84
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->setFingerprintCount(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    .line 87
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 141
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 142
    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 144
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCancelButtonClick(Landroid/view/View;)V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    .line 122
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 p1, 0xb

    .line 129
    :goto_0
    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->setSkipPendingEnroll(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 131
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "wasLockScreenPresent"

    .line 51
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 59
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const-string/jumbo v0, "wasLockScreenPresent"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
