.class public Landroid/net/wifi/WifiScanner$PnoSettings;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiScanner$PnoSettings;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isConnected:Z

.field public min24GHzRssi:I

.field public min5GHzRssi:I

.field public min6GHzRssi:I

.field public networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 998
    new-instance v0, Landroid/net/wifi/WifiScanner$PnoSettings$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$PnoSettings$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiScanner$PnoSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 889
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 980
    iget-boolean p2, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->isConnected:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 981
    iget p2, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min5GHzRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 982
    iget p2, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min24GHzRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 983
    iget p2, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->min6GHzRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    iget-object p2, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 985
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 986
    :goto_0
    iget-object p2, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 987
    aget-object p2, p2, v0

    iget-object p2, p2, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 988
    iget-object p2, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object p2, p2, v0

    iget-byte p2, p2, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 989
    iget-object p2, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object p2, p2, v0

    iget-byte p2, p2, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 990
    iget-object p2, p0, Landroid/net/wifi/WifiScanner$PnoSettings;->networkList:[Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    aget-object p2, p2, v0

    iget-object p2, p2, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 993
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :cond_1
    return-void
.end method
