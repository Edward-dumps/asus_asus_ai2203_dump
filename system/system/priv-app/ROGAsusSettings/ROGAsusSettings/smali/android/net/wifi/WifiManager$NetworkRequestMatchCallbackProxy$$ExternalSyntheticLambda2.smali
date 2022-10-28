.class public final synthetic Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

.field public final synthetic f$1:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;->f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;->f$1:Landroid/net/wifi/WifiConfiguration;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;->f$0:Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;

    iget-object p0, p0, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy$$ExternalSyntheticLambda2;->f$1:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0, p0}, Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;->$r8$lambda$HxXpglEhMq2nMJUayNYnD84LPhk(Landroid/net/wifi/WifiManager$NetworkRequestMatchCallbackProxy;Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method
