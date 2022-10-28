.class public Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollUnlock;
.super Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;
.source "AsusFingerprintEnrollUnlock.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf3

    return p0
.end method

.method protected onCancelButtonClick()V
    .locals 1

    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollUnlock;->setPreferenceUnlock(Z)V

    .line 84
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/android/settings/R$id;->cancel_button:I

    if-ne v0, v1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollUnlock;->onCancelButtonClick()V

    .line 74
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget p1, Lcom/android/settings/R$layout;->asus_fingerprint_enroll_unlock:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setSubContentView(I)V

    .line 48
    sget p1, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_unlock_header:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setHeaderText(I)V

    .line 49
    sget p1, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    sget p1, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 52
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getTextColorCode(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 1

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollUnlock;->setPreferenceUnlock(Z)V

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected setButtonText(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 2

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_unlock_next:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setPreferenceUnlock(Z)V
    .locals 2

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "unlock_device_with_fingerprint"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 66
    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusUnlockSettingsYoda;->updateWakeUpSystemProperty(Landroid/content/Context;)V

    return-void
.end method
