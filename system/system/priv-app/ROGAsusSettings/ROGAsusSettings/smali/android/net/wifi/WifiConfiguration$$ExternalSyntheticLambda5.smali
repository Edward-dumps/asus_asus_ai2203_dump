.class public final synthetic Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda5;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda5;->INSTANCE:Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda5;

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

    check-cast p1, Landroid/net/wifi/SecurityParams;

    invoke-static {p1}, Landroid/net/wifi/WifiConfiguration;->$r8$lambda$HBDLSAk8XhF0p-01t2roJMSHJ-g(Landroid/net/wifi/SecurityParams;)Z

    move-result p0

    return p0
.end method
