.class Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;
.super Landroid/net/wifi/INetworkRequestMatchCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkRequestMatchCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$6aCoX7h-EiwVgsvPyBGk5x0fLtA(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->lambda$onUserSelectionCallbackRegistration$0(Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6uYmEX4mdNxTmbzKei7akz_FCls(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->lambda$onAbort$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$HxXpglEhMq2nMJUayNYnD84LPhk(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->lambda$onUserSelectionConnectSuccess$3(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m-wXe_TTop-lbjq3Fe7nD0YGSlg(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->lambda$onUserSelectionConnectFailure$4(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$u8j1D3zU7UochohIyuShpICR9to(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->lambda$onMatch$2(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;)V
    .locals 0

    .line 2043
    iput-object p1, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/wifi/INetworkRequestMatchCallback$Stub;-><init>()V

    .line 2044
    iput-object p2, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 2045
    iput-object p3, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

    return-void
.end method

.method private synthetic lambda$onAbort$1()V
    .locals 0

    .line 2069
    iget-object p0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

    invoke-interface {p0}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;->onAbort()V

    return-void
.end method

.method private synthetic lambda$onMatch$2(Ljava/util/List;)V
    .locals 0

    .line 2081
    iget-object p0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

    invoke-interface {p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;->onMatch(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onUserSelectionCallbackRegistration$0(Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V
    .locals 2

    .line 2057
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;

    iget-object p0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V

    invoke-interface {v0, v1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;->onUserSelectionCallbackRegistration(Landroid/net/wifi/WifiManager$NetworkRequestUserSelectionCallback;)V

    return-void
.end method

.method private synthetic lambda$onUserSelectionConnectFailure$4(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 2105
    iget-object p0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

    invoke-interface {p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;->onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method private synthetic lambda$onUserSelectionConnectSuccess$3(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 2093
    iget-object p0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;

    invoke-interface {p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallback;->onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method


# virtual methods
.method public onAbort()V
    .locals 2

    .line 2064
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiManager"

    const-string v1, "NetworkRequestMatchCallbackProxy: onAbort"

    .line 2065
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2067
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2068
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onMatch(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 2075
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkRequestMatchCallbackProxy: onMatch scanResults: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2079
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2080
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Ljava/util/List;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserSelectionCallbackRegistration(Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V
    .locals 2

    .line 2051
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2052
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkRequestMatchCallbackProxy: onUserSelectionCallbackRegistration callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2055
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2056
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserSelectionConnectFailure(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 2099
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkRequestMatchCallbackProxy: onUserSelectionConnectFailure wificonfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2103
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2104
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onUserSelectionConnectSuccess(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2

    .line 2087
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkRequestMatchCallbackProxy: onUserSelectionConnectSuccess  wificonfiguration: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2092
    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
