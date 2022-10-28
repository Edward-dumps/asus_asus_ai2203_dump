.class public abstract Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "AsusFingerprintEnrollBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field protected mChallenge:J

.field protected mFontScale:F

.field protected mFromChooseLock:Z

.field protected mLayout:Landroid/view/ViewGroup;

.field protected mSensorId:I

.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFromChooseLock:Z

    return-void
.end method

.method public static dipToPixels(Landroid/content/Context;F)F
    .locals 1

    .line 307
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    .line 308
    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method


# virtual methods
.method protected getBackButton()Landroid/widget/Button;
    .locals 1

    .line 261
    sget v0, Lcom/android/settings/R$id;->cancel_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .line 284
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 285
    const-class v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 287
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFromChooseLock:Z

    const-string v2, "FROM_CHOOSE_LOCK"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 288
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p0, v1, :cond_0

    const-string v1, "android.intent.extra.USER_ID"

    .line 289
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 257
    sget v0, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/Button;

    return-object p0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 0

    .line 318
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    invoke-static {p1, p0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected initButtonListener()V
    .locals 3

    .line 164
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 166
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->getBackButton()Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 170
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->isYodaEnrolling()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    :cond_1
    const v2, 0x4cffffff    # 1.3421772E8f

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 173
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setButtonText(Landroid/widget/Button;Landroid/widget/Button;)V

    return-void
.end method

.method protected initViews()V
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, -0x7ffeff00

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->isYodaEnrolling()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit8 v1, v1, -0x11

    and-int/lit16 v1, v1, -0x2001

    .line 149
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 150
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 151
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 155
    :cond_0
    sget v0, Lcom/android/settings/R$id;->fingerprint_icon:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getThemeColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/widget/ThemeUtils;->tintImageView(Landroid/widget/ImageView;I)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->getBgColorCode(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 157
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->setNavigationBar(Landroid/app/Activity;)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mLayout:Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/android/settingslib/widget/ThemeUtils;->setBackgroundColor(Landroid/content/Context;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected isYodaEnrolling()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onBackButtonClick()V
    .locals 0

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->getBackButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onBackButtonClick()V

    goto :goto_0

    .line 272
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onNextButtonClick()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    .line 84
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 86
    invoke-static {p0}, Lcom/asus/commonresx/AsusResxUtils;->getAsusResxThemeStyle(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTheme(I)V

    .line 87
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->applyIfAvailable(Landroid/app/Activity;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/android/settings/R$style;->Style_Asus_AlertDialog_ThemeOverlay:I

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 91
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 92
    sget v1, Lcom/android/settings/R$layout;->templet_asus_suw_layout_header_collapsed:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mLayout:Landroid/view/ViewGroup;

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v1, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mChallenge:J

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "sensor_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mSensorId:I

    .line 96
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    .line 98
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "FROM_CHOOSE_LOCK"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFromChooseLock:Z

    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    if-nez v0, :cond_0

    .line 100
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    .line 105
    instance-of p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFindSensor;

    if-nez p1, :cond_1

    instance-of p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollIntroduction;

    if-nez p1, :cond_1

    .line 106
    invoke-static {p0}, Lcom/android/settings/Utils;->setDefaultDensity(Landroid/app/Activity;)V

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 112
    invoke-virtual {p0}, Landroid/app/ActionBar;->hide()V

    :cond_2
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 313
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 0

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 125
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mLayout:Landroid/view/ViewGroup;

    if-nez p1, :cond_0

    .line 127
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->initViews()V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->initButtonListener()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 296
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 299
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    .line 300
    invoke-virtual {p0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v0

    or-int/lit8 v0, v0, 0x4

    .line 302
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 117
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 119
    iget-wide v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mChallenge:J

    const-string v2, "challenge"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 120
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mSensorId:I

    const-string v0, "sensor_id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected setButtonText(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    return-void
.end method

.method protected setHeaderText(I)V
    .locals 8

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 219
    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFontScale:F

    .line 220
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 221
    sget v0, Lcom/android/settings/R$id;->header_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    :cond_0
    sget p1, Lcom/android/settings/R$id;->blank_text1:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 224
    sget v0, Lcom/android/settings/R$id;->blank_text2:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 225
    sget v1, Lcom/android/settings/R$id;->blank_text3:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "1.15"

    const-string v3, "1.3"

    const-string v4, " "

    if-eqz p1, :cond_3

    .line 227
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 230
    invoke-static {}, Lcom/android/settings/Utils;->isSupportFlipCamera()Z

    move-result v6

    if-nez v6, :cond_1

    iget v6, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFontScale:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$dimen;->asus_password_header_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x4

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 231
    :cond_1
    invoke-static {}, Lcom/android/settings/Utils;->isSupportFlipCamera()Z

    move-result v6

    if-nez v6, :cond_2

    iget v6, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFontScale:F

    invoke-static {v6}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$dimen;->asus_password_header_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    div-int/lit8 v6, v6, 0x3

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$dimen;->asus_password_header_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 233
    :goto_0
    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    if-eqz v0, :cond_6

    .line 236
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 238
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 239
    iget v5, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFontScale:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->asus_password_header_padding_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x4

    iput v5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 240
    :cond_4
    iget v5, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFontScale:F

    invoke-static {v5}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->asus_password_header_padding_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    div-int/lit8 v5, v5, 0x3

    iput v5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 241
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$dimen;->asus_password_header_padding_bottom:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 242
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    if-eqz v1, :cond_9

    .line 245
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 248
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFontScale:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->asus_password_header_padding_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 249
    :cond_7
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFontScale:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->asus_password_header_padding_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2

    .line 250
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$dimen;->asus_password_header_padding_bottom:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 251
    :goto_2
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 253
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mFontScale = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFontScale:F

    invoke-static {p0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AsusFingerprintEnrollBase"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setSubContentView(I)V
    .locals 2

    .line 208
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    .line 209
    invoke-virtual {v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 210
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mLayout:Landroid/view/ViewGroup;

    sget v0, Lcom/android/settings/R$id;->my_content:I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    .line 211
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 214
    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setSubContentView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 204
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setSubContentView(Landroid/view/View;Z)V

    return-void
.end method

.method public setSubContentView(Landroid/view/View;Z)V
    .locals 3

    .line 177
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/settings/R$id;->my_content:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 180
    :try_start_0
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 183
    invoke-virtual {v0, p1, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_1

    .line 186
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 187
    instance-of p2, p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/high16 v2, 0x41c00000    # 24.0f

    if-eqz p2, :cond_0

    .line 188
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 189
    invoke-static {p0, v2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->dipToPixels(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p0, v2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->dipToPixels(Landroid/content/Context;F)F

    move-result p0

    float-to-int p0, p0

    iget v2, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2, v1, p0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 190
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 191
    :cond_0
    instance-of p2, p1, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz p2, :cond_1

    .line 192
    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 193
    invoke-static {p0, v2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->dipToPixels(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    invoke-static {p0, v2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->dipToPixels(Landroid/content/Context;F)F

    move-result p0

    float-to-int p0, p0

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, p2, v1, p0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 194
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method
