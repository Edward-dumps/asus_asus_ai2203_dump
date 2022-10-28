.class Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;
.super Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProvisioningCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$DfK-buK-qMzfutLRuc_CbsPeJLo(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->lambda$onProvisioningStatus$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$QklsS7UdgG5F8dznevID8r4oG6U(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->lambda$onProvisioningFailure$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$kRtL_tQuEjJzDTUgM9yLDfZY6Yg(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->lambda$onProvisioningComplete$2()V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/hotspot2/ProvisioningCallback;)V
    .locals 0

    .line 6327
    invoke-direct {p0}, Landroid/net/wifi/hotspot2/IProvisioningCallback$Stub;-><init>()V

    .line 6328
    iput-object p1, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 6329
    iput-object p2, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    return-void
.end method

.method private synthetic lambda$onProvisioningComplete$2()V
    .locals 0

    .line 6344
    iget-object p0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    invoke-virtual {p0}, Landroid/net/wifi/hotspot2/ProvisioningCallback;->onProvisioningComplete()V

    return-void
.end method

.method private synthetic lambda$onProvisioningFailure$1(I)V
    .locals 0

    .line 6339
    iget-object p0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/ProvisioningCallback;->onProvisioningFailure(I)V

    return-void
.end method

.method private synthetic lambda$onProvisioningStatus$0(I)V
    .locals 0

    .line 6334
    iget-object p0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mCallback:Landroid/net/wifi/hotspot2/ProvisioningCallback;

    invoke-virtual {p0, p1}, Landroid/net/wifi/hotspot2/ProvisioningCallback;->onProvisioningStatus(I)V

    return-void
.end method


# virtual methods
.method public onProvisioningComplete()V
    .locals 2

    .line 6344
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProvisioningFailure(I)V
    .locals 2

    .line 6339
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProvisioningStatus(I)V
    .locals 2

    .line 6334
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$ProvisioningCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
