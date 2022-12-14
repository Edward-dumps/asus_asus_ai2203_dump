.class public Lcom/android/settings/biometrics/BiometricEnrollActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "BiometricEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;
    }
.end annotation


# instance fields
.field private mConfirmingCredentials:Z

.field private mGkPwHandle:Ljava/lang/Long;

.field private mHasFeatureFace:Z

.field private mHasFeatureFingerprint:Z

.field private mIsEnrollActionLogged:Z

.field private mIsFaceEnrollable:Z

.field private mIsFingerprintEnrollable:Z

.field private mMultiBiometricEnrollHelper:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

.field private mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

.field private mParentalOptions:Landroid/os/Bundle;

.field private mParentalOptionsRequired:Z

.field private mSkipReturnToParent:Z

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    .line 102
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    const/4 v0, 0x0

    .line 105
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    .line 106
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    .line 108
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    return-void
.end method

.method private finishOrLaunchHandToParent(I)V
    .locals 1

    .line 418
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v0, :cond_1

    .line 419
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    if-nez p1, :cond_0

    .line 420
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchHandoffToParent()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 422
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 423
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 426
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 427
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private handleOnActivityResultWhileConsenting(IILandroid/content/Intent;)V
    .locals 4

    .line 336
    sget v0, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget v1, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "BiometricEnrollActivity"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_0

    .line 371
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown consenting requestCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", finishing"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Unknown or cancelled parental consent"

    .line 365
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 367
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 356
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    invoke-virtual {p1, p0, v2, p2, p3}, Lcom/android/settings/biometrics/ParentalConsentHelper;->launchNext(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Enrollment consent options set, starting enrollment"

    .line 359
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    invoke-virtual {p1}, Lcom/android/settings/biometrics/ParentalConsentHelper;->getConsentResult()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 361
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    .line 362
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->startEnroll()V

    goto :goto_1

    .line 341
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    .line 342
    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->isSuccessfulConfirmOrChooseCredential(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 343
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->updateGatekeeperPasswordHandle(Landroid/content/Intent;)V

    .line 344
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    invoke-virtual {p1, p0, v2}, Lcom/android/settings/biometrics/ParentalConsentHelper;->launchNext(Landroid/app/Activity;I)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Nothing to prompt for consent (no modalities enabled)!"

    .line 345
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 349
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown result for set/choose lock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 351
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_1
    return-void
.end method

.method private handleOnActivityResultWhileEnrolling(IILandroid/content/Intent;)V
    .locals 3

    const-string v0, "BiometricEnrollActivity"

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 380
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Enrollment complete, requesting handoff, result: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 381
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 382
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mMultiBiometricEnrollHelper:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

    if-nez v1, :cond_4

    .line 384
    sget v1, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget v2, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_1

    .line 407
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown enrolling requestCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", finishing"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 404
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finishOrLaunchHandToParent(I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 389
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    .line 391
    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->isSuccessfulConfirmOrChooseCredential(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 394
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    if-eqz p1, :cond_3

    .line 395
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->updateGatekeeperPasswordHandle(Landroid/content/Intent;)V

    .line 396
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFaceAndFingerprintEnroll()V

    goto :goto_0

    .line 398
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown result for set/choose lock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 400
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 411
    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestCode: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 413
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finishOrLaunchHandToParent(I)V

    :goto_0
    return-void
.end method

.method private static isSuccessfulConfirmOrChooseCredential(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-nez v2, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method private launchChooseLock()V
    .locals 4

    const-string v0, "BiometricEnrollActivity"

    const-string v1, "launchChooseLock"

    .line 480
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hide_insecure_options"

    const/4 v2, 0x1

    .line 483
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "request_gk_pw_handle"

    .line 484
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "for_biometrics"

    .line 485
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 487
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    const-string v3, "android.intent.extra.USER_ID"

    .line 488
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 490
    :cond_0
    invoke-virtual {p0, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 3

    const-string v0, "BiometricEnrollActivity"

    const-string v1, "launchConfirmLock"

    .line 494
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x2

    .line 497
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 498
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 499
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 500
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 501
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 502
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 504
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_1

    .line 508
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private launchCredentialOnlyEnroll()V
    .locals 3

    .line 526
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "hide_insecure_options"

    const/4 v2, 0x1

    .line 527
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 528
    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchSingleSensorEnrollActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchFaceAndFingerprintEnroll()V
    .locals 8

    .line 549
    new-instance v7, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    iget-boolean v4, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    .line 550
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;-><init>(Landroidx/fragment/app/FragmentActivity;IZZJ)V

    iput-object v7, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mMultiBiometricEnrollHelper:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

    .line 551
    invoke-virtual {v7}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->startNextStep()V

    return-void
.end method

.method private launchFaceOnlyEnroll()V
    .locals 2

    .line 544
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFaceIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x5

    .line 545
    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchSingleSensorEnrollActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchFingerprintOnlyEnroll()V
    .locals 3

    .line 534
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "skip_intro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v0, :cond_0

    .line 536
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintFindSensorIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 538
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    const/4 v1, 0x5

    .line 540
    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchSingleSensorEnrollActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchHandoffToParent()V
    .locals 2

    .line 555
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getHandoffToParentIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    .line 556
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchSingleSensorEnrollActivity(Landroid/content/Intent;I)V
    .locals 7

    .line 515
    instance-of v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v0, :cond_0

    .line 516
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 519
    iget-object v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    iget v6, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/settings/biometrics/BiometricUtils;->launchEnrollForResult(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;I[BLjava/lang/Long;I)V

    return-void
.end method

.method private newResultIntent()Landroid/content/Intent;
    .locals 3

    .line 432
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 433
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->deepCopy()Landroid/os/Bundle;

    move-result-object p0

    const-string v1, "consent_status"

    .line 434
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result consent status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BiometricEnrollActivity"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private setOrConfirmCredentialsNow()V
    .locals 1

    .line 455
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 456
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    .line 457
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->userHasPassword(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchChooseLock()V

    goto :goto_0

    .line 460
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchConfirmLock()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startEnroll()V
    .locals 3

    .line 251
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Authenticators: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BiometricEnrollActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->startEnrollWith(IZ)V

    return-void
.end method

.method private startEnrollWith(IZ)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    const-string v0, "BiometricEnrollActivity"

    if-nez p2, :cond_0

    .line 261
    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricManager;

    .line 262
    invoke-virtual {v1, p1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected result (has enrollments): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 270
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    .line 271
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    .line 272
    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v3, :cond_4

    .line 273
    iget-object v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 277
    invoke-static {v3}, Lcom/android/settings/biometrics/ParentalConsentHelper;->hasFaceConsent(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v5

    :goto_0
    if-eqz v2, :cond_2

    .line 278
    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    .line 279
    invoke-static {v2}, Lcom/android/settings/biometrics/ParentalConsentHelper;->hasFingerprintConsent(Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_1

    .line 274
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "consent options required, but not set"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_1
    if-nez p2, :cond_5

    const v3, 0x8000

    if-ne p1, v3, :cond_5

    .line 284
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchCredentialOnlyEnroll()V

    .line 285
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_5
    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    .line 287
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    if-eqz p1, :cond_6

    .line 288
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFaceAndFingerprintEnroll()V

    goto :goto_3

    .line 290
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->setOrConfirmCredentialsNow()V

    goto :goto_3

    :cond_7
    if-eqz v2, :cond_8

    .line 293
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFingerprintOnlyEnroll()V

    goto :goto_3

    :cond_8
    if-eqz v1, :cond_9

    .line 295
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFaceOnlyEnroll()V

    goto :goto_3

    .line 297
    :cond_9
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz p1, :cond_a

    const-string p1, "No consent for any modality: skipping enrollment"

    .line 298
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    .line 299
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_2

    .line 301
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state, finishing (was SUW: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    return-void
.end method

.method private updateGatekeeperPasswordHandle(Landroid/content/Intent;)V
    .locals 2

    .line 466
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    .line 467
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    if-eqz p0, :cond_0

    .line 468
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/ParentalConsentHelper;->updateGatekeeperHandle(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private userHasPassword(I)Z
    .locals 2

    .line 473
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 474
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 475
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x632

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 322
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 326
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    if-eqz v0, :cond_0

    .line 327
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->handleOnActivityResultWhileConsenting(IILandroid/content/Intent;)V

    goto :goto_0

    .line 329
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->handleOnActivityResultWhileEnrolling(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    .line 449
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p2

    .line 450
    sget v0, Lcom/android/settings/R$style;->SetupWizardPartnerResource:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 451
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 118
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 122
    instance-of v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v1, :cond_0

    .line 123
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "confirming_credentials"

    .line 130
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    const-string v2, "enroll_action_logged"

    .line 132
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsEnrollActionLogged:Z

    const-string v2, "enroll_preferences"

    .line 134
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    const-string v2, "gk_pw_handle"

    .line 135
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    .line 141
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsEnrollActionLogged:Z

    const/4 v2, 0x1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v3, "android.settings.BIOMETRIC_ENROLL"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 142
    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsEnrollActionLogged:Z

    .line 148
    const-class p1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    const/16 v3, 0xc

    if-eqz p1, :cond_2

    const/16 v3, 0xf

    .line 150
    invoke-virtual {p1, v3}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result v3

    const/16 v4, 0xff

    .line 151
    invoke-virtual {p1, v4}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result v4

    const v5, 0x8000

    .line 152
    invoke-virtual {p1, v5}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v3

    move v4, p1

    :goto_0
    const/16 v5, 0x163

    if-nez v3, :cond_3

    move v6, v2

    goto :goto_1

    :cond_3
    move v6, v1

    :goto_1
    if-nez v4, :cond_4

    move v7, v2

    goto :goto_2

    :cond_4
    move v7, v1

    :goto_2
    if-nez p1, :cond_5

    move v8, v2

    goto :goto_3

    :cond_5
    move v8, v1

    :goto_3
    const-string p1, "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

    .line 163
    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v9

    .line 164
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 159
    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZZZI)V

    :cond_6
    const-string p1, "theme"

    .line 168
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_7

    .line 171
    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 169
    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v3, "android.hardware.fingerprint"

    .line 175
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    const-string v3, "android.hardware.biometrics.face"

    .line 176
    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    .line 179
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p1

    .line 181
    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    if-eqz v3, :cond_a

    .line 182
    const-class v3, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/face/FaceManager;

    .line 184
    invoke-virtual {v3}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v4

    .line 185
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a

    if-eqz p1, :cond_8

    move v4, v2

    goto :goto_4

    .line 187
    :cond_8
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 188
    :goto_4
    iget v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    .line 189
    invoke-virtual {v3, v5}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_9

    move v3, v2

    goto :goto_5

    :cond_9
    move v3, v1

    :goto_5
    iput-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    .line 192
    :cond_a
    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    if-eqz v3, :cond_d

    .line 193
    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    .line 195
    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v4

    .line 196
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_d

    if-eqz p1, :cond_b

    move v4, v2

    goto :goto_6

    .line 198
    :cond_b
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 199
    :goto_6
    iget v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    .line 200
    invoke-virtual {v3, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v3, v4, :cond_c

    move v3, v2

    goto :goto_7

    :cond_c
    move v3, v1

    :goto_7
    iput-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    :cond_d
    const-string v3, "require_consent"

    .line 204
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    const-string v3, "skip_return_to_parent"

    .line 205
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parentalOptionsRequired: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", skipReturnToParent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSetupWizard: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BiometricEnrollActivity"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eqz p1, :cond_e

    .line 214
    iget-boolean v4, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v4, :cond_e

    const-string p1, "Enrollment with parental consent is not supported when launched  directly from SuW - skipping enrollment"

    .line 215
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 218
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_e
    if-eqz p1, :cond_10

    .line 227
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz p1, :cond_10

    const/16 p1, 0xa

    .line 228
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    if-eqz p1, :cond_f

    move v1, v2

    :cond_f
    if-eqz v1, :cond_10

    const-string p1, "Consent was already setup - skipping enrollment"

    .line 232
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 234
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 240
    :cond_10
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    if-nez p1, :cond_11

    .line 241
    new-instance p1, Lcom/android/settings/biometrics/ParentalConsentHelper;

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    iget-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    invoke-direct {p1, v0, v1, v2}, Lcom/android/settings/biometrics/ParentalConsentHelper;-><init>(ZZLjava/lang/Long;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    .line 243
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->setOrConfirmCredentialsNow()V

    goto :goto_8

    .line 245
    :cond_11
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->startEnroll()V

    :goto_8
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 309
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    const-string v1, "confirming_credentials"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 311
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsEnrollActionLogged:Z

    const-string v1, "enroll_action_logged"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 312
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "enroll_preferences"

    .line 313
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 315
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    if-eqz p0, :cond_1

    .line 316
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p0, "gk_pw_handle"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
