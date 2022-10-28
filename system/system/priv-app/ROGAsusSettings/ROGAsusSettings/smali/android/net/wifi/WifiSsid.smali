.class public final Landroid/net/wifi/WifiSsid;
.super Ljava/lang/Object;
.source "WifiSsid.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/WifiSsid;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final octets:Ljava/io/ByteArrayOutputStream;
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 271
    new-instance v0, Landroid/net/wifi/WifiSsid$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiSsid;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/wifi/WifiSsid$1;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/net/wifi/WifiSsid;-><init>()V

    return-void
.end method

.method private convertToBytes(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    .line 104
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_c

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5c

    if-eq v1, v2, :cond_0

    .line 178
    iget-object v2, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 109
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x22

    if-eq v1, v3, :cond_b

    if-eq v1, v2, :cond_a

    const/16 v2, 0x65

    if-eq v1, v2, :cond_9

    const/16 v2, 0x6e

    if-eq v1, v2, :cond_8

    const/16 v2, 0x72

    if-eq v1, v2, :cond_7

    const/16 v2, 0x74

    if-eq v1, v2, :cond_6

    const/16 v2, 0x78

    if-eq v1, v2, :cond_3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 161
    :pswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x30

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 163
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x37

    if-lt v3, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_1

    mul-int/lit8 v1, v1, 0x8

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 167
    :cond_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-lt v3, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_2

    mul-int/lit8 v1, v1, 0x8

    .line 168
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    sub-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    .line 171
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v0, 0x2

    const/4 v2, -0x1

    const/16 v3, 0x10

    .line 137
    :try_start_0
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-gez v2, :cond_5

    .line 144
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-gez v1, :cond_4

    goto/16 :goto_0

    .line 146
    :cond_4
    iget-object v2, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 149
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v0, v1

    goto/16 :goto_0

    .line 127
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 123
    :cond_7
    iget-object v1, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 119
    :cond_8
    iget-object v1, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 131
    :cond_9
    iget-object v1, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 111
    :cond_a
    iget-object v1, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    .line 115
    :cond_b
    iget-object v1, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_1

    :cond_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .locals 1
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 74
    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    .line 75
    invoke-direct {v0, p0}, Landroid/net/wifi/WifiSsid;->convertToBytes(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createFromHex(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;
    .locals 5

    .line 80
    new-instance v0, Landroid/net/wifi/WifiSsid;

    invoke-direct {v0}, Landroid/net/wifi/WifiSsid;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "0x"

    .line 83
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "0X"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x2

    .line 84
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    .line 87
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_3

    add-int/lit8 v3, v2, 0x2

    .line 90
    :try_start_0
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x10

    invoke-static {v2, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v2, v1

    .line 94
    :goto_1
    iget-object v4, v0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move v2, v3

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private isArrayAllZeroes([B)Z
    .locals 2

    const/4 p0, 0x0

    move v0, p0

    .line 229
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 230
    aget-byte v1, p1, v0

    if-eqz v1, :cond_0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 216
    :cond_0
    instance-of v0, p1, Landroid/net/wifi/WifiSsid;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 219
    :cond_1
    check-cast p1, Landroid/net/wifi/WifiSsid;

    .line 220
    iget-object p0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iget-object p1, p1, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0
.end method

.method public getHexString()Ljava/lang/String;
    .locals 7

    .line 249
    invoke-virtual {p0}, Landroid/net/wifi/WifiSsid;->getOctets()[B

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "0x"

    move v3, v1

    .line 250
    :goto_0
    iget-object v4, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-byte v6, v0, v3

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v1

    const-string v6, "%02x"

    invoke-static {v2, v6, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    if-lez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return-object v2
.end method

.method public getOctets()[B
    .locals 0
    .annotation build Landroid/compat/annotation/UnsupportedAppUsage;
    .end annotation

    .line 243
    iget-object p0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 225
    iget-object p0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    return p0
.end method

.method public isHidden()Z
    .locals 1

    .line 237
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiSsid;->isArrayAllZeroes([B)Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 191
    iget-object v0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 195
    iget-object v1, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    if-lez v1, :cond_2

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiSsid;->isArrayAllZeroes([B)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "UTF-8"

    .line 197
    invoke-static {p0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    .line 198
    invoke-virtual {p0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 199
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 200
    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object p0

    const/16 v1, 0x20

    .line 201
    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 203
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object p0

    .line 204
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 205
    invoke-virtual {p0}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "<unknown ssid>"

    return-object p0

    .line 208
    :cond_1
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 265
    iget-object p2, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object p0, p0, Landroid/net/wifi/WifiSsid;->octets:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
