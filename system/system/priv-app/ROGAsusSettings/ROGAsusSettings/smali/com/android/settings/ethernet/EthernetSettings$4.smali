.class Lcom/android/settings/ethernet/EthernetSettings$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
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

    .line 520
    iput-object p1, p0, Lcom/android/settings/ethernet/EthernetSettings$4;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 0

    .line 523
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings$4;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p0}, Lcom/android/settings/ethernet/EthernetSettings;->access$600(Lcom/android/settings/ethernet/EthernetSettings;)V

    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    .line 527
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings$4;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p0}, Lcom/android/settings/ethernet/EthernetSettings;->access$600(Lcom/android/settings/ethernet/EthernetSettings;)V

    return-void
.end method

.method public onLinkPropertiesChanged(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 0

    .line 531
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings$4;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p0}, Lcom/android/settings/ethernet/EthernetSettings;->access$600(Lcom/android/settings/ethernet/EthernetSettings;)V

    return-void
.end method

.method public onLosing(Landroid/net/Network;I)V
    .locals 0

    .line 535
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings$4;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p0}, Lcom/android/settings/ethernet/EthernetSettings;->access$600(Lcom/android/settings/ethernet/EthernetSettings;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/android/settings/ethernet/EthernetSettings$4;->this$0:Lcom/android/settings/ethernet/EthernetSettings;

    invoke-static {p0}, Lcom/android/settings/ethernet/EthernetSettings;->access$600(Lcom/android/settings/ethernet/EthernetSettings;)V

    return-void
.end method
