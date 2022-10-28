.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/NetworkRequestEntry;
.super Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;
.source "NetworkRequestEntry.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 29
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$StandardDualWifiEntryKey;Lasus/net/vicewifi/WifiViceManager;Landroid/net/wifi/WifiNetworkScoreCache;Z)V

    return-void
.end method


# virtual methods
.method public canConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canForget()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetMeteredChoice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetPrivacy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canShare()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public connect(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;)V
    .locals 0

    return-void
.end method

.method public forget(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ForgetCallback;)V
    .locals 0

    return-void
.end method

.method public getMeteredChoice()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getPrivacy()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isMetered()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubscription()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuggestion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setAutoJoinEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setMeteredChoice(I)V
    .locals 0

    return-void
.end method

.method public setPrivacy(I)V
    .locals 0

    return-void
.end method
