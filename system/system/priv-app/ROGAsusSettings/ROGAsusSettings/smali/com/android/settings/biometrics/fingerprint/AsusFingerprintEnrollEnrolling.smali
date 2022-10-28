.class public Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;
.super Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;
.source "AsusFingerprintEnrollEnrolling.java"

# interfaces
.implements Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$FingerprintErrorDialog;,
        Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;,
        Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$IconTouchDialog;
    }
.end annotation


# static fields
.field private static final DESCRIPTION_UPDATE_RATIO2:D

.field private static final mRedDotBoundArray:[I

.field private static startTime:J


# instance fields
.field private mAnimationCancelled:Z

.field private mButtonBar:Landroid/widget/LinearLayout;

.field private mContinueBtn:Landroid/widget/Button;

.field private final mDelayedFinishRunnable:Ljava/lang/Runnable;

.field private mEnrollingContent:Landroid/widget/LinearLayout;

.field private mEnrollingContinue:Landroid/widget/RelativeLayout;

.field private mErrorText:Landroid/widget/TextView;

.field private mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

.field private mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFingerprintAnimator:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

.field private mFingerprintRedDot:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;

.field private mFinish:Z

.field private final mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mFinishUpdateAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field protected final mHandler:Landroid/os/Handler;

.field private final mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

.field private mIconTouchCount:I

.field private mLastProgress:I

.field private mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mMessageLayout:Landroid/widget/FrameLayout;

.field private mProgressText:Landroid/widget/TextView;

.field mRedDotAnim:Landroid/animation/ValueAnimator;

.field private final mRedDotRunnable:Ljava/lang/Runnable;

.field private mRepeatMessage:Landroid/widget/TextView;

.field private mRestoring:Z

.field private mShow:I

.field private final mShowDialogRunnable:Ljava/lang/Runnable;

.field private mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

.field private mStartMessage:Landroid/widget/TextView;

.field private final mTouchAgainRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 139
    invoke-static {}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->getInterruptRatio()D

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->DESCRIPTION_UPDATE_RATIO2:D

    const/16 v0, 0x29

    new-array v0, v0, [I

    .line 149
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRedDotBoundArray:[I

    const-wide/16 v0, 0x0

    .line 164
    sput-wide v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->startTime:J

    return-void

    :array_0
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
        0x3c
        0x41
        0x46
        0x4b
        0x50
        0x55
        0x5a
        0x5f
        0x64
        0x69
        0x6e
        0x73
        0x78
        0x7d
        0x82
        0x87
        0x8c
        0x91
        0x96
        0x9b
        0xa0
        0xa5
        0xaa
        0xaf
        0xb4
        0xb9
        0xbe
        0xc3
        0xc8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 85
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;-><init>()V

    .line 146
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 147
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRedDotAnim:Landroid/animation/ValueAnimator;

    .line 670
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$11;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$11;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFinishUpdateAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    const/4 v0, 0x0

    .line 680
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFinish:Z

    .line 681
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$12;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$12;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 703
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$13;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$13;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    .line 710
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$14;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$14;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mIconAnimationCallback:Landroid/graphics/drawable/Animatable2$AnimationCallback;

    .line 728
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$15;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$15;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRedDotRunnable:Ljava/lang/Runnable;

    .line 735
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$16;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$16;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    .line 742
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$17;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$17;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    .line 893
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mShow:I

    .line 894
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mLastProgress:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)I
    .locals 0

    .line 85
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mIconTouchCount:I

    return p0
.end method

.method static synthetic access$008(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)I
    .locals 2

    .line 85
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mIconTouchCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mIconTouchCount:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->showIconTouchDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Landroid/widget/TextView;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Landroid/widget/FrameLayout;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mMessageLayout:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mDelayedFinishRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;Z)Z
    .locals 0

    .line 85
    iput-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFinish:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;[B)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->launchFinish([B)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Z
    .locals 0

    .line 85
    iget-boolean p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->animateRedDot()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;Ljava/lang/CharSequence;)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Ljava/lang/Runnable;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mShowDialogRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;
    .locals 0

    .line 85
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFingerprintAnimator:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;Z)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateContintueImage(Z)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;I)I
    .locals 0

    .line 85
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mShow:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->setImageProgress(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->playFinishAnimaion()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;I)V
    .locals 0

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->setRedDotProgress(I)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;IIZ)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->animateInvalidFlash(IIZ)V

    return-void
