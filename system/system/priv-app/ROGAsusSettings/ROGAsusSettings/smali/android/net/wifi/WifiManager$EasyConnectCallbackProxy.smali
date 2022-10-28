.class Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;
.super Landroid/net/wifi/IDppCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EasyConnectCallbackProxy"
.end annotation


# instance fields
.field private final mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public static synthetic $r8$lambda$3CzKNUxeBsyRCXTWTQ5PzhylC0c(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->lambda$onSuccess$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$IMVEzgKTJwh73J2PRQ3hK107WFg(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;Ljava/lang/String;ILjava/lang/String;[I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->lambda$onFailure$2(Ljava/lang/String;ILjava/lang/String;[I)V

    return-void
.end method

.method public static synthetic $r8$lambda$J8prXGdbTylbL3Sj7ImRMZC79AA(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->lambda$onSuccessConfigReceived$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lunzqQ8TVidGMDxnq-2ri4EhM2I(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->lambda$onBootstrapUriGenerated$4(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oHyuoyLAapVLHY33IMpHFTySMqY(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->lambda$onProgress$3(I)V

    return-void
.end method

.method constructor <init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/EasyConnectStatusCallback;)V
    .locals 0

    .line 6952
    invoke-direct {p0}, Landroid/net/wifi/IDppCallback$Stub;-><init>()V

    .line 6953
    iput-object p1, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 6954
    iput-object p2, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    return-void
.end method

.method private synthetic lambda$onBootstrapUriGenerated$4(Ljava/lang/String;)V
    .locals 0

    .line 7005
    iget-object p0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onBootstrapUriGenerated(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic lambda$onFailure$2(Ljava/lang/String;ILjava/lang/String;[I)V
    .locals 0

    .line 6981
    invoke-static {p1}, Landroid/net/wifi/WifiManager;->parseDppChannelList(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    .line 6982
    iget-object p0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-virtual {p0, p2, p3, p1, p4}, Landroid/net/wifi/EasyConnectStatusCallback;->onFailure(ILjava/lang/String;Landroid/util/SparseArray;[I)V

    return-void
.end method

.method private synthetic lambda$onProgress$3(I)V
    .locals 0

    .line 6992
    iget-object p0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-virtual {p0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onProgress(I)V

    return-void
.end method

.method private synthetic lambda$onSuccess$1(I)V
    .locals 0

    .line 6971
    iget-object p0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-virtual {p0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onConfiguratorSuccess(I)V

    return-void
.end method

.method private synthetic lambda$onSuccessConfigReceived$0(I)V
    .locals 0

    .line 6962
    iget-object p0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mEasyConnectStatusCallback:Landroid/net/wifi/EasyConnectStatusCallback;

    invoke-virtual {p0, p1}, Landroid/net/wifi/EasyConnectStatusCallback;->onEnrolleeSuccess(I)V

    return-void
.end method


# virtual methods
.method public onBootstrapUriGenerated(Ljava/lang/String;)V
    .locals 2

    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onBootstrapUriGenerated callback"

    .line 6998
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6999
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "Easy Connect bootstrap URI callback supported only on S+"

    .line 7000
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 7003
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 7004
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;Ljava/lang/String;[I)V
    .locals 8

    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onFailure callback"

    .line 6978
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6979
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6980
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move v4, p1

    move-object v5, p2

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;Ljava/lang/String;ILjava/lang/String;[I)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 2

    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onProgress callback"

    .line 6989
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6990
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6991
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(I)V
    .locals 2

    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onSuccess callback"

    .line 6968
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6969
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6970
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccessConfigReceived(I)V
    .locals 2

    const-string v0, "WifiManager"

    const-string v1, "Easy Connect onSuccessConfigReceived callback"

    .line 6959
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6960
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 6961
    iget-object v0, p0, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$EasyConnectCallbackProxy;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
