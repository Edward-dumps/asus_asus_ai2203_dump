.class public final synthetic Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Parcel;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    iput p2, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda0;->f$1:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    iget p0, p0, Landroid/net/wifi/WifiConfiguration$$ExternalSyntheticLambda0;->f$1:I

    check-cast p1, Landroid/net/wifi/SecurityParams;

    invoke-static {v0, p0, p1}, Landroid/net/wifi/WifiConfiguration;->$r8$lambda$ahe7ubyWHwY2czMgrs8dR6_PZVI(Landroid/os/Parcel;ILandroid/net/wifi/SecurityParams;)V

    return-void
.end method
