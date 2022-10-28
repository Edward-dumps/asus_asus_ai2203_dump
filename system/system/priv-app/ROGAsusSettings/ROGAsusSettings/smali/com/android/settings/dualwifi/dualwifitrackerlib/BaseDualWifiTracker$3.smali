.class Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;
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

    .line 178
    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    .line 183
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$000(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$002(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Z)Z

    .line 185
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleOnStart()V

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-boolean v1, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiDefaultRoute:Z

    .line 188
    iget-boolean v2, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    .line 190
    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiDefaultRoute:Z

    .line 191
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    .line 192
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-boolean p2, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiDefaultRoute:Z

    if-ne p2, v1, :cond_1

    iget-boolean p1, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    if-eq p1, v2, :cond_3

    .line 194
    :cond_1
    invoke-static {}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 195
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$100(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Dual Wifi is the default route: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-boolean v0, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiDefaultRoute:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$100(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cell is the default route: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    iget-boolean v0, v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_2
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleDefaultRouteChanged()V

    :cond_3
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 1

    .line 204
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$000(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$002(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;Z)Z

    .line 206
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleOnStart()V

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsDualWifiDefaultRoute:Z

    .line 209
    iput-boolean v0, p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->mIsCellDefaultRoute:Z

    .line 210
    invoke-static {}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->isVerboseLoggingEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 211
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$100(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Wifi is the default route: false"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->access$100(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cell is the default route: false"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_1
    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$3;->this$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;

    invoke-virtual {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker;->handleDefaultRouteChanged()V

    return-void
.end method
