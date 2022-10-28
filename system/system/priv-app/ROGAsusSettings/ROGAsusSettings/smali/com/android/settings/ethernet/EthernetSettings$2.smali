.class Lcom/android/settings/ethernet/EthernetSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "EthernetSettings.java"


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

    .line 500
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$2;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 503
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.net.extra.ETHERNET_STATE"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 504
    iget-object p2, p0, Lcom/android/settings/ethernet/EthernetSettings$2;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p2, p1}, Lcom/android/settings/ethernet/EthernetSettings;->access$400(Lcom/android/settings/ethernet/EthernetSettings;I)V

    .line 505
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings$2;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p0}, Lcom/android/settings/ethernet/EthernetSettings;->access$500(Lcom/android/settings/ethernet/EthernetSettings;)V

    return-void
.end method
