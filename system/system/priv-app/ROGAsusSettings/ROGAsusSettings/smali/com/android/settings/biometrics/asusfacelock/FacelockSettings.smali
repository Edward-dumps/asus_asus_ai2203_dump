.class public Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;
.super Lcom/android/settings/SubSettings;
.source "FacelockSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;,
        Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$DockBroadcastReceiver;
    }
.end annotation


# instance fields
.field private mDockBroadcastReceiver:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$DockBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected dockingRefresh()V
    .locals 0

    return-void
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 2

    .line 60
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 61
    const-class p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, ":settings:show_fragment"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 0

    .line 67
    const-class p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$FaceLockSettingsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    sget p1, Lcom/android/settings/R$string;->security_settings_facelock_preference_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SettingsBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;->mDockBroadcastReceiver:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$DockBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/SettingsBaseActivity;->onDestroy()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 80
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;->mDockBroadcastReceiver:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$DockBroadcastReceiver;

    if-nez v0, :cond_0

    .line 82
    new-instance v0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$DockBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$DockBroadcastReceiver;-><init>(Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;->mDockBroadcastReceiver:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$DockBroadcastReceiver;

    .line 84
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.DOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lcom/android/settings/biometrics/asusfacelock/FacelockSettings;->mDockBroadcastReceiver:Lcom/android/settings/biometrics/asusfacelock/FacelockSettings$DockBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
