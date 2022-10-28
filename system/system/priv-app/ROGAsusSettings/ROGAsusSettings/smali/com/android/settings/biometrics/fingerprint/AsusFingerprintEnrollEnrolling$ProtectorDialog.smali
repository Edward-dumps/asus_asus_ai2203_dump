.class public Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AsusFingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProtectorDialog"
.end annotation


# instance fields
.field private mDontShow:Landroid/widget/CheckBox;

.field private mMessage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 787
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;)Landroid/widget/CheckBox;
    .locals 0

    .line 787
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;->mDontShow:Landroid/widget/CheckBox;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x238

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 794
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 795
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 796
    sget v1, Lcom/android/settings/R$layout;->asus_fingerprint_protector_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 797
    sget v3, Lcom/android/settings/R$id;->show_options:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    iput-object v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;->mDontShow:Landroid/widget/CheckBox;

    .line 798
    sget v3, Lcom/android/settings/R$id;->message:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;->mMessage:Landroid/widget/TextView;

    .line 800
    sget v3, Lcom/android/settings/R$layout;->asus_fingerprint_alert_dialog_title:I

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 801
    sget v2, Lcom/android/settings/R$id;->alert_title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 810
    sget v3, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_dialog_title:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 811
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 812
    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 813
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->asus_security_settings_fingerprint_enroll_dialog_button_ok:I

    new-instance v3, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog$1;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog$1;-><init>(Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling$ProtectorDialog;Landroid/content/Context;)V

    .line 814
    invoke-virtual {v0, v1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 824
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    .line 825
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 826
    invoke-static {p1}, Lcom/android/settingslib/widget/ThemeUtils;->isClassicZenUITheme(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 827
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/theme/ThemeUtils;->tintDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    :cond_0
    return-object v0
.end method

.method public onStart()V
    .locals 1

    .line 839
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onStart()V

    .line 840
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/settings/biometrics/fingerprint/AsusFingerprintEnrollEnrolling;->updateDialogSize(Landroid/app/Dialog;Landroid/content/Context;)V

    return-void
.end method
