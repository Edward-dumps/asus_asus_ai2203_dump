.class public Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$FingerprintErrorDialog;
.super Lcom/android/settings/biometrics/BiometricErrorDialog;
.source "AsusFingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FingerprintErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 844
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricErrorDialog;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$FingerprintErrorDialog;
    .locals 3

    .line 846
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$FingerprintErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$FingerprintErrorDialog;-><init>()V

    .line 847
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "error_msg"

    .line 848
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "error_id"

    .line 849
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 850
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x239

    return p0
.end method

.method public getOkButtonTextResId()I
    .locals 0

    .line 866
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_dialog_ok:I

    return p0
.end method

.method public getTitleResId()I
    .locals 0

    .line 861
    sget p0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_error_dialog_title:I

    return p0
.end method

.method public onStart()V
    .locals 1

    .line 871
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStart()V

    .line 872
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateDialogSize(Landroid/app/Dialog;Landroid/content/Context;)V

    return-void
.end method
