.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$12;
.super Ljava/lang/Object;
.source "AsusFingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$12;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 691
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$12;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$300(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 692
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$12;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$300(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$12;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$1200(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0xfa

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 693
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$12;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$1302(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;Z)Z

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
