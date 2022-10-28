.class public final synthetic Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

.field public final synthetic f$1:Ljava/lang/StringBuilder;

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;Ljava/lang/StringBuilder;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    iput-object p2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda3;->f$1:Ljava/lang/StringBuilder;

    iput-wide p3, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda3;->f$2:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;

    iget-object v1, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda3;->f$1:Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda3;->f$2:J

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->$r8$lambda$yXJo_LFucAW60xzq8ipukSVjvMY(Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;Ljava/lang/StringBuilder;JLandroid/net/wifi/ScanResult;)V

    return-void
.end method
