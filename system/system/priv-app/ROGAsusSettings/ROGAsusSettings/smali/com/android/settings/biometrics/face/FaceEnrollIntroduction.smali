.class public Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.source "FaceEnrollIntroduction.java"


# instance fields
.field private mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

.field private mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;


# direct methods
.method public static synthetic $r8$lambda$Fg2g0g3c2QrcxhX68ODGm4nW38Y(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;IIJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->lambda$onCreate$0(IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$ySFdwp-uD9RfaAzlltOvoaGk6rw(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onNextButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreate$0(IIJ)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, p2, v0, p3, p4}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 135
    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    .line 136
    iput-wide p3, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    .line 137
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method private maxFacesEnrolled()Z
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 229
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v0, v0, Landroid/hardware/face/FaceSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 230
    iget-object v2, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-virtual {v2, p0}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method protected checkMaxEnrolled()I
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->maxFacesEnrolled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 242
    sget p0, Lcom/android/settings/R$string;->face_intro_error_max:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 245
    :cond_1
    sget p0, Lcom/android/settings/R$string;->face_intro_error_unknown:I

    return p0
.end method

.method protected generateChallengeOnCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected getAgreeButtonTextRes()I
    .locals 0

    .line 323
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_agree:I

    return p0
.end method

.method protected getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V
    .locals 2

    .line 252
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    .line 254
    invoke-interface {p1, p0, p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;->onChallengeGenerated(IIJ)V

    return-void

    .line 257
    :cond_0
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    return-void
.end method

.method protected getConfirmLockTitleResId()I
    .locals 0

    .line 274
    sget p0, Lcom/android/settings/R$string;->security_settings_face_preference_title:I

    return p0
.end method

.method protected getDescriptionResDisabledByAdmin()I
    .locals 0

    .line 200
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_message_unlock_disabled:I

    return p0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 2

    .line 267
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/face/FaceEnrollEducation;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method protected getErrorTextView()Landroid/widget/TextView;
    .locals 1

    .line 221
    sget v0, Lcom/android/settings/R$id;->error_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method protected getExtraKeyForBiometric()Ljava/lang/String;
    .locals 0

    const-string p0, "for_face"

    return-object p0
.end method

.method protected getHeaderResDefault()I
    .locals 0

    .line 195
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_title:I

    return p0
.end method

.method protected getHeaderResDisabledByAdmin()I
    .locals 0

    .line 190
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_title_unlock_disabled:I

    return p0
.end method

.method protected getHowMessage()I
    .locals 0

    .line 164
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_how_message:I

    return p0
.end method

.method protected getInControlMessage()I
    .locals 0

    .line 174
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_control_message:I

    return p0
.end method

.method protected getInControlTitle()I
    .locals 0

    .line 169
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_control_title:I

    return p0
.end method

.method protected getInfoMessageGlasses()I
    .locals 0

    .line 149
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_info_glasses:I

    return p0
.end method

.method protected getInfoMessageLooking()I
    .locals 0

    .line 154
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_info_looking:I

    return p0
.end method

.method protected getInfoMessageRequireEyes()I
    .locals 0

    .line 159
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_info_gaze:I

    return p0
.end method

.method protected getLayoutResource()I
    .locals 0

    .line 185
    sget p0, Lcom/android/settings/R$layout;->face_enroll_introduction:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x5e2

    return p0
.end method

.method public getModality()I
    .locals 0

    const/16 p0, 0x8

    return p0
.end method

.method protected getMoreButtonTextRes()I
    .locals 0

    .line 329
    sget p0, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_more:I

    return p0
.end method

.method protected getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getPrimaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 2

    .line 295
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-nez v0, :cond_0

    .line 296
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_agree:I

    .line 297
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x6

    .line 298
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda3;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    .line 299
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 300
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 303
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mPrimaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method protected getSecondaryFooterButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v0, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->security_settings_face_enroll_introduction_no_thanks:I

    .line 311
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    .line 312
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    const/4 v1, 0x5

    .line 313
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$style;->SudGlifButton_Primary:I

    .line 314
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    .line 317
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mSecondaryFooterButton:Lcom/google/android/setupcompat/template/FooterButton;

    return-object p0
.end method

.method protected isDisabledByAdmin()Z
    .locals 2

    .line 179
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, 0x80

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

.method public onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 91
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 94
    sget p1, Lcom/android/settings/R$id;->icon_glasses:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 95
    sget v0, Lcom/android/settings/R$id;->icon_looking:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 96
    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 97
    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 100
    sget p1, Lcom/android/settings/R$id;->info_message_glasses:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 101
    sget v0, Lcom/android/settings/R$id;->info_message_looking:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 102
    sget v1, Lcom/android/settings/R$id;->how_message:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 103
    sget v2, Lcom/android/settings/R$id;->title_in_control:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 104
    sget v3, Lcom/android/settings/R$id;->message_in_control:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInfoMessageGlasses()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInfoMessageLooking()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInControlTitle()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getHowMessage()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInControlMessage()I

    move-result p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$bool;->config_face_intro_show_require_eyes:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 113
    sget p1, Lcom/android/settings/R$id;->info_row_require_eyes:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 114
    sget v1, Lcom/android/settings/R$id;->icon_require_eyes:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 115
    sget v2, Lcom/android/settings/R$id;->info_message_require_eyes:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 116
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getIconColorFilter()Landroid/graphics/PorterDuffColorFilter;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->getInfoMessageRequireEyes()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    :cond_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 123
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceFeatureProvider:Lcom/android/settings/biometrics/face/FaceFeatureProvider;

    .line 127
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->generateChallengeOnCreate()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 129
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 132
    iget-object p1, p0, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    new-instance v1, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/face/FaceEnrollIntroduction$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/face/FaceEnrollIntroduction;)V

    invoke-virtual {p1, v0, v1}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    :cond_1
    return-void
.end method

.method protected onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x6

    .line 77
    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onEnrollmentSkipped(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x6

    .line 84
    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onFinishedEnrolling(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onSkipButtonClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x6

    .line 70
    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onSkipButtonClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
