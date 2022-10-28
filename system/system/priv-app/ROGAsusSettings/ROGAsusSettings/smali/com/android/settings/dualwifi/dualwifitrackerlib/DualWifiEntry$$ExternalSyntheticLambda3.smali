.class public final synthetic Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda3;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$$ExternalSyntheticLambda3;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ManageSubscriptionAction;

    invoke-interface {p1}, Lcom/android/settings/dualwifi/dualwifitrackerlib/DualWifiEntry$ManageSubscriptionAction;->onExecute()V

    return-void
.end method
