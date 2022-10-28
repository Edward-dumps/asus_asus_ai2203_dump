.class public abstract Lcom/android/settings/biometrics/BiometricEnrollBase;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "BiometricEnrollBase.java"


# instance fields
.field protected mChallenge:J

.field protected mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

.field protected mFromSettingsSummary:Z

.field protected mLaunchedConfirmLock:Z

.field protected mSensorId:I

.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method

.method private getBackgroundColor()I
    .locals 1

    const v0, 0x1010054

    .line 289
    invoke-static {p0, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 290
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected getFingerprintEnrollingIntent()Landroid/content/Intent;
    .locals 4

    .line 251
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 252
    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.settings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    const-string v2, "hw_auth_token"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 254
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    const-string v2, "from_settings_summary"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 255
    iget-wide v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    const-string v3, "challenge"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 256
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    const-string v2, "sensor_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 257
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p0, v1, :cond_0

    const-string v1, "android.intent.extra.USER_ID"

    .line 258
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    return-object v0
.end method

.method protected getLayout()Lcom/google/android/setupdesign/GlifLayout;
    .locals 1

    .line 200
    sget v0, Lcom/android/settings/R$id;->setup_wizard_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/google/android/setupdesign/GlifLayout;

    return-object p0
.end method

.method protected getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 241
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected initViews()V
    .locals 1

    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method protected launchConfirmLock(I)V
    .locals 3

    const-string v0, "BiometricEnrollBase"

    const-string v1, "launchConfirmLock"

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x4

    .line 267
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 268
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    const/4 v1, 0x1

    .line 269
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 270
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    .line 271
    invoke-virtual {p1, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 273
    iget p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq p1, v2, :cond_0

    .line 274
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 277
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result p1

    if-nez p1, :cond_1

    .line 281
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 283
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedConfirmLock:Z

    :goto_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .line 178
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getBackgroundColor()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 129
    invoke-static {p0}, Lcom/google/android/setupdesign/util/ThemeHelper;->trySetDynamicColor(Landroid/content/Context;)Z

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "challenge"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    .line 131
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "sensor_id"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    .line 135
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    const-string v3, "hw_auth_token"

    if-nez v0, :cond_0

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "from_settings_summary"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    if-eqz p1, :cond_1

    .line 140
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    if-nez v0, :cond_1

    const-string v0, "launched_confirm_lock"

    .line 141
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedConfirmLock:Z

    .line 142
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 145
    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    .line 146
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    .line 147
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    .line 149
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onPostCreate(Landroid/os/Bundle;)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->initViews()V

    .line 168
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getButtonContainer()Landroid/widget/LinearLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getBackgroundColor()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 154
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 155
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mLaunchedConfirmLock:Z

    const-string v1, "launched_confirm_lock"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 157
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFromSettingsSummary:Z

    const-string v1, "from_settings_summary"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 158
    iget-wide v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    const-string v2, "challenge"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 159
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    const-string v0, "sensor_id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 184
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStop()V

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 186
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected setDescriptionText(I)V
    .locals 2

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getDescriptionText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 229
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(I)V

    :cond_0
    return-void
.end method

.method protected setDescriptionText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setDescriptionText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1

    const/4 v0, 0x0

    .line 218
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(IZ)V

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected setHeaderText(IZ)V
    .locals 2

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 205
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 206
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-ne v1, p1, :cond_0

    if-eqz p2, :cond_2

    .line 208
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 209
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 211
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 212
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 213
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected setHeaderText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 223
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 0

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
