.class public final synthetic Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;->$r8$lambda$-_hgEcKbmQClu-8zqgimMjNxag8(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardNetworkDetailsTracker;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p0

    return p0
.end method