.end method

.method private animateFlash(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 352
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 353
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$3;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$3;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    .line 361
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 362
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$4;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$4;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;I)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v0, 0xfa

    .line 370
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 371
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateInvalidFlash(IIZ)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    .line 429
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 430
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$7;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$7;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    .line 438
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 439
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$8;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$8;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;ZII)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 p0, 0xfa

    .line 447
    invoke-virtual {v0, p0, p1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 448
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateRedDot()V
    .locals 7

    .line 376
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mLastProgress:I

    .line 377
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFingerprintAnimator:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    int-to-double v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->progressMapStep(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x0

    const/16 v2, 0x27

    move v3, v1

    :goto_0
    if-ltz v2, :cond_1

    .line 382
    sget-object v3, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRedDotBoundArray:[I

    aget v3, v3, v2

    if-le v0, v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v2, -0x1

    move v6, v3

    move v3, v2

    move v2, v6

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_1
    mul-int/lit8 v3, v2, 0x15

    .line 386
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "step = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "5566"

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    new-array v0, v0, [I

    aput v3, v0, v1

    add-int/lit8 v1, v3, 0x15

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aput v1, v0, v2

    .line 389
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 390
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$5;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$5;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    .line 398
    new-instance v2, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$6;

    invoke-direct {v2, p0, v3}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$6;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;I)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 404
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v1, 0x2bc

    .line 405
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 406
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRedDotAnim:Landroid/animation/ValueAnimator;

    .line 407
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private clearError()V
    .locals 3

    .line 613
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 614
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 615
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 616
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->fingerprint_error_text_disappear_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 618
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 619
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$9;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$9;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    .line 620
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 626
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    const/4 v0, 0x2

    .line 629
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->showMessage()V

    :cond_1
    return-void
.end method

.method private clearMessage()V
    .locals 3

    .line 653
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mMessageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 654
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mMessageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 655
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 656
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$dimen;->fingerprint_error_text_disappear_distance:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x64

    .line 658
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 659
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$10;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$10;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    .line 660
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 666
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
    const/16 v0, 0x26

    if-eq p1, v0, :cond_2

    const/16 v0, 0x27

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    add-int/lit8 p1, p1, 0x2

    goto :goto_1

    :cond_2
    :goto_0
    const/16 p1, 0x28

    :goto_1
    sub-int p2, p1, p2

    .line 569
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    mul-int/lit16 p0, p0, 0x2710

    .line 570
    div-int/2addr p0, p1

    return p0
.end method

.method private launchFinish([B)V
    .locals 2

    .line 453
    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->getFinishIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    .line 454
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    .line 455
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 456
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mFromChooseLock:Z

    const-string v1, "FROM_CHOOSE_LOCK"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 457
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mUserId:I

    const/16 v1, -0x2710

    if-eq p1, v1, :cond_0

    const-string v1, "android.intent.extra.USER_ID"

    .line 458
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 460
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 461
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private playFinishAnimaion()V
    .locals 4

    .line 411
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFingerprintAnimator:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v0, 0x1

    aput v2, v1, v0

    .line 412
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 413
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 414
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFinishUpdateAnimationListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 415
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFinishAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 416
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 417
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mProgressText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->done_button:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 420
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 421
    sget-wide v2, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->startTime:J

    sub-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    .line 424
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "fod_enroll_time"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setImageProgress(I)V
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFingerprintAnimator:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->setProgress(I)V

    return-void
.end method

.method private setRedDotProgress(I)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFingerprintRedDot:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;->setProgress(I)V

    return-void
.end method

.method private showError(Ljava/lang/CharSequence;)V
    .locals 4

    .line 586
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mShow:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    .line 589
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->clearMessage()V

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 591
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "\u6307\u7d0b\u53d6\u6a23"

    .line 592
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 593
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->toSpanText(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 594
    :cond_2
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    const/4 v0, 0x4

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-ne p1, v0, :cond_3

    .line 595
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 596
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/android/settings/R$dimen;->fingerprint_error_text_appear_distance:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 598
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 599
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 600
    invoke-virtual {p1, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 601
    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    .line 602
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 603
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 604
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 606
    :cond_3
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 607
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 608
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private showErrorDialog(Ljava/lang/CharSequence;I)V
    .locals 0

    .line 575
    invoke-static {p1, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$FingerprintErrorDialog;->newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$FingerprintErrorDialog;

    move-result-object p1

    .line 576
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-class p2, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$FingerprintErrorDialog;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showIconTouchDialog()V
    .locals 2

    const/4 v0, 0x0

    .line 581
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mIconTouchCount:I

    .line 582
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$IconTouchDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$IconTouchDialog;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private showMessage()V
    .locals 5

    .line 633
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mMessageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    .line 634
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mMessageLayout:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 635
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mMessageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/settings/R$dimen;->fingerprint_error_text_appear_distance:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 637
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mMessageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 638
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mMessageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 639
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 640
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 641
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 642
    invoke-virtual {v0, p0}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 643
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mMessageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 647
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mMessageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 648
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mMessageLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    :goto_0
    return-void
.end method

.method private startIconAnimation()V
    .locals 0

    return-void
.end method

.method private stopIconAnimation()V
    .locals 1

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mAnimationCancelled:Z

    return-void
.end method

.method private toSpanText(Ljava/lang/String;)Landroid/text/Spannable;
    .locals 3

    .line 948
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 v0, p0, 0x1b

    .line 950
    new-instance v1, Landroid/text/SpannableString;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "#ASUS FINGERPRINT SETIINGS#"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 951
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    const v2, 0xfafafa

    invoke-direct {p1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v2, 0x21

    invoke-interface {v1, p1, p0, v0, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-object v1
.end method

.method private updateContintueImage(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 924
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFingerprintAnimator:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->showSecondPhaseImage(ZZ)V

    .line 925
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->clearError()V

    goto :goto_0

    .line 931
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFingerprintAnimator:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;->showSecondPhaseImage(ZZ)V

    :goto_0
    return-void
.end method

.method private updateDescription(I)V
    .locals 9

    .line 469
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    int-to-double v3, p1

    const-wide v5, 0x408f400000000000L    # 1000.0

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_0

    goto :goto_0

    :cond_0
    const-wide v5, 0x40c3880000000000L    # 10000.0

    .line 473
    sget-wide v7, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->DESCRIPTION_UPDATE_RATIO2:D

    mul-double/2addr v7, v5

    cmpg-double p1, v3, v7

    if-gez p1, :cond_1

    .line 474
    sget p1, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_repeat_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setHeaderText(I)V

    .line 475
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 478
    :cond_1
    sget p1, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_more_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setHeaderText(I)V

    .line 479
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_more_message:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 481
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->toSpanText(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 470
    :cond_2
    :goto_0
    sget p1, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_start_title:I

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setHeaderText(I)V

    .line 471
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method protected static updateDialogSize(Landroid/app/Dialog;Landroid/content/Context;)V
    .locals 3

    if-eqz p0, :cond_0

    .line 878
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    .line 879
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    .line 880
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 881
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 882
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    const/high16 v2, 0x42300000    # 44.0f

    invoke-static {p1, v2}, Lcom/android/settings/Utils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    sub-int/2addr v0, p1

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 883
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateNotification(I)V
    .locals 6

    int-to-double v0, p1

    .line 904
    sget-wide v2, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->DESCRIPTION_UPDATE_RATIO2:D

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_2

    .line 905
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mShow:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 906
    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateContintueImage(Z)V

    .line 907
    iput v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mShow:I

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    .line 908
    iget v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mLastProgress:I

    if-eq p1, v2, :cond_1

    const/4 p1, 0x0

    .line 909
    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateContintueImage(Z)V

    const/4 p1, 0x2

    .line 910
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mShow:I

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    .line 912
    invoke-direct {p0, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateContintueImage(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private updateProgress(Z)I
    .locals 4

    .line 553
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 554
    invoke-virtual {p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentRemaining()I

    move-result v0

    .line 553
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->getProgress(II)I

    move-result p1

    int-to-double v0, p1

    const-wide v2, 0x40c3880000000000L    # 10000.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const-string v0, "%d"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "%"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mProgressText:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return p1
.end method


# virtual methods
.method protected getFinishIntent()Landroid/content/Intent;
    .locals 2

    .line 465
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollFinish;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf0

    return p0
.end method

.method protected isYodaEnrolling()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onBackPressed()V
    .locals 3

    const-string v0, "AsusFingerprintEnrollEnrolling"

    const-string v1, "onBackPressed()"

    .line 331
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 333
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    .line 334
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 336
    iput-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 338
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 169
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 170
    sget v0, Lcom/android/settings/R$layout;->asus_fingerprint_enroll_enrolling:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setSubContentView(I)V

    .line 171
    sget v0, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_start_title:I

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->setHeaderText(I)V

    .line 172
    sget v0, Lcom/android/settings/R$id;->start_message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    .line 173
    sget v0, Lcom/android/settings/R$id;->repeat_message:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    .line 174
    sget v0, Lcom/android/settings/R$id;->progress_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mProgressText:Landroid/widget/TextView;

    const/16 v1, 0x8

    .line 175
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mLayout:Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 178
    sget v0, Lcom/android/settings/R$id;->error_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    .line 179
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/settings/R$id;->header_text:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, -0x1

    .line 180
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->mLayout:Landroid/view/ViewGroup;

    sget v1, Lcom/android/settings/R$id;->fingerprint_icon:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 185
    sget v0, Lcom/android/settings/R$id;->message_text:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mMessageLayout:Landroid/widget/FrameLayout;

    .line 188
    sget v0, Lcom/android/settings/R$id;->fingerprint_animator:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFingerprintAnimator:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    .line 189
    sget v0, Lcom/android/settings/R$id;->fingerprint_red_dot:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFingerprintRedDot:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintRedDot;

    const v0, 0x10c000d

    .line 191
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000e

    .line 193
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mLinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    const v0, 0x10c000f

    .line 195
    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 197
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFingerprintAnimator:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$1;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRestoring:Z

    if-eqz v0, :cond_1

    const-string v0, "show_notification"

    .line 219
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mShow:I

    const-string v0, "last_progress"

    .line 220
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mLastProgress:I

    .line 222
    :cond_1
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mProgressText:Landroid/widget/TextView;

    const-string v0, "0%"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    sget p1, Lcom/android/settings/R$id;->enroll_notification_layout:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mEnrollingContinue:Landroid/widget/RelativeLayout;

    .line 224
    sget p1, Lcom/android/settings/R$id;->fingerprint_enrolling_content:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mEnrollingContent:Landroid/widget/LinearLayout;

    .line 226
    sget p1, Lcom/android/settings/R$id;->button_bar:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mButtonBar:Landroid/widget/LinearLayout;

    .line 227
    sget p1, Lcom/android/settings/R$id;->next_button:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mContinueBtn:Landroid/widget/Button;

    .line 228
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$2;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$2;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string/jumbo p1, "vibrator"

    .line 240
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    if-eqz p1, :cond_2

    .line 241
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-nez p1, :cond_2

    .line 242
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mStartMessage:Landroid/widget/TextView;

    sget v0, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_start_message_2:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 247
    :cond_2
    invoke-static {}, Lcom/android/settings/Utils;->isSupportFlipCamera()Z

    move-result p1

    if-nez p1, :cond_3

    .line 248
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mEnrollingContent:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 249
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {p0, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->dipToPixels(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 250
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mEnrollingContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 253
    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-static {p0, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->dipToPixels(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    iget v2, p1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iget v3, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 254
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 257
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_repeat_message:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 258
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRepeatMessage:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->toSpanText(Ljava/lang/String;)Landroid/text/Spannable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    .line 523
    sget p2, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_error_generic_dialog_message:I

    goto :goto_0

    .line 519
    :cond_0
    sget p2, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_error_timeout_dialog_message:I

    .line 526
    :goto_0
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->showErrorDialog(Ljava/lang/CharSequence;I)V

    .line 527
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 528
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 11

    .line 488
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 489
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 490
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->showError(Ljava/lang/CharSequence;)V

    .line 493
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {p1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->isDone()Z

    move-result p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    .line 495
    iget-object p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 496
    invoke-virtual {p2}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentSteps()I

    move-result p2

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->getEnrollmentRemaining()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 495
    invoke-direct {p0, p2, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->getProgress(II)I

    move-result p2

    .line 497
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mShow:I

    const/4 v2, 0x2

    const-wide v3, 0x40c3880000000000L    # 10000.0

    if-eq v0, v2, :cond_1

    int-to-double v5, p2

    sget-wide v7, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->DESCRIPTION_UPDATE_RATIO2:D

    mul-double v9, v7, v3

    cmpl-double v0, v5, v9

    if-ltz v0, :cond_1

    mul-double/2addr v7, v3

    double-to-int p2, v7

    :cond_1
    int-to-double v5, p2

    .line 501
    sget-wide v7, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->DESCRIPTION_UPDATE_RATIO2:D

    mul-double v9, v7, v3

    cmpl-double v0, v5, v9

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mLastProgress:I

    int-to-double v5, v0

    mul-double/2addr v7, v3

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_2

    move p1, v1

    :cond_2
    if-nez p2, :cond_3

    const/16 p2, 0x1f4

    :cond_3
    if-nez p1, :cond_4

    .line 507
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mLastProgress:I

    invoke-direct {p0, p1, p2, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->animateInvalidFlash(IIZ)V

    :cond_4
    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 4

    .line 533
    sget-wide v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->startTime:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->startTime:J

    :cond_0
    const/4 p2, 0x1

    .line 535
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateProgress(Z)I

    move-result v0

    .line 536
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRedDotRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 537
    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRedDotAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRedDotAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 538
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateDescription(I)V

    .line 539
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateNotification(I)V

    .line 540
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->clearError()V

    .line 541
    iget v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mLastProgress:I

    invoke-direct {p0, v1, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->animateFlash(II)V

    .line 542
    iput v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mLastProgress:I

    .line 543
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRedDotRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x44c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 544
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 545
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AsusFingerprintEnrollBase"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mShow:I

    if-eq p1, p2, :cond_2

    .line 548
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mErrorText:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mTouchAgainRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x9c4

    invoke-virtual {p1, p0, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 298
    invoke-super {p0}, Landroid/app/Activity;->onEnterAnimationComplete()V

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mAnimationCancelled:Z

    .line 300
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->startIconAnimation()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 314
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    const-string v0, "AsusFingerprintEnrollEnrolling"

    const-string v1, "onStop()"

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 317
    invoke-virtual {v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    .line 319
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->stopIconAnimation()V

    .line 320
    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_2

    .line 321
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-eqz v0, :cond_1

    .line 322
    invoke-virtual {v0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->cancelEnrollment()Z

    .line 323
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 325
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 898
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 899
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mShow:I

    const-string v1, "show_notification"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 900
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mLastProgress:I

    const-string v0, "last_progress"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 263
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onStart()V

    const-string v0, "AsusFingerprintEnrollEnrolling"

    const-string v1, "onStart()"

    .line 264
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "fingerPrefs"

    const/4 v1, 0x0

    .line 266
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "DontShowProtector"

    .line 267
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->showSideCar()V

    goto :goto_0

    .line 269
    :cond_0
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;-><init>()V

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected setButtonText(Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 2

    .line 958
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mButtonBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 959
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 960
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_continue:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showSideCar()V
    .locals 3

    const-string v0, "AsusFingerprintEnrollEnrolling"

    const-string v1, "showSideCar()"

    .line 273
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    if-nez v0, :cond_0

    .line 276
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    .line 277
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mSidecar:Lcom/android/settings/biometrics/BiometricEnrollSidecar;

    invoke-virtual {v0, p0}, Lcom/android/settings/biometrics/BiometricEnrollSidecar;->setListener(Lcom/android/settings/biometrics/BiometricEnrollSidecar$Listener;)V

    const/4 v0, 0x0

    .line 280
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateProgress(Z)I

    move-result v0

    .line 281
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateDescription(I)V

    .line 283
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateNotification(I)V

    .line 284
    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->setImageProgress(I)V

    .line 286
    iget-boolean v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mRestoring:Z

    if-eqz v1, :cond_1

    .line 287
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->startIconAnimation()V

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_1

    .line 289
    iget-boolean v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->mFinish:Z

    if-nez v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->playFinishAnimaion()V

    :cond_1
    return-void
.end method
