.class public final Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;
.super Ljava/lang/Object;
.source "Policy.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/hotspot2/pps/Policy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoamingPartner"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCountries:Ljava/lang/String;

.field private mFqdn:Ljava/lang/String;

.field private mFqdnExactMatch:Z

.field private mPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 282
    new-instance v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    const/4 v1, 0x0

    .line 177
    iput-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    const/high16 v1, -0x80000000

    .line 189
    iput v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    .line 201
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

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

    .line 238
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 242
    :cond_1
    check-cast p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;

    .line 243
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    iget-boolean v3, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    iget v3, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    if-ne v1, v3, :cond_2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    iget-object p1, p1, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    .line 246
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    const/4 v1, 0x3

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setCountries(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    return-void
.end method

.method public setFqdn(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    return-void
.end method

.method public setFqdnExactMatch(Z)V
    .locals 0

    .line 179
    iput-boolean p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    return-void
.end method

.method public setPriority(I)V
    .locals 0

    .line 191
    iput p1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FQDN: "

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ExactMatch: "

    .line 258
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mFqdnExactMatch"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Priority: "

    .line 259
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Countries: "

    .line 260
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 227
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdn:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 228
    iget-boolean p2, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mFqdnExactMatch:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget p2, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mPriority:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/Policy$RoamingPartner;->mCountries:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
