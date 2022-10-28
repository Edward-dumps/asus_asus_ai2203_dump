.class public final synthetic Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/SecurityParams;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/SecurityParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda3;->f$0:Landroid/net/wifi/SecurityParams;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda3;->f$0:Landroid/net/wifi/SecurityParams;

    check-cast p1, Landroid/net/wifi/SecurityParams;

    invoke-static {p0, p1}, Landroid/net/wifi/WifiConfiguration;->$r8$lambda$GBruENNRgPpy3ujl16A74mPTavg(Landroid/net/wifi/SecurityParams;Landroid/net/wifi/SecurityParams;)Z

    move-result p0

    return p0
.end method
