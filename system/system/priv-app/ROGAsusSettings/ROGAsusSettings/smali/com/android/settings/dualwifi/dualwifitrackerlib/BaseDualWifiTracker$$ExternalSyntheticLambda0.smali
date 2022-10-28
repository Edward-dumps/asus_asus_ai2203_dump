.class public final synthetic Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$$ExternalSyntheticLambda0;->f$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;

    invoke-interface {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/BaseDualWifiTracker$BaseDualWifiTrackerCallback;->onWifiStateChanged()V

    return-void
.end method
