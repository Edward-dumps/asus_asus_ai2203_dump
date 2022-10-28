.class public final Landroid/net/wifi/aware/AwareResources;
.super Ljava/lang/Object;
.source "AwareResources.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/aware/AwareResources;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mNumOfAvailableNdps:I

.field private mNumOfAvailablePublishSessions:I

.field private mNumOfAvailableSubscribeSessions:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 144
    new-instance v0, Landroid/net/wifi/aware/AwareResources$1;

    invoke-direct {v0}, Landroid/net/wifi/aware/AwareResources$1;-><init>()V

    sput-object v0, Landroid/net/wifi/aware/AwareResources;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput p1, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailableNdps:I

    .line 56
    iput p2, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailablePublishSessions:I

    .line 57
    iput p3, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailableSubscribeSessions:I

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

    .line 139
    iget p2, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailableNdps:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget p2, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailablePublishSessions:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget p0, p0, Landroid/net/wifi/aware/AwareResources;->mNumOfAvailableSubscribeSessions:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
