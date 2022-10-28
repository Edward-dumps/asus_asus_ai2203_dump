.class Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;
.super Landroid/database/ContentObserver;
.source "DualWifiEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/DualWifiEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field private final DUAL_WIFI_SYSTEM_MODE_URI:Landroid/net/Uri;

.field private final ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiEnabler;


# direct methods
.method public constructor <init>(Lcom/android/settings/dualwifi/DualWifiEnabler;)V
    .locals 1

    .line 188
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiEnabler;

    .line 189
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "dual_wifi_enabled_settings"

    .line 184
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

    const-string p1, "dual_wifi_enabled_systemmode"

    .line 186
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->DUAL_WIFI_SYSTEM_MODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 205
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 206
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 207
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiEnabler;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->access$400(Lcom/android/settings/dualwifi/DualWifiEnabler;)V

    goto :goto_1

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->DUAL_WIFI_SYSTEM_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 209
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiEnabler;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiEnabler;->access$500(Lcom/android/settings/dualwifi/DualWifiEnabler;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/dualwifi/DualWifiUtils;->isSystemMode(Landroid/content/Context;)Z

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/dualwifi/DualWifiEnabler;->access$002(Lcom/android/settings/dualwifi/DualWifiEnabler;Z)Z

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Detect system mode change: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiEnabler;

    invoke-static {p2}, Lcom/android/settings/dualwifi/DualWifiEnabler;->access$000(Lcom/android/settings/dualwifi/DualWifiEnabler;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DualWifiEnabler"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiEnabler;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiEnabler;->access$000(Lcom/android/settings/dualwifi/DualWifiEnabler;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 212
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiEnabler;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiEnabler;->access$100(Lcom/android/settings/dualwifi/DualWifiEnabler;)Landroid/net/wifi/WifiManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/dualwifi/DualWifiEnabler;->access$200(Lcom/android/settings/dualwifi/DualWifiEnabler;I)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiEnabler;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiEnabler;->access$300(Lcom/android/settings/dualwifi/DualWifiEnabler;)Lcom/android/settings/widget/SwitchWidgetController;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 216
    :goto_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiEnabler;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiEnabler;->access$400(Lcom/android/settings/dualwifi/DualWifiEnabler;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->ENABLE_DUAL_WIFI_SETTINGS_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->DUAL_WIFI_SYSTEM_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 196
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->DUAL_WIFI_SYSTEM_MODE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/dualwifi/DualWifiEnabler$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method

.method public unregister(Landroid/content/ContentResolver;)V
    .locals 0

    .line 200
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
