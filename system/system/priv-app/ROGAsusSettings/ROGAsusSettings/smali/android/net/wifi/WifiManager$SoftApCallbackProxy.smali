.class Landroid/net/wifi/WifiManager$SoftApCallbackProxy;
.super Landroid/net/wifi/ISoftApCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoftApCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private mCurrentClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SoftApInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$-Yq9GRsklCHkRx5g2ZXzaOUjGhM(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onConnectedClientsOrInfoChanged$2(Landroid/net/wifi/SoftApInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$19yax2LIGMBojHrhAuVoR7lwXv4(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onConnectedClientsOrInfoChanged$1(Landroid/net/wifi/SoftApInfo;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5DolNw_YOhiPVm1dfoQXbVmgo4M(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onConnectedClientsOrInfoChanged$4(Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NaHhWUChuBRqv48KX6unVqMHNww(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/WifiClient;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onBlockedClientConnecting$6(Landroid/net/wifi/WifiClient;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OVJfvkFKUNH6ZpAPN1jTMnmOSV0(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApCapability;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onCapabilityChanged$5(Landroid/net/wifi/SoftApCapability;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TrDcilUaHO_reRim6wPh8O0Xdfg(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onStateChanged$0(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$ZM0rPozvsx1cQ4FzcsU-oLSeb8M(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->lambda$onConnectedClientsOrInfoChanged$3(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Landroid/net/wifi/WifiManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V
    .locals 0

    .line 4705
    iput-object p1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/wifi/ISoftApCallback$Stub;-><init>()V

    .line 4694
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentClients:Ljava/util/Map;

    .line 4695
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentInfos:Ljava/util/Map;

    .line 4706
    iput-object p2, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    .line 4707
    iput-object p3, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    return-void
.end method

.method private getConnectedClientList(Ljava/util/Map;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;"
        }
    .end annotation

    .line 4698
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4699
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4700
    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private synthetic lambda$onBlockedClientConnecting$6(Landroid/net/wifi/WifiClient;I)V
    .locals 0

    .line 4843
    iget-object p0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V

    return-void
.end method

.method private synthetic lambda$onCapabilityChanged$5(Landroid/net/wifi/SoftApCapability;)V
    .locals 0

    .line 4830
    iget-object p0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V

    return-void
.end method

.method private synthetic lambda$onConnectedClientsOrInfoChanged$1(Landroid/net/wifi/SoftApInfo;Ljava/util/Map;)V
    .locals 0

    .line 4790
    iget-object p0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    .line 4791
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 4790
    invoke-interface {p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onConnectedClientsChanged(Landroid/net/wifi/SoftApInfo;Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onConnectedClientsOrInfoChanged$2(Landroid/net/wifi/SoftApInfo;)V
    .locals 0

    .line 4801
    iget-object p0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onInfoChanged(Landroid/net/wifi/SoftApInfo;)V

    return-void
.end method

.method private synthetic lambda$onConnectedClientsOrInfoChanged$3(Ljava/util/List;)V
    .locals 0

    .line 4807
    iget-object p0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onConnectedClientsOrInfoChanged$4(Ljava/util/Map;)V
    .locals 1

    .line 4816
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->getConnectedClientList(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/net/wifi/WifiManager$SoftApCallback;->onConnectedClientsChanged(Ljava/util/List;)V

    return-void
.end method

.method private synthetic lambda$onStateChanged$0(II)V
    .locals 0

    .line 4719
    iget-object p0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStateChanged(II)V

    return-void
.end method


# virtual methods
.method public onBlockedClientConnecting(Landroid/net/wifi/WifiClient;I)V
    .locals 2

    .line 4836
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApCallbackProxy: onBlockedClientConnecting: client="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4841
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4842
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda4;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/WifiClient;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .locals 2

    .line 4823
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApCallbackProxy: onCapabilityChanged: SoftApCapability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4828
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4829
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApCapability;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onConnectedClientsOrInfoChanged(Ljava/util/Map;Ljava/util/Map;ZZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/SoftApInfo;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;>;ZZ)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 4726
    iget-object v5, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v5}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v5

    const-string v6, "WifiManager"

    if-eqz v5, :cond_0

    .line 4727
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SoftApCallbackProxy: onConnectedClientsOrInfoChanged: clients: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", infos: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", isBridged is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isRegistration is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4732
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4733
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 4737
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v8

    if-nez v8, :cond_1

    invoke-direct {v0, v2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->getConnectedClientList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iget-object v11, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentClients:Ljava/util/Map;

    .line 4738
    invoke-direct {v0, v11}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->getConnectedClientList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-eq v8, v11, :cond_1

    const/4 v8, 0x1

    goto :goto_0

    :cond_1
    const/4 v8, 0x0

    .line 4739
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v11

    iget-object v12, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentInfos:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v12

    if-eq v11, v12, :cond_2

    const/4 v11, 0x1

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    :goto_1
    if-eqz v4, :cond_4

    .line 4743
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_3
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/SoftApInfo;

    .line 4744
    invoke-virtual {v13}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v14

    .line 4745
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    invoke-interface {v2, v14, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_3

    .line 4746
    invoke-interface {v2, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/List;

    invoke-interface {v7, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 4752
    :cond_4
    iget-object v12, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentInfos:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/SoftApInfo;

    .line 4753
    invoke-virtual {v13}, Landroid/net/wifi/SoftApInfo;->getApInstanceIdentifier()Ljava/lang/String;

    move-result-object v14

    .line 4754
    invoke-interface {v5, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_6

    .line 4756
    iget-object v11, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentClients:Ljava/util/Map;

    .line 4757
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 4756
    invoke-interface {v11, v14, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    .line 4757
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_5

    const-string v11, "SoftApCallbackProxy: info changed on client connected instance(Shut Down case)"

    .line 4758
    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4761
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v11

    invoke-interface {v7, v13, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    move-object/from16 v16, v12

    const/4 v11, 0x1

    goto :goto_4

    .line 4766
    :cond_6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v15

    .line 4765
    invoke-interface {v2, v14, v15}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/List;

    .line 4767
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v9

    iget-object v10, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentClients:Ljava/util/Map;

    move-object/from16 v16, v12

    .line 4769
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v12

    invoke-interface {v10, v14, v12}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_7

    .line 4771
    invoke-interface {v7, v13, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    move-object/from16 v12, v16

    goto :goto_3

    .line 4776
    :cond_8
    iput-object v2, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentClients:Ljava/util/Map;

    .line 4777
    iput-object v1, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCurrentInfos:Ljava/util/Map;

    if-nez v11, :cond_9

    .line 4778
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    if-nez v4, :cond_9

    if-nez v8, :cond_9

    const-string v0, "SoftApCallbackProxy: No changed & Not Registration, don\'t need to notify the client"

    .line 4780
    invoke-static {v6, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4784
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4786
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/SoftApInfo;

    .line 4787
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SoftApCallbackProxy: send onConnectedClientsChanged, changedInfo is "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " and clients are "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4788
    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 4787
    invoke-static {v6, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4789
    iget-object v10, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v12, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda3;

    invoke-direct {v12, v0, v9, v7}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda3;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;Ljava/util/Map;)V

    invoke-interface {v10, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    :cond_a
    if-nez v11, :cond_b

    if-eqz v4, :cond_e

    :cond_b
    if-nez v3, :cond_d

    .line 4797
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 4798
    new-instance v1, Landroid/net/wifi/SoftApInfo;

    invoke-direct {v1}, Landroid/net/wifi/SoftApInfo;-><init>()V

    goto :goto_6

    :cond_c
    const/4 v1, 0x0

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/SoftApInfo;

    .line 4799
    :goto_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "SoftApCallbackProxy: send InfoChanged, newInfo: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4800
    iget-object v3, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v9, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda2;

    invoke-direct {v9, v0, v1}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda2;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;)V

    invoke-interface {v3, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 4804
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoftApCallbackProxy: send InfoChanged, changedInfoList: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4806
    iget-object v1, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda5;

    invoke-direct {v3, v0, v5}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda5;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Ljava/util/List;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_e
    if-nez v4, :cond_f

    .line 4811
    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_f

    if-eqz v8, :cond_10

    .line 4813
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SoftApCallbackProxy: send onConnectedClientsChanged(clients): "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4814
    invoke-direct {v0, v2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->getConnectedClientList(Ljava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4813
    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4815
    iget-object v1, v0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda6;

    invoke-direct {v3, v0, v2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda6;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Ljava/util/Map;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    return-void
.end method

.method public onStateChanged(II)V
    .locals 2

    .line 4712
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4713
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SoftApCallbackProxy: onStateChanged: state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", failureReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4717
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 4718
    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;II)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
