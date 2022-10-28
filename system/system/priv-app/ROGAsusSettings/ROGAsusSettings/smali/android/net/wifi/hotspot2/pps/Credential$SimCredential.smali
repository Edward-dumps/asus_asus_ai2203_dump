.class public final Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;
.super Ljava/lang/Object;
.source "Credential.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimCredential"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mEapType:I

.field private mImsi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 792
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 710
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 661
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const/high16 v0, -0x80000000

    .line 687
    iput v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

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

    .line 734
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 738
    :cond_1
    check-cast p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    .line 739
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget p0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    iget p1, p1, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 745
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setEapType(I)V
    .locals 0

    .line 695
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    return-void
.end method

.method public setImsi(Ljava/lang/String;)V
    .locals 0

    .line 669
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const-string v2, "\n"

    if-eqz v1, :cond_1

    .line 753
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-le v1, v3, :cond_0

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2a

    if-eq v1, v4, :cond_0

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "****"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 757
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    :goto_0
    const-string v3, "IMSI: "

    .line 759
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, "EAPType: "

    .line 761
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 767
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mImsi:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 768
    iget p0, p0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->mEapType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
