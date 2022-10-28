.class public Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;
.super Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;
.source "FacelockEnrollFindSensor.java"


# instance fields
.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mFromChooseLockGeneric:Z

.field private mLaunchedConfirmLock:Z

.field private mNextClicked:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;-><init>()V

    return-void
.end method

.method private handleLandscapeLayout()V
    .locals 2

    .line 161
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    sget v1, Lcom/android/settings/R$id;->title_view:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private initNextButton()V
    .locals 8

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v6

    const/4 v0, 0x0

    .line 168
    invoke-virtual {v6, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 169
    new-instance v7, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor$1;

    const-wide/16 v2, 0xbb8

    const-wide/16 v4, 0x3e8

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;JJLandroid/widget/Button;)V

    .line 181
    invoke-virtual {v7}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private launchConfirmLock()V
    .locals 3

    .line 82
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x1

    .line 84
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->security_settings_facelock_preference_title:I

    .line 85
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mUserId:I

    .line 87
    invoke-virtual {v0, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 97
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->mLaunchedConfirmLock:Z

    :goto_0
    return-void
.end method

.method private proceedToEnrolling()V
    .locals 2

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "hw_auth_token"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 130
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mToken:[B

    .line 131
    sget p1, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget p2, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mToken:[B

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 133
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->initNextButton()V

    goto :goto_1

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    if-nez p3, :cond_2

    .line 140
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mToken:[B

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    if-ne p2, v1, :cond_3

    .line 145
    invoke-virtual {p0, v1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 146
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    .line 148
    invoke-virtual {p0, v2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 149
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x3

    if-ne p2, p1, :cond_5

    .line 151
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 152
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 154
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->initNextButton()V

    goto :goto_1

    .line 156
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->handleLandscapeLayout()V

    .line 41
    sget v0, Lcom/android/settings/R$layout;->asus_facelock_enroll_find_sensor:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->setSubContentView(I)V

    .line 42
    sget v0, Lcom/android/settings/R$string;->asus_security_settings_facelock_enroll_find_sensor_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->setHeaderText(I)V

    if-eqz p1, :cond_0

    const-string v0, "launched_confirm_lock"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->mLaunchedConfirmLock:Z

    const-string v0, "hw_auth_token"

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mToken:[B

    .line 48
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "from_choose_lock"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->mFromChooseLockGeneric:Z

    .line 49
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mToken:[B

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->mLaunchedConfirmLock:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->launchConfirmLock()V

    goto :goto_0

    .line 53
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->initNextButton()V

    .line 56
    :goto_0
    sget p1, Lcom/android/settings/R$id;->image:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 57
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->isRogTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 58
    invoke-static {p0}, Lcom/android/settingslib/widget/ThemeUtils;->isLightStatusBar(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    sget v0, Lcom/android/settings/R$drawable;->ic_asus_facerescan_pic_411_rog_light:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 62
    :cond_2
    sget v0, Lcom/android/settings/R$drawable;->ic_asus_facerescan_pic_411_rog_dark:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 66
    :cond_3
    sget v0, Lcom/android/settings/R$drawable;->ic_asus_facerescan_pic_411:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 106
    :cond_0
    invoke-super {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->onDestroy()V

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 1

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->mNextClicked:Z

    .line 119
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->proceedToEnrolling()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 111
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 112
    iget-boolean v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollFindSensor;->mLaunchedConfirmLock:Z

    const-string v1, "launched_confirm_lock"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 113
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockEnrollBase;->mToken:[B

    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-void
.end method
