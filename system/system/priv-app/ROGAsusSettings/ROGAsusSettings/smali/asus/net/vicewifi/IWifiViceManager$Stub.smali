.class public abstract Lasus/net/vicewifi/IWifiViceManager$Stub;
.super Landroid/os/Binder;
.source "IWifiViceManager.java"

# interfaces
.implements Lasus/net/vicewifi/IWifiViceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasus/net/vicewifi/IWifiViceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lasus/net/vicewifi/IWifiViceManager;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "asus.net.vicewifi.IWifiViceManager"

    .line 395
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 396
    instance-of v1, v0, Lasus/net/vicewifi/IWifiViceManager;

    if-eqz v1, :cond_1

    .line 397
    check-cast v0, Lasus/net/vicewifi/IWifiViceManager;

    return-object v0

    .line 399
    :cond_1
    new-instance v0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;

    invoke-direct {v0, p0}, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;
    .locals 1

    .line 3953
    sget-object v0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->sDefaultImpl:Lasus/net/vicewifi/IWifiViceManager;

    return-object v0
.end method
