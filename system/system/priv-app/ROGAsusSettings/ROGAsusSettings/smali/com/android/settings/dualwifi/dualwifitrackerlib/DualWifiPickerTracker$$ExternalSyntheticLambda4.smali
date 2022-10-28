.class public final synthetic Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Ljava/util/Set;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Set;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda4;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda4;->f$0:Ljava/util/Set;

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda4;->f$1:Ljava/util/Map;

    check-cast p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    invoke-static {v0, p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->$r8$lambda$AMTb9nzUII3QKBXmxwWrv9NQ7UU(Ljava/util/Set;Ljava/util/Map;Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;)V

    return-void
.end method
