.class Lcom/android/settings/TetherSettings$4;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/TetherSettings;->initWifiTetherSoftApManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .line 824
    iput-object p1, p0, Lcom/android/settings/TetherSettings$4;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectedClientsChanged(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 832
    iget-object v0, p0, Lcom/android/settings/TetherSettings$4;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$1200(Lcom/android/settings/TetherSettings;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 833
    iget-object v0, p0, Lcom/android/settings/TetherSettings$4;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 837
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings$4;->this$0:Lcom/android/settings/TetherSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$plurals;->wifi_tether_connected_summary:I

    .line 838
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 839
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v5

    .line 837
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/TetherSettings;->access$2002(Lcom/android/settings/TetherSettings;Ljava/lang/String;)Ljava/lang/String;

    .line 840
    iget-object p1, p0, Lcom/android/settings/TetherSettings$4;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$1400(Lcom/android/settings/TetherSettings;)Z

    move-result v0

    iget-object p0, p0, Lcom/android/settings/TetherSettings$4;->this$0:Lcom/android/settings/TetherSettings;

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$1500(Lcom/android/settings/TetherSettings;)Landroidx/preference/Preference;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/settings/TetherSettings;->access$1600(Lcom/android/settings/TetherSettings;)Landroidx/preference/Preference;

    move-result-object p0

    :goto_0
    invoke-static {p1, p0}, Lcom/android/settings/TetherSettings;->access$2100(Lcom/android/settings/TetherSettings;Landroidx/preference/Preference;)V

    :cond_2
    return-void
.end method

.method public onStateChanged(II)V
    .locals 0

    return-void
.end method
