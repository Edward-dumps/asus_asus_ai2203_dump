.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;
.super Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;
    }
.end annotation


# static fields
.field private static final FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAnimationCancelled:Z

.field private mCanAssumeUdfps:Z

.field private final mDelayedFinishRunnable:Ljava/lang/Runnable;

.field private mErrorText:Landroid/widget/TextView;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private final mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconBackgroundBlinksDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

.field private mIconTouchCount:I

.field private mIsAccessibilityEnabled:Z

.field private mIsSetupWizard:Z

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mOrientationEventListener:Landroid/view/OrientationEventListener;

.field private mPreviousRotation:I

.field private mProgressAnim:Landroid/animation/ObjectAnimator;

.field private final mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRestoring:Z

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public static synthetic $r8$lambda$9wSO80ChaE3nE8mBuleuDs0612k(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->lambda$onCreate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$jb6mPex8UNupKP8fMpnG4lepZwM(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onSkipButtonClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$r1MLqHD6FKm9FTjjP9RQx46IGoA(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->lambda$clearError$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v1, v0, [J

    .line 95
    fill-array-data v1, :array_0

    const/4 v2, -0x1

    .line 96
    invoke-static {v1, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v1

    sput-object v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    .line 97
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 99
    invoke-virtual {v1, v0}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    .line 100
    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x5
        0x37
        0x3c
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    .line 492
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 513
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$3;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    .line 520
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 538
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 545
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$6;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$6;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)I
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Landroid/widget/ProgressBar;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)[B
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;[B)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->launchFinish([B)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private animateFlash()V
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconBackgroundBlinksDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 294
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method private animateProgress(I)V
    .locals 6

    .line 272
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    const-wide/16 v1, 0xfa

    if-eqz v0, :cond_1

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 276
    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 281
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    .line 284
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput p1, v3, v4

    const-string p1, "progress"

    .line 283
    invoke-static {v0, p1, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 285
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 286
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 287
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 288
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    .line 289
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressAnim:Landroid/animation/ObjectAnimator;

    return-void
.end method

.method private clearError()V
    .locals 3

    .line 455
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 457
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->fingerprint_error_text_disappear_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 460
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 461
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    .line 462
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 463
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method private getProgress(II)I
    .locals 1

    const/4 p0, 0x0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    sub-int p2, p1, p2

    .line 416
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/lit16 p0, p0, 0x2710

    .line 417
    div-int/2addr p0, p1

    return p0
.end method

.method private isCenterEnrollmentComplete()Z
    .locals 3

    .line 342
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 345
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentRemaining()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x2

    if-lt v0, p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private synthetic lambda$clearError$1()V
    .locals 1

    .line 462
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 189
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p1, :cond_1

    .line 190
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    if-ne p1, v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showIconTouchDialog()V

    goto :goto_0

    .line 194
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, p0, v2, v3}, Landroid/widget/ProgressBar;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 197
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v0, :cond_2

    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 199
    :cond_2
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/ProgressBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return v1
.end method

.method private listenOrientationEvent()V
    .locals 1

    .line 468
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;

    invoke-direct {v0, p0, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    .line 481
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->enable()V

    .line 482
    invoke-virtual {p0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mPreviousRotation:I

    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 4

    .line 426
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(Ljava/lang/CharSequence;)V

    const-string p1, ""

    .line 429
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 431
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 433
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 434
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$dimen;->fingerprint_error_text_appear_distance:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 436
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 437
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 438
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 439
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 440
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 441
    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 442
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 444
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 445
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 446
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 449
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 450
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    sget-object p1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->VIBRATE_EFFECT_ERROR:Landroid/os/VibrationEffect;

    sget-object v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->FINGERPRINT_ENROLLING_SONFICATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, p1, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    :cond_2
    return-void
.end method

.method private showIconTouchDialog()V
    .locals 2

    const/4 v0, 0x0

    .line 421
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconTouchCount:I

    .line 422
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private startIconAnimation()V
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 248
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    :cond_0
    return-void
.end method

.method private stopIconAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 253
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 254
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    :cond_0
    return-void
.end method

.method private stopListenOrientationEvent()V
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    if-eqz v0, :cond_0

    .line 487
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->disable()V

    :cond_0
    const/4 v0, 0x0

    .line 489
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mOrientationEventListener:Landroid/view/OrientationEventListener;

    return-void
.end method

.method private updateProgress(Z)V
    .locals 2

    .line 393
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->isEnrolling()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 399
    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentRemaining()I

    move-result v1

    .line 398
    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->getProgress(II)I

    move-result v0

    if-eqz p1, :cond_1

    .line 401
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->animateProgress(I)V

    goto :goto_0

    .line 403
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_2

    .line 404
    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_2
    const/16 p1, 0x2710

    if-lt v0, p1, :cond_3

    .line 407
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p0, "FingerprintEnrollEnrolling"

    const-string p1, "Enrollment not started yet"

    .line 394
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateTitleAndDescription()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 320
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->isCenterEnrollmentComplete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsSetupWizard:Z

    if-eqz v0, :cond_1

    .line 322
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_title_one_more_time:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    goto :goto_0

    .line 324
    :cond_1
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 326
    :goto_0
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_start_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_2

    .line 328
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_4

    .line 329
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 330
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-eqz v0, :cond_3

    .line 331
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_repeat_a11y_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_2

    .line 333
    :cond_3
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_repeat_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_2

    .line 336
    :cond_4
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_2

    .line 304
    :cond_5
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_6

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_udfps_title:I

    invoke-virtual {v0, v1}, Lcom/google/android/setupdesign/GlifLayout;->setHeaderText(I)V

    .line 311
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_start_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    .line 313
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_a11y:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 315
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/setupdesign/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 316
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 318
    :cond_6
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_start_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    :goto_2
    return-void
.end method


# virtual methods
.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .line 299
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf0

    return p0
.end method

.method protected getSidecar()Lcom/android/settings/biometrics/BiometricEnrollSidecar;
    .locals 1

    .line 209
    new-instance p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;-><init>()V

    const/4 v0, 0x2

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;->setEnrollReason(I)V

    return-object p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 126
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 128
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 130
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnyUdfpsType()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    .line 133
    const-class v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 134
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    .line 136
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->listenOrientationEvent()V

    .line 138
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_2

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->isReverseLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 140
    sget v0, Lcom/android/settings/R$layout;->udfps_enroll_enrolling_land:I

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    goto :goto_1

    .line 142
    :cond_1
    sget v0, Lcom/android/settings/R$layout;->udfps_enroll_enrolling:I

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 144
    :goto_1
    sget v0, Lcom/android/settings/R$string;->security_settings_udfps_enroll_start_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    goto :goto_2

    .line 146
    :cond_2
    sget v0, Lcom/android/settings/R$layout;->fingerprint_enroll_enrolling:I

    invoke-virtual {p0, v0}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 147
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_start_message:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(I)V

    .line 150
    :goto_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsSetupWizard:Z

    .line 151
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_3

    .line 152
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateTitleAndDescription()V

    goto :goto_3

    .line 154
    :cond_3
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_repeat_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setHeaderText(I)V

    .line 157
    :goto_3
    sget v0, Lcom/android/settings/R$id;->error_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    .line 158
    sget v0, Lcom/android/settings/R$id;->fingerprint_progress_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    .line 159
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mVibrator:Landroid/os/Vibrator;

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->getLayout()Lcom/google/android/setupdesign/GlifLayout;

    move-result-object v0

    const-class v1, Lcom/google/android/setupcompat/template/FooterBarMixin;

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/internal/TemplateLayout;->getMixin(Ljava/lang/Class;)Lcom/google/android/setupcompat/template/Mixin;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/template/FooterBarMixin;

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    .line 162
    new-instance v1, Lcom/google/android/setupcompat/template/FooterButton$Builder;

    invoke-direct {v1, p0}, Lcom/google/android/setupcompat/template/FooterButton$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_enrolling_skip:I

    .line 164
    invoke-virtual {v1, v4}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setText(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    new-instance v4, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    .line 165
    invoke-virtual {v1, v4}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setListener(Landroid/view/View$OnClickListener;)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    const/4 v4, 0x7

    .line 166
    invoke-virtual {v1, v4}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setButtonType(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    sget v4, Lcom/android/settings/R$style;->SudGlifButton_Secondary:I

    .line 167
    invoke-virtual {v1, v4}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->setTheme(I)Lcom/google/android/setupcompat/template/FooterButton$Builder;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/google/android/setupcompat/template/FooterButton$Builder;->build()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterBarMixin;->setSecondaryButton(Lcom/google/android/setupcompat/template/FooterButton;)V

    .line 171
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    .line 172
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_5

    .line 174
    sget v1, Lcom/android/settings/R$id;->fingerprint_animation:I

    .line 175
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 176
    sget v1, Lcom/android/settings/R$id;->fingerprint_background:I

    .line 177
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconBackgroundBlinksDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 178
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationDrawable:Landroid/graphics/drawable/AnimatedVectorDrawable;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_5
    const v0, 0x10c000d

    .line 181
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000e

    .line 183
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000f

    .line 185
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 187
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_6

    .line 188
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_6
    if-eqz p1, :cond_7

    move v2, v3

    .line 204
    :cond_7
    iput-boolean v2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 267
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->stopListenOrientationEvent()V

    .line 268
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onDestroy()V

    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    .line 361
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintErrorDialog;->showErrorDialog(Lcom/android/settings/biometrics/BiometricEnrollBase;I)V

    .line 362
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 363
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez p1, :cond_0

    .line 364
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 1

    .line 351
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 352
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez p1, :cond_0

    .line 353
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 355
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 2

    const/4 v0, 0x1

    .line 370
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 371
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateTitleAndDescription()V

    .line 372
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->clearError()V

    .line 373
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->animateFlash()V

    .line 374
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-nez v1, :cond_0

    .line 375
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 376
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x9c4

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 378
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mIsAccessibilityEnabled:Z

    if-eqz v1, :cond_1

    sub-int p2, p1, p2

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 380
    sget p2, Lcom/android/settings/R$string;->security_settings_udfps_enroll_progress_a11y_message:I

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 381
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    .line 380
    invoke-virtual {p0, p2, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 382
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object p2

    const/16 v0, 0x4000

    .line 383
    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 384
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 385
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 386
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0, p2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 236
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    .line 238
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->startEnrollment()V

    :cond_0
    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 243
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 226
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onStart()V

    const/4 v0, 0x0

    .line 227
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateProgress(Z)V

    .line 228
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->updateTitleAndDescription()V

    .line 229
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    if-eqz v0, :cond_0

    .line 230
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->startIconAnimation()V

    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 261
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricsEnrollEnrolling;->onStop()V

    .line 262
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->stopIconAnimation()V

    return-void
.end method

.method protected shouldStartAutomatically()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mCanAssumeUdfps:Z

    if-eqz v0, :cond_0

    .line 219
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollEnrolling;->mRestoring:Z

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
