.class public final synthetic Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback$SubsystemRestartCallbackProxy$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager$SubsystemRestartTrackingCallback;->onSubsystemRestarting()V

    return-void
.end method
