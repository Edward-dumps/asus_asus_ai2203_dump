.class Lcom/android/settings/ethernet/EthernetSettings$7;
.super Ljava/lang/Object;
.source "EthernetSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ethernet/EthernetSettings;->updateDhcpIpAddress()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ethernet/EthernetSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/ethernet/EthernetSettings;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$7;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$7;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$7;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/EthernetManager;->getEthernetState()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 591
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings$7;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetSettings;->access$1500(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetUtils;->getEthernetIpAddresses(Landroid/net/ConnectivityManager;)Ljava/lang/String;

    move-result-object v1

    .line 592
    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings$7;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v2}, Lcom/android/settings/ethernet/EthernetSettings;->access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/ethernet/EthernetSettings$7;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v2}, Lcom/android/settings/ethernet/EthernetSettings;->access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 593
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings$7;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p0}, Lcom/android/settings/ethernet/EthernetSettings;->access$1600(Lcom/android/settings/ethernet/EthernetSettings;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$7;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$1600(Lcom/android/settings/ethernet/EthernetSettings;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings$7;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p0}, Lcom/android/settings/ethernet/EthernetSettings;->access$1700(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->status_unavailable:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method
