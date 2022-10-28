.class public Landroid/net/wifi/util/HexEncoding;
.super Ljava/lang/Object;
.source "HexEncoding.java"


# static fields
.field private static final LOWER_CASE_DIGITS:[C

.field private static final UPPER_CASE_DIGITS:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v1, v0, [C

    .line 28
    fill-array-data v1, :array_0

    sput-object v1, Landroid/net/wifi/util/HexEncoding;->LOWER_CASE_DIGITS:[C

    new-array v0, v0, [C

    .line 32
    fill-array-data v0, :array_1

    sput-object v0, Landroid/net/wifi/util/HexEncoding;->UPPER_CASE_DIGITS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :array_1
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public static encode([B)[C
    .locals 3

    .line 54
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v0, v2}, Landroid/net/wifi/util/HexEncoding;->encode([BIIZ)[C

    move-result-object p0

    return-object p0
.end method

.method private static encode([BIIZ)[C
    .locals 5

    if-eqz p3, :cond_0

    .line 75
    sget-object p3, Landroid/net/wifi/util/HexEncoding;->UPPER_CASE_DIGITS:[C

    goto :goto_0

    :cond_0
    sget-object p3, Landroid/net/wifi/util/HexEncoding;->LOWER_CASE_DIGITS:[C

    :goto_0
    mul-int/lit8 v0, p2, 0x2

    .line 76
    new-array v0, v0, [C

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    add-int v2, p1, v1

    .line 78
    aget-byte v2, p0, v2

    mul-int/lit8 v3, v1, 0x2

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0xf

    .line 80
    aget-char v4, p3, v4

    aput-char v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    and-int/lit8 v2, v2, 0xf

    .line 81
    aget-char v2, p3, v2

    aput-char v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method
