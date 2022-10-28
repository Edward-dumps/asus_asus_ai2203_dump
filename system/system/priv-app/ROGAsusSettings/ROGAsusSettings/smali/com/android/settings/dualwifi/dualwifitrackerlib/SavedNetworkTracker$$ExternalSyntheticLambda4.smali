.class public final synthetic Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker$$ExternalSyntheticLambda4;->f$0:Ljava/util/Map;

    check-cast p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/SavedNetworkTracker;->$r8$lambda$3D9nDrxV6GJVrs94euiuuk-7LY0(Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)Z

    move-result p0

    return p0
.end method
