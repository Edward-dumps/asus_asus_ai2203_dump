.class public Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "FacelockSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoveDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 451
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;)V
    .locals 0

    .line 451
    invoke-direct {p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;->removeUserFace()V

    return-void
.end method

.method private removeUserFace()V
    .locals 2

    .line 509
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 510
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    .line 511
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    .line 512
    invoke-static {}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;->access$100()Lcom/asus/faceunlockservice/IFaceUnlockService;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Lcom/asus/faceunlockservice/IFaceUnlockService;->removeActiveUser(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 515
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 455
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v0, Lcom/android/settings/R$string;->face_data_remove_title:I

    .line 456
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$layout;->facelock_remove_face_dialog:I

    .line 457
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->face_data_remove_yes:I

    new-instance v1, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;)V

    .line 458
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->face_register_finish_cancel_button:I

    new-instance v1, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$1;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;)V

    .line 489
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 498
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 500
    invoke-static {}, Lcom/android/settingslib/widget/ThemeUtils;->isDownloadTheme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/settings/theme/ThemeUtils;->tintDialog(Landroid/app/Dialog;Landroid/content/Context;)V

    :cond_0
    return-object p1
.end method
