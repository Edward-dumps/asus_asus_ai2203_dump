.class public final synthetic Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda14;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda14;

    invoke-direct {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda14;-><init>()V

    sput-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda14;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker$$ExternalSyntheticLambda14;

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

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiPickerTracker;->$r8$lambda$XxwhmD5EnjWdp9gXphF_f2HOKiA(Landroid/net/wifi/ScanResult;)Z

    move-result p0

    return p0
.end method
