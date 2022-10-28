.class public Landroid/net/wifi/ScanResult$InformationElement;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InformationElement"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/ScanResult$InformationElement;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bytes:[B
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public id:I
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field

.field public idExt:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1023
    new-instance v0, Landroid/net/wifi/ScanResult$InformationElement$1;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult$InformationElement$1;-><init>()V

    sput-object v0, Landroid/net/wifi/ScanResult$InformationElement;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1043
    :cond_0
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 1045
    :cond_1
    instance-of v1, p1, Landroid/net/wifi/ScanResult$InformationElement;

    if-nez v1, :cond_2

    return v2

    .line 1047
    :cond_2
    check-cast p1, Landroid/net/wifi/ScanResult$InformationElement;

    .line 1048
    iget v1, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    iget v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    iget v3, p1, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    if-ne v1, v3, :cond_3

    iget-object p0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    iget-object p1, p1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    .line 1050
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1056
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastS()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1058
    iget v2, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object p0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1017
    iget p2, p0, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1018
    iget p2, p0, Landroid/net/wifi/ScanResult$InformationElement;->idExt:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1019
    iget-object p0, p0, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
