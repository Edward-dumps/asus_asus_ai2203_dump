.class public Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$IconTouchDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AsusFingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconTouchDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 754
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x238

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 758
    new-instance p1, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 759
    sget v0, Lcom/android/settings/R$string;->asus_fingerprint_not_sensor_dialog_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->asus_fingerprint_not_sensor_dialog_message:I

    .line 760
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_dialog_ok:I

    new-instance v2, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$IconTouchDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$IconTouchDialog$1;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$IconTouchDialog;)V

    .line 761
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 768
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 769
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/widget/ThemeUtils;->isClassicZenUITheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/theme/ThemeUtils;->tintDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    :cond_0
    return-object p1
.end method

.method public onStart()V
    .locals 1

    .line 782
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStart()V

    .line 783
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateDialogSize(Landroid/app/Dialog;Landroid/content/Context;)V

    return-void
.end method
