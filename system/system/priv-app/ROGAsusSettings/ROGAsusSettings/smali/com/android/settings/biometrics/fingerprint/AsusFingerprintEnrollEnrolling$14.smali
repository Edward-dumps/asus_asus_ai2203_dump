.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$14;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "AsusFingerprintEnrollEnrolling.java"


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

    .line 711
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$14;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 714
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$14;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$1500(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 719
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$14;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$300(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    move-result-object p1

    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$14$1;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$14$1;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$14;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
