.class public final synthetic Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

.field public final synthetic f$1:Landroid/net/wifi/SoftApCapability;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApCapability;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/SoftApCapability;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iget-object p0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/SoftApCapability;

    invoke-static {v0, p0}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->$r8$lambda$OVJfvkFKUNH6ZpAPN1jTMnmOSV0(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/SoftApCapability;)V

    return-void
.end method
