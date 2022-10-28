.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AsusFingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->animateFlash(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

.field final synthetic val$end:I


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;I)V
    .locals 0

    .line 362
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$4;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$4;->val$end:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 365
    iget p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$4;->val$end:I

    const/16 v0, 0x2710

    if-lt p1, v0, :cond_0

    .line 366
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$4;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$700(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    :cond_0
    return-void
.end method
