.class public final synthetic Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;

    invoke-static {p0, p1}, Lcom/android/settings/dualwifi/savedaccesspoints2/SavedDualAccessPointsPreferenceController2;->$r8$lambda$E3fPmO27QmRmoUCjETpIMMiNff8(Ljava/lang/String;Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry;)Z

    move-result p0

    return p0
.end method
