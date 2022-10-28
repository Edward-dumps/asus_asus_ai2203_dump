.class public final synthetic Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda2;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->$r8$lambda$aOj4LLIv29Wz-AG3fV2ILj0ixcw(Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V

    return-void
.end method
