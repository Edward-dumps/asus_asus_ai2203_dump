.class Lcom/android/settings/ethernet/EthernetSettings$5;
.super Ljava/lang/Object;
.source "EthernetSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ethernet/EthernetSettings;->updateEthernetSwitch(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ethernet/EthernetSettings;

.field final synthetic val$ethernetState:I


# direct methods
.method constructor <init>(Lcom/android/settings/ethernet/EthernetSettings;I)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$5;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    iput p2, p0, Lcom/android/settings/ethernet/EthernetSettings$5;->val$ethernetState:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 551
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$5;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$200(Lcom/android/settings/ethernet/EthernetSettings;)Ljava/lang/Boolean;

    move-result-object v0

    monitor-enter v0

    .line 552
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings$5;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lcom/android/settings/ethernet/EthernetSettings;->access$202(Lcom/android/settings/ethernet/EthernetSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 553
    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings$5;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetSettings;->access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ethernet/EthernetSettings$5;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v1}, Lcom/android/settings/ethernet/EthernetSettings;->access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 554
    :goto_0
    iget v4, p0, Lcom/android/settings/ethernet/EthernetSettings$5;->val$ethernetState:I

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v4, v5, :cond_2

    if-ne v4, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v3

    .line 555
    :goto_2
    iget-object v5, p0, Lcom/android/settings/ethernet/EthernetSettings$5;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v5}, Lcom/android/settings/ethernet/EthernetSettings;->access$700(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v5

    if-eqz v1, :cond_4

    iget v7, p0, Lcom/android/settings/ethernet/EthernetSettings$5;->val$ethernetState:I

    if-eq v7, v6, :cond_3

    if-ne v7, v3, :cond_4

    :cond_3
    move v6, v3

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    invoke-virtual {v5, v6}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setEnabled(Z)V

    .line 556
    iget-object v5, p0, Lcom/android/settings/ethernet/EthernetSettings$5;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v5}, Lcom/android/settings/ethernet/EthernetSettings;->access$700(Lcom/android/settings/ethernet/EthernetSettings;)Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object v5

    if-eqz v1, :cond_5

    if-eqz v4, :cond_5

    move v2, v3

    :cond_5
    invoke-virtual {v5, v2}, Lcom/android/settings/widget/SettingsMainSwitchBar;->setCheckedOnOff(Z)V

    .line 557
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings$5;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p0, v1}, Lcom/android/settings/ethernet/EthernetSettings;->access$202(Lcom/android/settings/ethernet/EthernetSettings;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 558
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
