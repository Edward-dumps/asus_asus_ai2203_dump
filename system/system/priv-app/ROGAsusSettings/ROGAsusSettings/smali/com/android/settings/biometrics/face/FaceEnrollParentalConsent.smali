.class public Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;
.super Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.source "FaceEnrollParentalConsent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;-><init>()V

    return-void
.end method

.method private onConsentResult(Z)V
    .locals 3

    .line 64
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "sensor_modality"

    const/16 v2, 0x8

    .line 65
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 66
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected generateChallengeOnCreate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected getHeaderResDefault()I
    .locals 0

    .line 119
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_consent_introduction_title:I

    return p0
.end method

.method protected getHowMessage()I
    .locals 0

    .line 102
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_how_consent_message:I

    return p0
.end method

.method protected getInControlMessage()I
    .locals 0

    .line 114
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_control_consent_message:I

    return p0
.end method

.method protected getInControlTitle()I
    .locals 0

    .line 108
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_control_consent_title:I

    return p0
.end method

.method protected getInfoMessageGlasses()I
    .locals 0

    .line 84
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_info_consent_glasses:I

    return p0
.end method

.method protected getInfoMessageLooking()I
    .locals 0

    .line 90
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_info_consent_looking:I

    return p0
.end method

.method protected getInfoMessageRequireEyes()I
    .locals 0

    .line 96
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_info_consent_gaze:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x765

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 40
    sget p1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_consent_message:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    return-void
.end method

.method protected onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x0

    .line 55
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 0

    const/4 p1, 0x1

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method

.method protected onNextButtonClick(Landroid/view/View;)V
    .locals 0

    const/4 p1, 0x1

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

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

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;->onConsentResult(Z)V

    return-void
.end method
