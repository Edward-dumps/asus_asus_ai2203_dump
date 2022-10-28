.class Lcom/android/settings/ethernet/EthernetSettings$1;
.super Ljava/lang/Object;
.source "EthernetSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ethernet/EthernetSettings;->onActivityCreated(Landroid/os/Bundle;)V
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

    .line 105
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBeforeCheckedChanged(Landroid/widget/Switch;Z)Z
    .locals 1

    if-eqz p2, :cond_0

    .line 110
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p1}, Lcom/android/settings/ethernet/EthernetSettings;->access$000(Lcom/android/settings/ethernet/EthernetSettings;)V

    .line 111
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p1}, Lcom/android/settings/ethernet/EthernetSettings;->access$100(Lcom/android/settings/ethernet/EthernetSettings;)V

    .line 114
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p1}, Lcom/android/settings/ethernet/EthernetSettings;->access$200(Lcom/android/settings/ethernet/EthernetSettings;)Ljava/lang/Boolean;

    move-result-object p1

    monitor-enter p1

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$200(Lcom/android/settings/ethernet/EthernetSettings;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {v0}, Lcom/android/settings/ethernet/EthernetSettings;->access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/EthernetManager;->setEthernetEnabled(Z)Z

    .line 118
    :cond_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings$1;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p0}, Lcom/android/settings/ethernet/EthernetSettings;->access$000(Lcom/android/settings/ethernet/EthernetSettings;)V

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 118
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
