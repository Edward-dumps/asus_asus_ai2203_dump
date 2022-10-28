.class Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;
.super Landroid/database/ContentObserver;
.source "DualWifiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/DualWifiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingObserver"
.end annotation


# instance fields
.field private final BACKGROUND_SYNC_ENABLED_GAMEGENIE_URI:Landroid/net/Uri;

.field private final BACKGROUND_SYNC_ENABLED_URI:Landroid/net/Uri;

.field private final BACKGROUND_SYNC_ENABLED_XMODE_URI:Landroid/net/Uri;

.field private final DUAL_WIFI_SYSTEM_MODE:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/settings/dualwifi/DualWifiReceiver;


# direct methods
.method public constructor <init>(Lcom/android/settings/dualwifi/DualWifiReceiver;)V
    .locals 1

    .line 548
    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiReceiver;

    .line 549
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "dual_wifi_enabled_systemmode"

    .line 540
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->DUAL_WIFI_SYSTEM_MODE:Landroid/net/Uri;

    const-string p1, "auto_background_sync_settings"

    .line 542
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->BACKGROUND_SYNC_ENABLED_URI:Landroid/net/Uri;

    const-string p1, "auto_background_sync_gamegenie"

    .line 544
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->BACKGROUND_SYNC_ENABLED_GAMEGENIE_URI:Landroid/net/Uri;

    const-string p1, "auto_background_sync_systemmode"

    .line 546
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->BACKGROUND_SYNC_ENABLED_XMODE_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 6

    .line 572
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 573
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->DUAL_WIFI_SYSTEM_MODE:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "DualWifiReceiver"

    if-eqz p1, :cond_6

    .line 575
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$500()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x0

    const-string v1, "dual_wifi_enabled_settings"

    invoke-static {p1, v1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 578
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x1000000

    .line 579
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 581
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$500()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/dualwifi/DualWifiUtils;->getSystemModeValue(Landroid/content/Context;)I

    move-result v1

    const-string v2, "com.asus.settings.dualwifi.action.DISABLE_WIFI"

    if-eqz v1, :cond_2

    const-string v3, "com.asus.settings.dualwifi.action.ENABLE_WIFI"

    const/4 v4, 0x1

    if-eq v1, v4, :cond_1

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Previous system mode:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$600()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", settings: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$600()I

    move-result v1

    if-eq v1, p1, :cond_3

    if-ne p1, v4, :cond_0

    .line 595
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 597
    :cond_0
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string p1, "Change system mode to 1"

    .line 583
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    const-string p1, "Change system mode to 0"

    .line 587
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiReceiver;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$700(Lcom/android/settings/dualwifi/DualWifiReceiver;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 604
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 605
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$500()Landroid/content/Context;

    move-result-object p0

    const-string p1, "com.asus.settings.permission.ENABLE_DISABLE_DUAL_WIFI"

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string p0, "Action is null"

    .line 607
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string p0, "Hotspot is enabled, skip"

    .line 610
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    :goto_1
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$500()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiUtils;->getSystemModeValue(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$602(I)I

    goto :goto_2

    .line 613
    :cond_6
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->BACKGROUND_SYNC_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->BACKGROUND_SYNC_ENABLED_GAMEGENIE_URI:Landroid/net/Uri;

    .line 614
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->BACKGROUND_SYNC_ENABLED_XMODE_URI:Landroid/net/Uri;

    .line 615
    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 616
    :cond_7
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiReceiver;

    invoke-static {p1}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$800(Lcom/android/settings/dualwifi/DualWifiReceiver;)Z

    move-result p1

    .line 617
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiReceiver;

    invoke-static {p2}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$900(Lcom/android/settings/dualwifi/DualWifiReceiver;)Z

    move-result p2

    if-eq p2, p1, :cond_8

    .line 618
    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiReceiver;

    invoke-static {p2, p1}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$902(Lcom/android/settings/dualwifi/DualWifiReceiver;Z)Z

    .line 619
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "auto background sync enable: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiReceiver;

    invoke-static {p2}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$900(Lcom/android/settings/dualwifi/DualWifiReceiver;)Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->this$0:Lcom/android/settings/dualwifi/DualWifiReceiver;

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$900(Lcom/android/settings/dualwifi/DualWifiReceiver;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$1000(Lcom/android/settings/dualwifi/DualWifiReceiver;Z)V

    :cond_8
    :goto_2
    return-void
.end method

.method public register(Landroid/content/ContentResolver;)V
    .locals 3

    .line 553
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->DUAL_WIFI_SYSTEM_MODE:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 554
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->DUAL_WIFI_SYSTEM_MODE:Landroid/net/Uri;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 556
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->BACKGROUND_SYNC_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->BACKGROUND_SYNC_ENABLED_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 559
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->BACKGROUND_SYNC_ENABLED_GAMEGENIE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 560
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->BACKGROUND_SYNC_ENABLED_GAMEGENIE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, v0}, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    .line 562
    iget-object v0, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->BACKGROUND_SYNC_ENABLED_XMODE_URI:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 563
    iget-object p1, p0, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->BACKGROUND_SYNC_ENABLED_XMODE_URI:Landroid/net/Uri;

    invoke-virtual {p0, v2, p1}, Lcom/android/settings/dualwifi/DualWifiReceiver$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    return-void
.end method
