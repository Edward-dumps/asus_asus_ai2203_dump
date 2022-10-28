.class public final synthetic Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Landroid/os/Parcel;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Parcel;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    iput-object p2, p0, Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda0;->f$0:Landroid/os/Parcel;

    iget-object p0, p0, Landroid/net/wifi/ISoftApCallback$Stub$$ExternalSyntheticLambda0;->f$1:Ljava/util/Map;

    invoke-static {v0, p0, p1}, Landroid/net/wifi/ISoftApCallback$Stub;->$r8$lambda$Lizrzvbm2A5GICUY9E9pyMDY_7w(Landroid/os/Parcel;Ljava/util/Map;I)V

    return-void
.end method
