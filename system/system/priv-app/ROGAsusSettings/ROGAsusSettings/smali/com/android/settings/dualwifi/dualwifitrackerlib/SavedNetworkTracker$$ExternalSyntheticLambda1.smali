.class public final synthetic Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;

    invoke-interface {p0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$SavedNetworkTrackerCallback;->onSubscriptionDualWifiEntriesChanged()V

    return-void
.end method
