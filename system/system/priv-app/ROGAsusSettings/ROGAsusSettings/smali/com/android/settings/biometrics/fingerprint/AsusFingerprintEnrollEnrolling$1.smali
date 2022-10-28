.class Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$1;
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

    .line 197
    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 200
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-nez p1, :cond_1

    .line 201
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$008(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)I

    .line 202
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$000(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)I

    move-result p1

    if-ne p1, v1, :cond_0

    .line 203
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$100(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$300(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$200(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Ljava/lang/Runnable;

    move-result-object p0

    const-wide/16 v1, 0x1f4

    invoke-virtual {p1, p0, v1, v2}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 208
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-eq p1, v1, :cond_2

    .line 209
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_3

    .line 210
    :cond_2
    iget-object p1, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$300(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Lcom/android/settings/biometrics/fingerprint/AsusFingerprintImage;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$1;->this$0:Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;

    invoke-static {p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->access$200(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return v0
.end method
