.class public interface abstract Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NetworkRequestMatchCallback"
.end annotation


# virtual methods
.method public onAbort()V
    .locals 0

    return-void
.end method

.method public onMatch(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V
    .locals 0

    return-void
.end method

.method public onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    return-void
.end method

.method public onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    return-void
.end method
