.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AsusFingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->animateRedDot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

.field final synthetic val$progress:I


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;I)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    iput p2, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$6;->val$progress:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 401
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$6;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    iget p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$6;->val$progress:I

    add-int/lit8 p0, p0, 0x15

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$800(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;I)V

    return-void
.end method
