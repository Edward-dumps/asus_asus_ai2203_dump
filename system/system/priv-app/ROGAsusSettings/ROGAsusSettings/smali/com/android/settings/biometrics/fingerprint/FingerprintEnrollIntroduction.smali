.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.source "FingerprintEnrollIntroduction.java"


# instance fields
.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;


# direct methods
.method public static synthetic $r8$lambda$P4ObJbXCISqFroOrvvuXcwyhaB0(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;-><init>()V

    return-void
.end method

.method protected static setSkipPendingEnroll(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    if-nez p0, :cond_0

    .line 324
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    :cond_0
    const/4 v0, 0x1

    const-string v1, "skip_pending_enroll"

    .line 326
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method protected checkMaxEnrolled()I
    .locals 3

    .line 206
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    .line 210
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 211
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    .line 212
    invoke-virtual {v2, p0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v0, :cond_0

    .line 214
    sget p0, Lcom/android/settings/R$string;->fingerprint_intro_error_max:I

    return p0

    :cond_0
    return v1

    .line 217
    :cond_1
    sget p0, Lcom/android/settings/R$string;->fingerprint_intro_error_unknown:I

    return p0
.end method

.method protected getAgreeButtonTextRes()I
    .locals 0

    .line 312
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_agree:I

    return p0
.end method

.method protected getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V
    .locals 2

    .line 224
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    .line 226
    invoke-interface {p1, p0, p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;->onChallengeGenerated(IIJ)V

    return-void

    .line 229
    :cond_0
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    return-void
.end method

.method protected getConfirmLockTitleResId()I
    .locals 0

    .line 249
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_preference_title:I

    return p0
.end method

.method protected getDescriptionResDisabledByAdmin()I
    .locals 0

    .line 180
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_message_unlock_disabled:I

    return p0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .line 239
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v1

    const-string p0, "gk_pw_handle"

    .line 241
    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method protected getErrorTextView()Landroid/widget/TextView;
    .locals 1

    .line 201
    sget v0, Lcom/android/settings/R$id;->error_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getExtraKeyForBiometric()Ljava/lang/String;
    .locals 0

    const-string p0, "for_fingerprint"

    return-object p0
.end method

.method protected getFooterMessage2()I
    .locals 0

    .line 139
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_v2_enroll_introduction_footer_message_2:I

    return p0
.end method

.method protected getFooterMessage3()I
    .locals 0

    .line 144
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_v2_enroll_introduction_footer_message_3:I

    return p0
.end method

.method protected getFooterMessage4()I
    .locals 0

    .line 149
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_v2_enroll_introduction_footer_message_4:I

    return p0
.end method

.method protected getFooterMessage5()I
    .locals 0

    .line 154
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_v2_enroll_introduction_footer_message_5:I

    return p0
.end method

.method protected getFooterTitle1()I
    .locals 0

    .line 129
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_footer_title_1:I

    return p0
.end method

.method protected getFooterTitle2()I
    .locals 0

    .line 134
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_footer_title_2:I

    return p0
.end method

.method protected getHeaderResDefault()I
    .locals 0

    .line 175
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_title:I

    return p0
.end method

.method protected getHeaderResDisabledByAdmin()I
    .locals 0

    .line 170
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_title_unlock_disabled:I

    return p0
.end method

.method protected getLayoutResource()I
    .locals 0

    .line 165
    sget p0, Lcom/android/settings/R$layout;->fingerprint_enroll_introduction:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf3

    return p0
.end method

.method public getModality()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getMoreButtonTextRes()I
    .locals 0

    .line 318
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_more:I

    return p0
.end method

.method getNegativeButtonTextId()I
    .locals 0

    .line 124
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_no_thanks:I

    return p0
.end method

.method protected getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_agree:I

    .line 286
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;)V

    .line 287
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 288
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 289
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 292
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method protected getSecondaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getNegativeButtonTextId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;)V

    .line 301
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 302
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 303
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 306
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method protected isDisabledByAdmin()Z
    .locals 2

    .line 159
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, 0x20

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eq p2, v1, :cond_2

    const/16 v1, 0xb

    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 104
    invoke-static {p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->setSkipPendingEnroll(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    .line 106
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCancelButtonClick(Landroid/view/View;)V
    .locals 1

    .line 112
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->setSkipPendingEnroll(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x2

    .line 113
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V
    .locals 2

    .line 259
    invoke-virtual {p1}, Lcom/google/android/setupdesign/span/LinkSpan;->getId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 260
    sget p1, Lcom/android/settings/R$string;->help_url_fingerprint:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "FingerprintIntro"

    if-nez p1, :cond_0

    const-string p0, "Null help intent."

    .line 263
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 269
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity was not found for intent, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 61
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const-string p1, "FingerprintIntro"

    const-string v0, "Null FingerprintManager"

    .line 63
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 68
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 70
    sget p1, Lcom/android/settings/R$id;->icon_fingerprint:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 71
    sget v0, Lcom/android/settings/R$id;->icon_device_locked:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 72
    sget v1, Lcom/android/settings/R$id;->icon_trash_can:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 73
    sget v2, Lcom/android/settings/R$id;->icon_info:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 74
    sget v3, Lcom/android/settings/R$id;->icon_link:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 75
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 76
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 77
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 78
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 79
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 81
    sget p1, Lcom/android/settings/R$id;->footer_message_2:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 82
    sget v0, Lcom/android/settings/R$id;->footer_message_3:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 83
    sget v1, Lcom/android/settings/R$id;->footer_message_4:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 84
    sget v2, Lcom/android/settings/R$id;->footer_message_5:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getFooterMessage2()I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(I)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getFooterMessage3()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getFooterMessage4()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getFooterMessage5()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 90
    sget p1, Lcom/android/settings/R$id;->footer_title_1:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 91
    sget v0, Lcom/android/settings/R$id;->footer_title_2:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getFooterTitle1()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->getFooterTitle2()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->onCancelButtonClick(Landroid/view/View;)V

    return-void
.end method
