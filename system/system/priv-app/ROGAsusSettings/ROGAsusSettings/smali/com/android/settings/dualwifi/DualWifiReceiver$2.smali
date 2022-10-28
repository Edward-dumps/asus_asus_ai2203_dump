.class Lcom/android/settings/dualwifi/DualWifiReceiver$2;
.super Landroid/media/MediaRouter$SimpleCallback;
.source "DualWifiReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/DualWifiReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 469
    invoke-direct {p0}, Landroid/media/MediaRouter$SimpleCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 484
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$400()Z

    move-result p0

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$302(Z)Z

    .line 485
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onRouteAdded, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$300()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DualWifiReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRouteChanged(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 496
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$400()Z

    move-result p0

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$302(Z)Z

    .line 497
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onRouteChanged, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$300()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DualWifiReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRouteRemoved(Landroid/media/MediaRouter;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 490
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$400()Z

    move-result p0

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$302(Z)Z

    .line 491
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onRouteRemoved, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$300()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DualWifiReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRouteSelected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 472
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$400()Z

    move-result p0

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$302(Z)Z

    .line 473
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onRouteSelected, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$300()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DualWifiReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onRouteUnselected(Landroid/media/MediaRouter;ILandroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 478
    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$400()Z

    move-result p0

    invoke-static {p0}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$302(Z)Z

    .line 479
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onRouteUnselected, "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settings/dualwifi/DualWifiReceiver;->access$300()Z

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DualWifiReceiver"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
