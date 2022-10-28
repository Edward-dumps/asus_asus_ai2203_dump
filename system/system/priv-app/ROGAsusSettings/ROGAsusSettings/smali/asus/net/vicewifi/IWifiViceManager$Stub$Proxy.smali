.class Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "IWifiViceManager.java"

# interfaces
.implements Lasus/net/vicewifi/IWifiViceManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasus/net/vicewifi/IWifiViceManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lasus/net/vicewifi/IWifiViceManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 1524
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1525
    iput-object p1, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1739
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1740
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 1743
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 1745
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1746
    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 1749
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1751
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1752
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1754
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1755
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1758
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1759
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 1762
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1763
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1764
    throw p0
.end method

.method public allowAutojoin(IZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3664
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 3667
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3668
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3669
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3670
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3672
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3673
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->allowAutojoin(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3677
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3680
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3681
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3682
    throw p0
.end method

.method public allowAutojoinPasspoint(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3686
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3687
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 3689
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3690
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3691
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3692
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5d

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3694
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3695
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->allowAutojoinPasspoint(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3699
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3704
    throw p0
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 1529
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public calculateSignalLevel(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3489
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3490
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 3493
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3494
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3495
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x54

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3497
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3498
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lasus/net/vicewifi/IWifiViceManager;->calculateSignalLevel(I)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 3501
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3502
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 3505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3507
    throw p0
.end method

.method public connect(Landroid/net/wifi/WifiConfiguration;ILandroid/os/IBinder;Landroid/net/wifi/IActionListener;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "asus.net.vicewifi.IWifiViceManager"

    .line 3373
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3375
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3376
    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3379
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3381
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3382
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p4, :cond_1

    .line 3383
    invoke-interface {p4}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3384
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3385
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    invoke-interface {p0, v3, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 3387
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3388
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object v1

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lasus/net/vicewifi/IWifiViceManager;->connect(Landroid/net/wifi/WifiConfiguration;ILandroid/os/IBinder;Landroid/net/wifi/IActionListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3394
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3395
    throw p0
.end method

.method public disableEphemeralNetwork(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2619
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 2622
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2623
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2624
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2625
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2627
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2628
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->disableEphemeralNetwork(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2632
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2636
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2637
    throw p0
.end method

.method public disconnect(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2057
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2058
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 2061
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2062
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2063
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2065
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2066
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lasus/net/vicewifi/IWifiViceManager;->disconnect(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 2069
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2070
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 2073
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 2073
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2074
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2075
    throw p0
.end method

.method public enableNetwork(IZLjava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1960
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1961
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 1964
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1965
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 1966
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1967
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1968
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 1970
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1971
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lasus/net/vicewifi/IWifiViceManager;->enableNetwork(IZLjava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 1974
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1975
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 1978
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 1978
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1979
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1980
    throw p0
.end method

.method public factoryReset(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2641
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2642
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 2644
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2645
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2646
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2648
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2649
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lasus/net/vicewifi/IWifiViceManager;->factoryReset(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 2653
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 2656
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2657
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2658
    throw p0
.end method

.method public forget(ILandroid/os/IBinder;Landroid/net/wifi/IActionListener;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "asus.net.vicewifi.IWifiViceManager"

    .line 3428
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3429
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3430
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    .line 3431
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3432
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3433
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x51

    const/4 v3, 0x1

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3435
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3436
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lasus/net/vicewifi/IWifiViceManager;->forget(ILandroid/os/IBinder;Landroid/net/wifi/IActionListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3442
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3443
    throw p0
.end method

.method public getConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1610
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 1613
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1614
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1615
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1616
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1618
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1619
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->getConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1622
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1623
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 1624
    sget-object p0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ParceledListSlice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 1631
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1631
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1632
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1633
    throw p0
.end method

.method public getConnectionInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2127
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 2130
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2131
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2132
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2133
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2135
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2136
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->getConnectionInfo(Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/WifiInfo;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 2139
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2140
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 2141
    sget-object p0, Landroid/net/wifi/WifiInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 2148
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2148
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2149
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2150
    throw p0
.end method

.method public getCurrentNetwork()Landroid/net/Network;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 2666
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2667
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2669
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2670
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0}, Lasus/net/vicewifi/IWifiViceManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 2673
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2674
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 2675
    sget-object p0, Landroid/net/Network;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Network;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 2682
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2682
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2683
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2684
    throw p0
.end method

.method public getFactoryMacAddresses()[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 3219
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3220
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x48

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3222
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3223
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0}, Lasus/net/vicewifi/IWifiViceManager;->getFactoryMacAddresses()[Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 3226
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3227
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 3230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3232
    throw p0
.end method

.method public getPrivilegedConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1638
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 1642
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1643
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1644
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1645
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1647
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1648
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->getPrivilegedConfiguredNetworks(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 1651
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1652
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 1653
    sget-object p0, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ParceledListSlice;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 1660
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 1660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1662
    throw p0
.end method

.method public getScanResults(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2033
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2034
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 2037
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2038
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2039
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2040
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2042
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2043
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->getScanResults(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 2046
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2047
    sget-object p0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 2050
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2051
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2052
    throw p0
.end method

.method public getSupportedFeatures()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1538
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 1541
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1542
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 1544
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1545
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0}, Lasus/net/vicewifi/IWifiViceManager;->getSupportedFeatures()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    .line 1548
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1549
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-wide v2

    :catchall_0
    move-exception p0

    .line 1552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1554
    throw p0
.end method

.method public getVerboseLoggingLevel()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2576
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2577
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 2580
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2581
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2583
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2584
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0}, Lasus/net/vicewifi/IWifiViceManager;->getVerboseLoggingLevel()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 2587
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2588
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2593
    throw p0
.end method

.method public getWifiEnabledState()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2180
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 2183
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2184
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2186
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2187
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0}, Lasus/net/vicewifi/IWifiViceManager;->getWifiEnabledState()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 2190
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2191
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    :catchall_0
    move-exception p0

    .line 2194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2196
    throw p0
.end method

.method public isVht8ssCapableDevice()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3598
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3599
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 3602
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3603
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x59

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3605
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3606
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0}, Lasus/net/vicewifi/IWifiViceManager;->isVht8ssCapableDevice()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 3609
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3610
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 3613
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 3613
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3614
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3615
    throw p0
.end method

.method public isWifiStandardSupported(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3796
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3797
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 3800
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3801
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3802
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x62

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3804
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3805
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lasus/net/vicewifi/IWifiViceManager;->isWifiStandardSupported(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 3808
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3809
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 3812
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 3812
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3814
    throw p0
.end method

.method public save(Landroid/net/wifi/WifiConfiguration;Landroid/os/IBinder;Landroid/net/wifi/IActionListener;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3399
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "asus.net.vicewifi.IWifiViceManager"

    .line 3401
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 3403
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3404
    invoke-virtual {p1, v0, v2}, Landroid/net/wifi/WifiConfiguration;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 3407
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3409
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    const/4 v2, 0x0

    if-eqz p3, :cond_1

    .line 3410
    invoke-interface {p3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3411
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3412
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x50

    invoke-interface {p0, v3, v0, v2, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_2

    .line 3414
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 3415
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lasus/net/vicewifi/IWifiViceManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/os/IBinder;Landroid/net/wifi/IActionListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3421
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3422
    throw p0
.end method

.method public setMacRandomizationSettingPasspointEnabled(Ljava/lang/String;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3708
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 3711
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3713
    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3714
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5e

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 3716
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 3717
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->setMacRandomizationSettingPasspointEnabled(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3721
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3724
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3726
    throw p0
.end method

.method public setPasspointMeteredOverride(Ljava/lang/String;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3730
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3731
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 3733
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3734
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3735
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3736
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x5f

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3738
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 3739
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->setPasspointMeteredOverride(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 3743
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 3746
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3747
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3748
    throw p0
.end method

.method public setWifiEnabled(Ljava/lang/String;Z)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 2159
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2160
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    move v4, v2

    goto :goto_0

    :cond_0
    move v4, v3

    .line 2161
    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2162
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1a

    invoke-interface {p0, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 2164
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2165
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->setWifiEnabled(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 2168
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2169
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    .line 2172
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v2

    :catchall_0
    move-exception p0

    .line 2172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2174
    throw p0
.end method

.method public startScan(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2009
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2010
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "asus.net.vicewifi.IWifiViceManager"

    .line 2013
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2014
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2015
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2016
    iget-object p0, p0, Lasus/net/vicewifi/IWifiViceManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 2018
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2019
    invoke-static {}, Lasus/net/vicewifi/IWifiViceManager$Stub;->getDefaultImpl()Lasus/net/vicewifi/IWifiViceManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lasus/net/vicewifi/IWifiViceManager;->startScan(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return p0

    .line 2022
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2023
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p0, :cond_1

    const/4 v3, 0x1

    .line 2026
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v3

    :catchall_0
    move-exception p0

    .line 2026
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2027
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2028
    throw p0
.end method
