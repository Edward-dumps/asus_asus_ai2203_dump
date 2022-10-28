.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;
.super Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;
.source "FingerprintEnrollParentalConsent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    return-void
.end method

.method private onConsentResult(Z)V
    .locals 3

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sensor_modality"

    const/4 v2, 0x2

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 67
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 68
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected getFooterMessage2()I
    .locals 0

    .line 86
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_v2_enroll_introduction_footer_message_consent_2:I

    return p0
.end method

.method protected getFooterMessage3()I
    .locals 0

    .line 92
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_v2_enroll_introduction_footer_message_consent_3:I

    return p0
.end method

.method protected getFooterMessage4()I
    .locals 0

    .line 97
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_v2_enroll_introduction_footer_message_consent_4:I

    return p0
.end method

.method protected getFooterMessage5()I
    .locals 0

    .line 102
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_v2_enroll_introduction_footer_message_consent_5:I

    return p0
.end method

.method protected getFooterTitle1()I
    .locals 0

    .line 80
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_footer_title_consent_1:I

    return p0
.end method

.method protected getHeaderResDefault()I
    .locals 0

    .line 107
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_consent_introduction_title:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x764

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget p1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_consent_message:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    return-void
.end method

.method protected onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onSetOrConfirmCredentials(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method
