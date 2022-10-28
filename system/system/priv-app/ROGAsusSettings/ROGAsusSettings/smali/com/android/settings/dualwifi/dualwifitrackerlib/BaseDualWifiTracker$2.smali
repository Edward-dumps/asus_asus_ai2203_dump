.class Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "BaseDualWifiTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;


# direct methods
.method constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    .line 147
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$000(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 148
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$002(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Z)Z

    .line 149
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleOnStart()V

    .line 151
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$700(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Landroid/net/NetworkCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-boolean v0, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiValidated:Z

    const/16 v1, 0x10

    .line 155
    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v1

    iput-boolean v1, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiValidated:Z

    .line 156
    invoke-static {}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-boolean v1, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiValidated:Z

    if-eq v1, v0, :cond_2

    .line 157
    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$100(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Is Wifi validated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-boolean v1, v1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiValidated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_2
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p0, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleNetworkCapabilitiesChanged(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$000(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$002(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Z)Z

    .line 134
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleOnStart()V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-object v1, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 137
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 136
    invoke-static {v0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$700(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Landroid/net/NetworkCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 140
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p0, p2}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleLinkPropertiesChanged(Landroid/net/LinkProperties;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$000(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$002(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Z)Z

    .line 167
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleOnStart()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-object v1, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 170
    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    .line 169
    invoke-static {v0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$700(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Landroid/net/NetworkCapabilities;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 173
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$2;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiValidated:Z

    return-void
.end method
