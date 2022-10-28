.class Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;
.super Landroid/database/ContentObserver;
.source "DualWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/DualWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field private final DUAL_WIFI_SYSTEM_MODE_URI:Landroid/net/Uri;

.field private final ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V
    .locals 1

    .line 1172
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    .line 1173
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "dual_wifi_enabled_systemmode"

    .line 1168
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->DUAL_WIFI_SYSTEM_MODE_URI:Landroid/net/Uri;

    const-string p1, "dual_wifi_enabled_settings"

    .line 1170
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1189
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1190
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->DUAL_WIFI_SYSTEM_MODE_URI:Landroid/net/Uri;

    .line 1191
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1192
    :cond_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiSettings;->access$700(Lcom/android/settings/dualwifi/DualWifiSettings;)V

    :cond_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 3

    .line 1177
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1178
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 1179
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->DUAL_WIFI_SYSTEM_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1180
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->DUAL_WIFI_SYSTEM_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/dualwifi/DualWifiSettings$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    .line 1184
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
