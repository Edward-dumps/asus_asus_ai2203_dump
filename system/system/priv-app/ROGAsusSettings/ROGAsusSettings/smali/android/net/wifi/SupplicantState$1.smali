.class Landroid/net/wifi/SupplicantState$1;
.super Ljava/lang/Object;
.source "SupplicantState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/SupplicantState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/net/wifi/SupplicantState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SupplicantState;
    .locals 0

    .line 257
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/wifi/SupplicantState;->valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 255
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantState$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/wifi/SupplicantState;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/net/wifi/SupplicantState;
    .locals 0

    .line 261
    new-array p0, p1, [Landroid/net/wifi/SupplicantState;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 255
    invoke-virtual {p0, p1}, Landroid/net/wifi/SupplicantState$1;->newArray(I)[Landroid/net/wifi/SupplicantState;

    move-result-object p0

    return-object p0
.end method
