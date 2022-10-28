.class Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;
.super Ljava/lang/Object;
.source "FacelockSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;)V
    .locals 0

    .line 459
    iput-object p1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 462
    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "temp_face_count"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 464
    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;

    invoke-static {p2}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;->access$300(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;)V

    .line 466
    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "suggestion_complete_pref"

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p2

    const-string v0, "remove_face_count"

    .line 467
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 468
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    const/4 v2, 0x1

    invoke-interface {p2, v0, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 471
    :cond_0
    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "facelock_unlock_device"

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 473
    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "facelock_reveal_notify"

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 475
    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "facelock_secure_idle_check"

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 477
    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;

    .line 478
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "face_on_lock_screen_selection"

    .line 477
    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    .line 481
    iget-object p2, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 484
    :cond_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 485
    iget-object p0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog$2;->this$0:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment$RemoveDialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
