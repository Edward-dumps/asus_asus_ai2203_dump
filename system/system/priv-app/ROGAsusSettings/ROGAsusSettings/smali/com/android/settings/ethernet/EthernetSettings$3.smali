.class Lcom/android/settings/ethernet/EthernetSettings$3;
.super Ljava/lang/Object;
.source "EthernetSettings.java"

# interfaces
.implements Landroid/net/EthernetManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ethernet/EthernetSettings;
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

    .line 509
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$3;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailabilityChanged(Ljava/lang/String;Z)V
    .locals 0

    const-string p1, "EthernetSettings"

    const-string p2, "EthernetManager.Listener.onAvailabilityChanged"

    .line 512
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$3;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p1}, Lcom/android/settings/ethernet/EthernetSettings;->access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$3;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p1}, Lcom/android/settings/ethernet/EthernetSettings;->access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/EthernetManager;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 514
    iget-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$3;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p1}, Lcom/android/settings/ethernet/EthernetSettings;->access$300(Lcom/android/settings/ethernet/EthernetSettings;)Landroid/net/EthernetManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/EthernetManager;->getEthernetState()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/settings/ethernet/EthernetSettings;->access$400(Lcom/android/settings/ethernet/EthernetSettings;I)V

    .line 515
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings$3;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p0}, Lcom/android/settings/ethernet/EthernetSettings;->access$500(Lcom/android/settings/ethernet/EthernetSettings;)V

    :cond_0
    return-void
.end method
