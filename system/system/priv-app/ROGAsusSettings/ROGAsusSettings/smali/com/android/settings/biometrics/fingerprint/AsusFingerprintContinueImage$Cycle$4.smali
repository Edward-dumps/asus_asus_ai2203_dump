.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$4;
.super Ljava/lang/Object;
.source "AsusFingerprintContinueImage.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->createInsideAnimaion(FFFFI)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;)V
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$4;->this$1:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 310
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle$4;->this$1:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;->access$602(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintContinueImage$Cycle;F)F

    return-void
.end method
