.class public final Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;
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
    name = "UserCredential"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUPPORTED_AUTH:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAbleToShare:Z

.field private mEapType:I

.field private mMachineManaged:Z

.field private mNonEapInnerMethod:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mSoftTokenApp:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 168
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "PAP"

    const-string v2, "MS-CHAP"

    const-string v3, "MS-CHAP-V2"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->SUPPORTED_AUTH:Ljava/util/Set;

    .line 431
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    .line 195
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    const/4 v1, 0x0

    .line 216
    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    .line 233
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    .line 250
    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    const/high16 v1, -0x80000000

    .line 271
    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    .line 297
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

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

    .line 358
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 362
    :cond_1
    check-cast p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;

    .line 363
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    .line 364
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    iget-boolean v3, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    .line 366
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    iget-boolean v3, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    iget v3, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    .line 369
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getUniqueId()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 459
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    .line 374
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    .line 375
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    const/4 v1, 0x6

    aput-object p0, v0, v1

    .line 374
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setAbleToShare(Z)V
    .locals 0

    .line 255
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    return-void
.end method

.method public setEapType(I)V
    .locals 0

    .line 282
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    return-void
.end method

.method public setMachineManaged(Z)V
    .locals 0

    .line 221
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    return-void
.end method

.method public setNonEapInnerMethod(Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0

    .line 202
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    return-void
.end method

.method public setSoftTokenApp(Ljava/lang/String;)V
    .locals 0

    .line 238
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 181
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Username: "

    .line 381
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MachineManaged: "

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "SoftTokenApp: "

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AbleToShare: "

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "EAPType: "

    .line 385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "AuthMethod: "

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 344
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 345
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 346
    iget-boolean p2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mMachineManaged:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mSoftTokenApp:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 348
    iget-boolean p2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mAbleToShare:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 349
    iget p2, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mEapType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 350
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Credential$UserCredential;->mNonEapInnerMethod:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
