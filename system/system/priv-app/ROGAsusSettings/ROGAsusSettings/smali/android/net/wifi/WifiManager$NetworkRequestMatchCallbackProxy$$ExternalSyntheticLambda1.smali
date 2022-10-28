.class public final synthetic Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

.field public final synthetic f$1:Landroid/net/wifi/INetworkRequestUserSelectionCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

    iget-object p0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/INetworkRequestUserSelectionCallback;

    invoke-static {v0, p0}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->$r8$lambda$6aCoX7h-EiwVgsvPyBGk5x0fLtA(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/INetworkRequestUserSelectionCallback;)V

    return-void
.end method
