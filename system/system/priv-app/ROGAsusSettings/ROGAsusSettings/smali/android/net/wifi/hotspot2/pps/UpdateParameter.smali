.class public final Landroid/net/wifi/hotspot2/pps/UpdateParameter;
.super Ljava/lang/Object;
.source "UpdateParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/hotspot2/pps/UpdateParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBase64EncodedPassword:Ljava/lang/String;

.field private mCaCertificate:Ljava/security/cert/X509Certificate;

.field private mRestriction:Ljava/lang/String;

.field private mServerUri:Ljava/lang/String;

.field private mTrustRootCertSha256Fingerprint:[B

.field private mTrustRootCertUrl:Ljava/lang/String;

.field private mUpdateIntervalInMinutes:J

.field private mUpdateMethod:Ljava/lang/String;

.field private mUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 381
    new-instance v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/UpdateParameter$1;-><init>()V

    sput-object v0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 94
    iput-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    const/4 v0, 0x0

    .line 106
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 129
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 140
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 151
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 163
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 258
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 261
    :cond_1
    check-cast p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;

    .line 263
    iget-wide v3, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    iget-wide v5, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    .line 264
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    .line 265
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    .line 266
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    .line 267
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    .line 268
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    .line 269
    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    iget-object v3, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 270
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    iget-object p1, p1, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    .line 272
    invoke-static {p0, p1}, Landroid/net/wifi/hotspot2/pps/Credential;->isX509CertificateEquals(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Z

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

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    .line 277
    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    .line 279
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([B)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    const/16 v1, 0x8

    aput-object p0, v0, v1

    .line 277
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setBase64EncodedPassword(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    return-void
.end method

.method public setCaCertificate(Ljava/security/cert/X509Certificate;)V
    .locals 0

    .line 194
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public setRestriction(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    return-void
.end method

.method public setServerUri(Ljava/lang/String;)V
    .locals 0

    .line 131
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    return-void
.end method

.method public setTrustRootCertSha256Fingerprint([B)V
    .locals 0

    .line 176
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    return-void
.end method

.method public setTrustRootCertUrl(Ljava/lang/String;)V
    .locals 0

    .line 165
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    return-void
.end method

.method public setUpdateIntervalInMinutes(J)V
    .locals 0

    .line 96
    iput-wide p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    return-void
.end method

.method public setUpdateMethod(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UpdateInterval: "

    .line 285
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "UpdateMethod: "

    .line 286
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Restriction: "

    .line 287
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ServerURI: "

    .line 288
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Username: "

    .line 289
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "TrustRootCertURL: "

    .line 290
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 242
    iget-wide v0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateIntervalInMinutes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 243
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUpdateMethod:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 244
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mRestriction:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mServerUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 246
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mUsername:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 247
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mBase64EncodedPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 248
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 249
    iget-object p2, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mTrustRootCertSha256Fingerprint:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 250
    iget-object p0, p0, Landroid/net/wifi/hotspot2/pps/UpdateParameter;->mCaCertificate:Ljava/security/cert/X509Certificate;

    invoke-static {p1, p0}, Landroid/net/wifi/ParcelUtil;->writeCertificate(Landroid/os/Parcel;Ljava/security/cert/X509Certificate;)V

    return-void
.end method
