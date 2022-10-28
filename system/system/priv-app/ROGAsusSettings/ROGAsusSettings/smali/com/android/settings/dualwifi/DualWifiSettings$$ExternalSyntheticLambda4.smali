.class public final synthetic Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dualwifi/DualWifiSettings;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dualwifi/DualWifiSettings;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dualwifi/DualWifiSettings$$ExternalSyntheticLambda4;->f$0:Lcom/android/settings/dualwifi/DualWifiSettings;

    check-cast p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/DualWifiSettings;->$r8$lambda$Tpx37HBoLuoUU9ZWZRIyfYMVs-w(Lcom/android/settings/dualwifi/DualWifiSettings;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z

    move-result p0

    return p0
.end method
