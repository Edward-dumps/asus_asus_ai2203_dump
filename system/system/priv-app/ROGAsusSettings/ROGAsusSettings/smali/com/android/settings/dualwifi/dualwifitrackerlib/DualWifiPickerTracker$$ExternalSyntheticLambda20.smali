.class public final synthetic Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda20;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda20;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda20;

    invoke-direct {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda20;-><init>()V

    sput-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda20;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda20;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->$r8$lambda$lSv7dFZhbev0UdPALNrgMK3H38w(Lcom/android/settings/dualwifi/dualwifitrackerlib/PasspointDualWifiEntry;)Z

    move-result p0

    return p0
.end method
