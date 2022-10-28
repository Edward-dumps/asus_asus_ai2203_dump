.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$2;
.super Ljava/lang/Object;
.source "AsusFingerprintEnrollEnrolling.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->onCreate(Landroid/os/Bundle;)V
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

    .line 228
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 231
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 232
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 233
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$400(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;Z)V

    .line 234
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$2;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    const/4 p1, 0x2

    invoke-static {p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$502(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;I)I

    :cond_1
    return v0
.end method
