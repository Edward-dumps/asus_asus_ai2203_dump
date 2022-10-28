.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AsusFingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->animateInvalidFlash(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

.field final synthetic val$end:I

.field final synthetic val$recursive:Z

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;ZII)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$8;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    iput-boolean p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$8;->val$recursive:Z

    iput p3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$8;->val$end:I

    iput p4, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$8;->val$start:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 442
    iget-boolean p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$8;->val$recursive:Z

    if-eqz p1, :cond_0

    .line 443
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$8;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    iget v0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$8;->val$end:I

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$8;->val$start:I

    const/4 v1, 0x0

    invoke-static {p1, v0, p0, v1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$900(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;IIZ)V

    :cond_0
    return-void
.end method
