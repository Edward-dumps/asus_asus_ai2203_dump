.class public Landroid/net/wifi/WifiScanner$OperationResult;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$OperationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Ljava/lang/String;

.field public reason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1763
    new-instance v0, Landroid/net/wifi/WifiScanner$OperationResult$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$OperationResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 1746
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1747
    iput p1, p0, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    .line 1748
    iput-object p2, p0, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1758
    iget p2, p0, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1759
    iget-object p0, p0, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
