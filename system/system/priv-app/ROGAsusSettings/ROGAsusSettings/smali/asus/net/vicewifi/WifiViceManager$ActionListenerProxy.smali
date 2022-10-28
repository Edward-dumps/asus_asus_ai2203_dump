.class Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;
.super Landroid/net/wifi/IActionListener$Stub;
.source "WifiViceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasus/net/vicewifi/WifiViceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionListenerProxy"
.end annotation


# instance fields
.field private final mActionTag:Ljava/lang/String;

.field private final mCallback:Lasus/net/vicewifi/WifiViceManager$ActionListener;

.field private final mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lasus/net/vicewifi/WifiViceManager;


# direct methods
.method public static synthetic $r8$lambda$Z2r5IV_O3cXbwbJQbumUvGeUSl8(Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;)V
    .locals 0

    invoke-direct {p0}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->lambda$onSuccess$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$_FRCCBanl4xqXQp93g8Gr1yysyw(Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;I)V
    .locals 0

    invoke-direct {p0, p1}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->lambda$onFailure$1(I)V

    return-void
.end method

.method constructor <init>(Lasus/net/vicewifi/WifiViceManager;Ljava/lang/String;Landroid/os/Looper;Lasus/net/vicewifi/WifiViceManager$ActionListener;)V
    .locals 0

    .line 2358
    iput-object p1, p0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->this$0:Lasus/net/vicewifi/WifiViceManager;

    invoke-direct {p0}, Landroid/net/wifi/IActionListener$Stub;-><init>()V

    .line 2359
    iput-object p2, p0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->mActionTag:Ljava/lang/String;

    .line 2360
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->mHandler:Landroid/os/Handler;

    .line 2361
    iput-object p4, p0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->mCallback:Lasus/net/vicewifi/WifiViceManager$ActionListener;

    return-void
.end method

.method private synthetic lambda$onFailure$1(I)V
    .locals 0

    .line 2380
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->mCallback:Lasus/net/vicewifi/WifiViceManager$ActionListener;

    invoke-interface {p0, p1}, Lasus/net/vicewifi/WifiViceManager$ActionListener;->onFailure(I)V

    return-void
.end method

.method private synthetic lambda$onSuccess$0()V
    .locals 0

    .line 2370
    iget-object p0, p0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->mCallback:Lasus/net/vicewifi/WifiViceManager$ActionListener;

    invoke-interface {p0}, Lasus/net/vicewifi/WifiViceManager$ActionListener;->onSuccess()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 2376
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->this$0:Lasus/net/vicewifi/WifiViceManager;

    invoke-static {v0}, Lasus/net/vicewifi/WifiViceManager;->access$000(Lasus/net/vicewifi/WifiViceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionListenerProxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->mActionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": onFailure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiViceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    :cond_0
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy$$ExternalSyntheticLambda1;-><init>(Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 2366
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->this$0:Lasus/net/vicewifi/WifiViceManager;

    invoke-static {v0}, Lasus/net/vicewifi/WifiViceManager;->access$000(Lasus/net/vicewifi/WifiViceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActionListenerProxy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->mActionTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": onSuccess"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiViceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    :cond_0
    iget-object v0, p0, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy$$ExternalSyntheticLambda0;-><init>(Lasus/net/vicewifi/WifiViceManager$ActionListenerProxy;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
