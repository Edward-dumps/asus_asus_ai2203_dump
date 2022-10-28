.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;
.super Ljava/lang/Object;
.source "AsusFingerprintContinueImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Cycle"
.end annotation


# instance fields
.field private mAlpha:F

.field private mRadius:F

.field private mSet:Landroid/animation/AnimatorSet;

.field private final mStartAnimationRunnable:Ljava/lang/Runnable;

.field private mType:I

.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;


# direct methods
.method public constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;I)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    new-instance p1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$1;

    invoke-direct {p1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$1;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mStartAnimationRunnable:Ljava/lang/Runnable;

    .line 221
    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mType:I

    .line 222
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->startAnimation()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;)V
    .locals 0

    .line 212
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->startAnimation()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;)Ljava/lang/Runnable;
    .locals 0

    .line 212
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mStartAnimationRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;F)F
    .locals 0

    .line 212
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mAlpha:F

    return p1
.end method

.method static synthetic access$602(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;F)F
    .locals 0

    .line 212
    iput p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mRadius:F

    return p1
.end method

.method private createInsideAnimaion(FFFFI)Landroid/animation/AnimatorSet;
    .locals 5

    const/4 v0, 0x2

    new-array v1, v0, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 p1, 0x1

    aput p2, v1, p1

    .line 294
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    .line 295
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$3;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$3;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;)V

    .line 302
    invoke-virtual {p2, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    int-to-long v3, p5

    .line 303
    invoke-virtual {p2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-array p5, v0, [F

    aput p3, p5, v2

    aput p4, p5, p1

    .line 305
    invoke-static {p5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p3

    .line 306
    new-instance p4, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$4;

    invoke-direct {p4, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$4;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;)V

    .line 313
    invoke-virtual {p3, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 314
    invoke-virtual {p3, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 316
    new-instance p0, Landroid/animation/AnimatorSet;

    invoke-direct {p0}, Landroid/animation/AnimatorSet;-><init>()V

    new-array p4, v0, [Landroid/animation/Animator;

    aput-object p2, p4, v2

    aput-object p3, p4, p1

    .line 317
    invoke-virtual {p0, p4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object p0
.end method

.method private startAnimation()V
    .locals 15

    .line 253
    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mType:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    .line 254
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;

    .line 255
    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->access$100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;)I

    move-result v0

    int-to-float v0, v0

    mul-float v6, v0, v1

    const v0, 0x3fb9999a    # 1.45f

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;

    invoke-static {v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->access$100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;)I

    move-result v1

    int-to-float v1, v1

    mul-float v7, v1, v0

    const/16 v8, 0x44c

    move-object v3, p0

    .line 254
    invoke-direct/range {v3 .. v8}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->createInsideAnimaion(FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v0

    goto :goto_0

    .line 259
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const v3, 0x3f333333    # 0.7f

    const v4, 0x3dcccccd    # 0.1f

    .line 260
    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;

    .line 261
    invoke-static {v2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->access$200(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;)I

    move-result v2

    int-to-float v2, v2

    mul-float v5, v2, v1

    iget-object v2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;

    invoke-static {v2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->access$200(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;)I

    move-result v2

    int-to-float v2, v2

    const v8, 0x3f933333    # 1.15f

    mul-float v6, v2, v8

    const/16 v7, 0x1f4

    move-object v2, p0

    .line 260
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->createInsideAnimaion(FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v2

    const v10, 0x3dcccccd    # 0.1f

    const v11, 0x3f333333    # 0.7f

    .line 263
    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;

    .line 264
    invoke-static {v3}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->access$200(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;)I

    move-result v3

    int-to-float v3, v3

    mul-float v12, v3, v8

    iget-object v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;

    invoke-static {v3}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;->access$200(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;)I

    move-result v3

    int-to-float v3, v3

    mul-float v13, v3, v1

    const/16 v14, 0x2bc

    move-object v9, p0

    .line 263
    invoke-direct/range {v9 .. v14}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->createInsideAnimaion(FFFFI)Landroid/animation/AnimatorSet;

    move-result-object v1

    .line 266
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 268
    :goto_0
    new-instance v1, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$2;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 289
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 290
    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mSet:Landroid/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage;

    iget-object v1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mStartAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 239
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mSet:Landroid/animation/AnimatorSet;

    if-eqz p0, :cond_0

    .line 240
    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 0

    .line 234
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mAlpha:F

    return p0
.end method

.method public getRadius()F
    .locals 0

    .line 230
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mRadius:F

    return p0
.end method

.method public getType()I
    .locals 0

    .line 226
    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->mType:I

    return p0
.end method
