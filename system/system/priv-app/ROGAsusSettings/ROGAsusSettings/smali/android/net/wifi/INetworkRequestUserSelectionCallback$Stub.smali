.class public abstract Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub;
.super Landroid/os/Binder;
.source "INetworkRequestUserSelectionCallback.java"

# interfaces
.implements Landroid/net/wifi/INetworkRequestUserSelectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/INetworkRequestUserSelectionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/INetworkRequestUserSelectionCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "android.net.wifi.INetworkRequestUserSelectionCallback"

    .line 43
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    instance-of v1, v0, Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    if-eqz v1, :cond_1

    .line 45
    check-cast v0, Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Landroid/net/wifi/INetworkRequestUserSelectionCallback;
    .locals 1

    .line 165
    sget-object v0, Landroid/net/wifi/INetworkRequestUserSelectionCallback$Stub$Proxy;->sDefaultImpl:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    return-object v0
.end method
