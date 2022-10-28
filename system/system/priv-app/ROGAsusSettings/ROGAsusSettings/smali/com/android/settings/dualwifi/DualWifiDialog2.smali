.class public Lcom/android/settings/dualwifi/DualWifiDialog2;
.super Landroidx/appcompat/app/AlertDialog;
.source "DualWifiDialog2.java"

# interfaces
.implements Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;
    }
.end annotation


# instance fields
.field private mController:Lcom/android/settings/dualwifi/DualWifiConfigController2;

.field private final mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

.field private mHideSubmitButton:Z

.field private final mListener:Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;

.field private final mMode:I

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;IIZ)V
    .locals 0

    .line 81
    invoke-direct {p0, p1, p5}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 82
    iput p4, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mMode:I

    .line 83
    iput-object p2, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mListener:Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;

    .line 84
    iput-object p3, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 85
    iput-boolean p6, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mHideSubmitButton:Z

    return-void
.end method

.method public static createModal(Landroid/content/Context;Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)Lcom/android/settings/dualwifi/DualWifiDialog2;
    .locals 8

    .line 65
    new-instance v7, Lcom/android/settings/dualwifi/DualWifiDialog2;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/dualwifi/DualWifiDialog2;-><init>(Landroid/content/Context;Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;IIZ)V

    return-object v7
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mListener:Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {v0, p0}, Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;->onSubmit(Lcom/android/settings/dualwifi/DualWifiDialog2;)V

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public getController()Lcom/android/settings/dualwifi/DualWifiConfigController2;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mController:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    return-object p0
.end method

.method public getDualWifiEntry()Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    return-object p0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x3

    .line 159
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public getMode()I
    .locals 0

    .line 149
    iget p0, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mMode:I

    return p0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    const/4 v0, -0x1

    .line 154
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 129
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mListener:Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;

    if-eqz p1, :cond_3

    const/4 v0, -0x3

    if-eq p2, v0, :cond_1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;->onSubmit(Lcom/android/settings/dualwifi/DualWifiDialog2;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    .line 136
    invoke-virtual {p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 135
    invoke-static {p1, p2}, Lcom/android/settings/dualwifi/DualWifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 137
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 138
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    .line 137
    invoke-static {p1, p0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void

    .line 141
    :cond_2
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mListener:Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;

    invoke-interface {p1, p0}, Lcom/android/settings/dualwifi/DualWifiDialog2$DualWifiDialog2Listener;->onForget(Lcom/android/settings/dualwifi/DualWifiDialog2;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 95
    invoke-virtual {p0}, Landroid/app/Dialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->wifi_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mView:Landroid/view/View;

    .line 96
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 97
    new-instance v0, Lcom/android/settings/dualwifi/DualWifiConfigController2;

    iget-object v1, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iget v3, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mMode:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/dualwifi/DualWifiConfigController2;-><init>(Lcom/android/settings/dualwifi/DualWifiConfigUiBase2;Landroid/view/View;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;I)V

    iput-object v0, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mController:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    .line 98
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 100
    iget-boolean p1, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mHideSubmitButton:Z

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mController:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->hideSubmitButton()V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mController:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->enableSubmitIfAppropriate()V

    .line 108
    :goto_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mDualWifiEntry:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    if-nez p1, :cond_1

    .line 109
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mController:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->hideForgetButton()V

    :cond_1
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 115
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 116
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiDialog2;->mController:Lcom/android/settings/dualwifi/DualWifiConfigController2;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/DualWifiConfigController2;->updatePassword()V

    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x2

    .line 179
    invoke-virtual {p0, v0, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x3

    .line 174
    invoke-virtual {p0, v0, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, -0x1

    .line 169
    invoke-virtual {p0, v0, p1, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
