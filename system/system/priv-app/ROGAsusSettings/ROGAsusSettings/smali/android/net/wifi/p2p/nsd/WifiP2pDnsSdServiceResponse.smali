.class public Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;
.super Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;
.source "WifiP2pDnsSdServiceResponse.java"


# static fields
.field private static final sVmpack:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDnsQueryName:Ljava/lang/String;

.field private mDnsType:I

.field private mInstanceName:Ljava/lang/String;

.field private final mTxtRecord:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    const/16 v1, 0xc

    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_tcp.local."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x11

    .line 83
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "local."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x1c

    .line 84
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_udp.local."

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    .locals 6

    const/4 v1, 0x1

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 154
    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;-><init>(IIILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    .line 70
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    .line 156
    invoke-direct {p0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->parse()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 157
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Malformed bonjour service response"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static newInstance(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 298
    new-instance p3, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    invoke-direct {p3, p0, p1, p2, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V

    return-object p3

    .line 302
    :cond_0
    :try_start_0
    new-instance v1, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;

    invoke-direct {v1, p0, p1, p2, p3}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;-><init>(IILandroid/net/wifi/p2p/WifiP2pDevice;[B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 305
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    return-object v0
.end method

.method private parse()Z
    .locals 5

    .line 176
    iget-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 181
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mData:[B

    invoke-direct {v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 183
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 189
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    .line 190
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    iput v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    const/16 v4, 0xc

    if-ne v2, v4, :cond_4

    .line 197
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    .line 201
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gt v2, v4, :cond_3

    return v3

    .line 206
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v4, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    sub-int/2addr v2, v1

    .line 205
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    return v1

    :cond_4
    const/16 v1, 0x10

    if-ne v2, v1, :cond_5

    .line 208
    invoke-direct {p0, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->readTxtData(Ljava/io/DataInputStream;)Z

    move-result p0

    return p0

    :cond_5
    return v3

    :catch_0
    move-exception p0

    .line 192
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v3
.end method

.method private readDnsName(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 4

    .line 223
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    new-instance v1, Ljava/util/HashMap;

    sget-object v2, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->sVmpack:Ljava/util/Map;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 227
    iget-object v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/16 v2, 0x27

    .line 228
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 232
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v2

    if-nez v2, :cond_1

    .line 234
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0xc0

    if-ne v2, v3, :cond_3

    .line 237
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_2

    return-object p0

    .line 242
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 245
    :cond_3
    new-array v2, v2, [B

    .line 246
    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->readFully([B)V

    .line 247
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "."

    .line 248
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 252
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return-object p0
.end method

.method private readTxtData(Ljava/io/DataInputStream;)Z
    .locals 5

    :goto_0
    const/4 v0, 0x0

    .line 265
    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->available()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_2

    .line 266
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 270
    :cond_0
    new-array v1, v1, [B

    .line 271
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 272
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/lang/String;-><init>([B)V

    const-string v1, "="

    invoke-virtual {v3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 273
    array-length v3, v1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    return v0

    .line 276
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    aget-object v4, v1, v0

    aget-object v1, v1, v2

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    :catch_0
    move-exception p0

    .line 280
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    return v0
.end method


# virtual methods
.method public getDnsQueryName()Ljava/lang/String;
    .locals 0

    .line 92
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    return-object p0
.end method

.method public getDnsType()I
    .locals 0

    .line 100
    iget p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsType:I

    return p0
.end method

.method public getInstanceName()Ljava/lang/String;
    .locals 0

    .line 116
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    return-object p0
.end method

.method public getTxtRecord()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 124
    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 129
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "serviceType:DnsSd("

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mServiceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " status:"

    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mStatus:I

    invoke-static {v1}, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse$Status;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " srcAddr:"

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pServiceResponse;->mDevice:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " version:"

    .line 133
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mVersion:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%02x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " dnsName:"

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mDnsQueryName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " TxtRecord:"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " key:"

    .line 137
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " value:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mTxtRecord:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 139
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, " InsName:"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object p0, p0, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceResponse;->mInstanceName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
