.class public final synthetic Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

.field public final synthetic f$1:Landroid/net/wifi/WifiClient;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/WifiClient;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda4;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda4;->f$1:Landroid/net/wifi/WifiClient;

    iput p3, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda4;->f$0:Landroid/net/wifi/WifiManager$SoftApCallbackProxy;

    iget-object v1, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda4;->f$1:Landroid/net/wifi/WifiClient;

    iget p0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy$$ExternalSyntheticLambda4;->f$2:I

    invoke-static {v0, v1, p0}, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->$r8$lambda$NaHhWUChuBRqv48KX6unVqMHNww(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Landroid/net/wifi/WifiClient;I)V

    return-void
.end method
