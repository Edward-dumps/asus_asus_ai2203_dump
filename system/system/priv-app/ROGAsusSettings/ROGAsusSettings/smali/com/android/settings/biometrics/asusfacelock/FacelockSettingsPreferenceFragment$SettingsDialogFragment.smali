.class public Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "FacelockSettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# instance fields
.field private mDialogId:I

.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 540
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 600
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 601
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz p0, :cond_0

    .line 602
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    const-string v1, "key_dialog_id"

    .line 575
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 576
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    const/4 v0, -0x1

    const-string v1, "key_parent_fragment_id"

    .line 577
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 578
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    .line 579
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/settings/DialogCreatable;

    if-nez v1, :cond_2

    .line 582
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 583
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_1

    .line 584
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 585
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " must implement "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p0, Lcom/android/settings/DialogCreatable;

    .line 587
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_2
    instance-of p1, v0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    if-eqz p1, :cond_3

    .line 592
    check-cast v0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    invoke-static {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->access$202(Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;

    .line 595
    :cond_3
    iget-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    check-cast p1, Lcom/android/settings/DialogCreatable;

    iget p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-interface {p1, p0}, Lcom/android/settings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p0

    return-object p0
.end method

.method public onDetach()V
    .locals 2

    .line 620
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDetach()V

    .line 623
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    instance-of v1, v0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    if-eqz v1, :cond_0

    .line 625
    check-cast v0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->access$200(Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;)Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 626
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    check-cast p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->access$202(Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;

    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 608
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 609
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p0, :cond_0

    .line 610
    invoke-interface {p0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 556
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 558
    iget v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    const-string v1, "key_dialog_id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getId()I

    move-result p0

    const-string v0, "key_parent_fragment_id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 565
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 567
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroidx/fragment/app/Fragment;

    if-eqz p0, :cond_0

    instance-of v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 568
    check-cast p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettingsPreferenceFragment;->onDialogShowing()V

    :cond_0
    return-void
.end method
