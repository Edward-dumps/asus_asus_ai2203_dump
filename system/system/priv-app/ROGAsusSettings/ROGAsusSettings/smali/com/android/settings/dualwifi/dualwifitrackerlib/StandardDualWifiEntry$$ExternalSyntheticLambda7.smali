.class public final synthetic Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda7;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda7;-><init>()V

    sput-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda7;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry$$ExternalSyntheticLambda7;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/net/wifi/ScanResult;

    invoke-static {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/StandardDualWifiEntry;->$r8$lambda$ZEsERVcWPe_bosk3t4WwpFUQt5U(Landroid/net/wifi/ScanResult;)I

    move-result p0

    return p0
.end method
