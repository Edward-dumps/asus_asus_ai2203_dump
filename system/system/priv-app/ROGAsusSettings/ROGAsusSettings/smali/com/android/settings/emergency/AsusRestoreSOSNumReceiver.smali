.class public Lcom/android/settings/emergency/AsusRestoreSOSNumReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AsusRestoreSOSNumReceiver.java"


# instance fields
.field private mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "AsusRestoreSOSNumReceiver"

    const-string v1, "Receive request to restore SOS"

    .line 33
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.asus.emergencyhelp.RESTORE_SOS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 38
    :cond_0
    new-instance v1, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-direct {v1, p1}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/emergency/AsusRestoreSOSNumReceiver;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    const/4 v1, 0x0

    const-string v2, "safeguard_enable"

    .line 39
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "safeguard_number"

    .line 40
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz v1, :cond_2

    const-string v1, "safeguard touced by user before upgrade!"

    .line 42
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "asus_sos_touched_by_user"

    const/4 v2, 0x1

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 44
    iget-object p1, p0, Lcom/android/settings/emergency/AsusRestoreSOSNumReceiver;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-virtual {p1, v2}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->setEmergencyGestureEnabled(Z)V

    .line 45
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "safeguard enable! status : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/emergency/AsusRestoreSOSNumReceiver;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-virtual {v1}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->getEmergencyGestureEnabled()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "config number:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object p0, p0, Lcom/android/settings/emergency/AsusRestoreSOSNumReceiver;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    invoke-virtual {p0, p2}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->setEmergencyNumberOverride(Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :cond_1
    iget-object p0, p0, Lcom/android/settings/emergency/AsusRestoreSOSNumReceiver;->mEmergencyNumberUtils:Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;

    .line 51
    invoke-virtual {p0}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->getDefaultPoliceNumber()Ljava/lang/String;

    move-result-object p1

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/settingslib/emergencynumber/EmergencyNumberUtils;->setEmergencyNumberOverride(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p0, "safeguard not touched by user yet!"

    .line 55
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
