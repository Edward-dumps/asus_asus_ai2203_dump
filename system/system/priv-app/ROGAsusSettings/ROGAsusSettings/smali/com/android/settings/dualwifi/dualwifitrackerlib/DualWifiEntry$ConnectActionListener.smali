.class public Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;
.super Ljava/lang/Object;
.source "DualWifiEntry.java"

# interfaces
.implements Lasus/net/vicewifi/WifiViceManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ConnectActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;


# direct methods
.method public static synthetic $r8$lambda$3v4FocXyll0S0oTkntmc67iZGZc(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;->lambda$onSuccess$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$Zt-bOqwI1eEuWOCFyaAeean9uPo(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;->lambda$onFailure$1()V

    return-void
.end method

.method protected constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)V
    .locals 0

    .line 969
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFailure$1()V
    .locals 1

    .line 990
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 992
    invoke-interface {p0, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;->onConnectResult(I)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onSuccess$0()V
    .locals 3

    .line 977
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iget-object v1, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mConnectCallback:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;

    if-eqz v1, :cond_0

    .line 978
    iget-boolean v2, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledConnect:Z

    if-eqz v2, :cond_0

    .line 979
    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 980
    invoke-interface {v1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectCallback;->onConnectResult(I)V

    .line 982
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledConnect:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 1

    .line 989
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    iget-object p1, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 972
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    monitor-enter v0

    .line 973
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCalledConnect:Z

    .line 974
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    iget-object v0, v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ConnectActionListener;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p0

    .line 974
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
