.class public Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFinish;
.super Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;
.source "AsusFingerprintEnrollFinish.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf2

    return p0
.end method

.method protected isYodaEnrolling()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onBackButtonClick()V
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    .line 127
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 128
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget p1, Lcom/android/settings/R$layout;->asus_fingerprint_enroll_finish:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setSubContentView(I)V

    .line 53
    sget p1, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_finish_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setHeaderText(I)V

    const-string p1, "fingerprint"

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 57
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "config_fingerprintMaxTemplatesPerUser"

    const-string v3, "integer"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const-string v1, "ro.hardware.fp_position"

    .line 61
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "front"

    .line 62
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    const-string v2, "front_woh"

    .line 63
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 64
    :goto_1
    sget v2, Lcom/android/settings/R$id;->message:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 65
    sget v4, Lcom/android/settings/R$id;->message_add_more_hint:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 66
    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mLayout:Landroid/view/ViewGroup;

    const/high16 v6, -0x1000000

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 67
    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mLayout:Landroid/view/ViewGroup;

    sget v6, Lcom/android/settings/R$id;->header_text:I

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const/4 v6, -0x1

    .line 68
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 69
    iget-object v5, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mLayout:Landroid/view/ViewGroup;

    sget v7, Lcom/android/settings/R$id;->fingerprint_icon:I

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 71
    sget v5, Lcom/android/settings/R$id;->fingerprint_in_app_indicator:I

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 72
    sget v7, Lcom/android/settings/R$id;->button_bar_divider:I

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_2

    const v8, 0x27ffffff

    .line 73
    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    .line 75
    :cond_2
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v1, :cond_3

    .line 78
    sget v1, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_finish_more_hint_front:I

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_3
    if-lt p1, v0, :cond_4

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->getBackButton()Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    const/16 p1, 0x8

    .line 85
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isSupportFlipCamera()Z

    move-result p1

    if-nez p1, :cond_5

    .line 90
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 91
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {p0, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->dipToPixels(Landroid/content/Context;F)F

    move-result p0

    float-to-int p0, p0

    iget v1, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    invoke-virtual {v5, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 5

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFromChooseLock:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "for_fingerprint"

    .line 100
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 102
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 103
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 105
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "unlock_device_with_fingerprint"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    move v4, v1

    .line 109
    :cond_1
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v1, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 118
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 111
    :cond_3
    :goto_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.biometrics.fingerprint.AsusFingerprintEnrollUnlock"

    .line 112
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 114
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 115
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected setButtonText(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 2

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->fingerprint_enroll_button_add:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->asus_fingerprint_enroll_done:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
