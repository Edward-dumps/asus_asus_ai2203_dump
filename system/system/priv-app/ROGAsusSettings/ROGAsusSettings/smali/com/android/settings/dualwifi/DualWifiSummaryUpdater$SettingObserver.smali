.class Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;
.super Landroid/database/ContentObserver;
.source "DualWifiSummaryUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field private final DUAL_WIFI_SYSTEM_MODE:Landroid/net/Uri;

.field private final ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;


# direct methods
.method public constructor <init>(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V
    .locals 1

    .line 133
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    .line 134
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "dual_wifi_enabled_systemmode"

    .line 129
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->DUAL_WIFI_SYSTEM_MODE:Landroid/net/Uri;

    const-string p1, "dual_wifi_enabled_settings"

    .line 131
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 150
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->DUAL_WIFI_SYSTEM_MODE:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 152
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->access$300(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V

    goto :goto_0

    .line 153
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 154
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;->access$400(Lcom/android/settings/dualwifi/DualWifiSummaryUpdater;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->DUAL_WIFI_SYSTEM_MODE:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->DUAL_WIFI_SYSTEM_MODE:Landroid/net/Uri;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 141
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/dualwifi/DualWifiSummaryUpdater$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    .line 145
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
