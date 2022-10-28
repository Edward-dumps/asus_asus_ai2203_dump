.class public final synthetic Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

.field public final synthetic f$1:Landroid/net/wifi/SoftApInfo;

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda3;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda3;->f$1:Landroid/net/wifi/SoftApInfo;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda3;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda3;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda3;->f$1:Landroid/net/wifi/SoftApInfo;

    iget-object p0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda3;->f$2:Ljava/util/Map;

    invoke-static {v0, v1, p0}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->$r8$lambda$19yax2LIGMBojHrhAuVoR7lwXv4(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApInfo;Ljava/util/Map;)V

    return-void
.end method
