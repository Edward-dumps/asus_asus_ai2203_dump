.class public final Landroid/net/wifi/WifiConnectedSessionInfo;
.super Ljava/lang/Object;
.source "WifiConnectedSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiConnectedSessionInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mIsUserSelected:Z

.field private final mSessionId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 75
    new-instance v0, Landroid/net/wifi/WifiConnectedSessionInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConnectedSessionInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConnectedSessionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IZ)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroid/net/wifi/WifiConnectedSessionInfo;->mSessionId:I

    .line 38
    iput-boolean p2, p0, Landroid/net/wifi/WifiConnectedSessionInfo;->mIsUserSelected:Z

    return-void
.end method

.method synthetic constructor <init>(IZLandroid/net/wifi/WifiConnectedSessionInfo$1;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/net/wifi/WifiConnectedSessionInfo;-><init>(IZ)V

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

    .line 70
    iget p2, p0, Landroid/net/wifi/WifiConnectedSessionInfo;->mSessionId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    iget-boolean p0, p0, Landroid/net/wifi/WifiConnectedSessionInfo;->mIsUserSelected:Z

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
