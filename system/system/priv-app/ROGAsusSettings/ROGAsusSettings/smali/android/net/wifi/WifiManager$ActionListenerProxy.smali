.class Landroid/net/wifi/WifiManager$ActionListenerProxy;
.super Landroid/net/wifi/IActionListener$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionListenerProxy"
.end annotation


# instance fields
.field private final mActionTag:Ljava/lang/String;

.field private final mCallback:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$94X-ODC7KAgRQouEzAidowqUDP0(Landroid/net/wifi/WifiManager$ActionListenerProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->lambda$onFailure$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RnLeE-P2yiBajzjbgOIRJjcvBbc(Landroid/net/wifi/WifiManager$ActionListenerProxy;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/WifiManager$ActionListenerProxy;->lambda$onSuccess$0()V

    return-void
.end method

.method constructor <init>(Landroid/net/wifi/WifiManager;Ljava/lang/String;Landroid/os/Looper;Landroid/net/wifi/WifiManager$ActionListener;)V
    .locals 0

    .line 5249
    iput-object p1, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/net/wifi/IActionListener$Stub;-><init>()V

    .line 5250
    iput-object p2, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mActionTag:Ljava/lang/String;

    .line 5251
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mHandler:Landroid/os/Handler;

    .line 5252
    iput-object p4, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mCallback:Landroid/net/wifi/WifiManager$ActionListener;

    return-void
.end method

.method private synthetic lambda$onFailure$1(I)V
    .locals 0

    .line 5271
    iget-object p0, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mCallback:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-interface {p0, p1}, Landroid/net/wifi/WifiManager$ActionListener;->onFailure(I)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0()V
    .locals 0

    .line 5261
    iget-object p0, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mCallback:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-interface {p0}, Landroid/net/wifi/WifiManager$ActionListener;->onSuccess()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 5267
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionListenerProxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mActionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": onFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5270
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/WifiManager$ActionListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/WifiManager$ActionListenerProxy$$ExternalSyntheticLambda1;-><init>(Landroid/net/wifi/WifiManager$ActionListenerProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 5257
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v0}, Landroid/net/wifi/WifiManager;->access$000(Landroid/net/wifi/WifiManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionListenerProxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mActionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5260
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiManager$ActionListenerProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/WifiManager$ActionListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/wifi/WifiManager$ActionListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/WifiManager$ActionListenerProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
