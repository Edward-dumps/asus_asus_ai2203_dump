.class public Lcom/android/settings/DrawPermissionDialog;
.super Landroidx/appcompat/app/AlertDialog;
.source "DrawPermissionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DrawPermissionDialog$DrawPermissionDialogListener;
    }
.end annotation


# instance fields
.field private mClickFlag:Z

.field private final mContext:Landroid/content/Context;

.field private final mListener:Lcom/android/settings/DrawPermissionDialog$DrawPermissionDialogListener;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/DrawPermissionDialog$DrawPermissionDialogListener;Ljava/lang/String;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertDialog;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    .line 33
    iput-object v0, p0, Lcom/android/settings/DrawPermissionDialog;->mTitle:Ljava/lang/String;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/android/settings/DrawPermissionDialog;->mClickFlag:Z

    .line 39
    iput-object p1, p0, Lcom/android/settings/DrawPermissionDialog;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/android/settings/DrawPermissionDialog;->mListener:Lcom/android/settings/DrawPermissionDialog$DrawPermissionDialogListener;

    .line 41
    iput-object p3, p0, Lcom/android/settings/DrawPermissionDialog;->mTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/settings/DrawPermissionDialog;->mClickFlag:Z

    if-nez v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/DrawPermissionDialog;->mListener:Lcom/android/settings/DrawPermissionDialog$DrawPermissionDialogListener;

    invoke-interface {v0}, Lcom/android/settings/DrawPermissionDialog$DrawPermissionDialogListener;->onNotNow()V

    .line 77
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x2

    const/4 v0, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/android/settings/DrawPermissionDialog;->mListener:Lcom/android/settings/DrawPermissionDialog$DrawPermissionDialogListener;

    invoke-interface {p1}, Lcom/android/settings/DrawPermissionDialog$DrawPermissionDialogListener;->onTurnOn()V

    .line 61
    iput-boolean v0, p0, Lcom/android/settings/DrawPermissionDialog;->mClickFlag:Z

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/DrawPermissionDialog;->dismiss()V

    goto :goto_0

    .line 65
    :cond_1
    iget-object p1, p0, Lcom/android/settings/DrawPermissionDialog;->mListener:Lcom/android/settings/DrawPermissionDialog$DrawPermissionDialogListener;

    invoke-interface {p1}, Lcom/android/settings/DrawPermissionDialog$DrawPermissionDialogListener;->onNotNow()V

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/DrawPermissionDialog;->mClickFlag:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/DrawPermissionDialog;->dismiss()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 46
    iget-object v0, p0, Lcom/android/settings/DrawPermissionDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->permission_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/DrawPermissionDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->permission_dialog_message:I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/DrawPermissionDialog;->mTitle:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v0, p0, Lcom/android/settings/DrawPermissionDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->permission_dialog_ok:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 49
    iget-object v0, p0, Lcom/android/settings/DrawPermissionDialog;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->permission_dialog_cancel:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x2

    invoke-virtual {p0, v1, v0, p0}, Landroidx/appcompat/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 50
    invoke-super {p0, p1}, Landroidx/appcompat/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x7d3

    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 53
    invoke-virtual {p0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void
.end method
