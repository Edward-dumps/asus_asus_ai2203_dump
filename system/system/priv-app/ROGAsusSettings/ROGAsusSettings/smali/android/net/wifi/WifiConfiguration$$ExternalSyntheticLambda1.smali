.class public final synthetic Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/StringBuilder;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/StringBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda1;->f$0:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda1;->f$0:Ljava/lang/StringBuilder;

    check-cast p1, Landroid/net/wifi/SecurityParams;

    invoke-static {p0, p1}, Landroid/net/wifi/WifiConfiguration;->$r8$lambda$mAIwDxUisDxwGfdJCL2y-0Grk_w(Ljava/lang/StringBuilder;Landroid/net/wifi/SecurityParams;)V

    return-void
.end method
