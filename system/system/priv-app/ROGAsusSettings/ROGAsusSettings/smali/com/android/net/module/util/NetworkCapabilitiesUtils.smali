.class public final Lcom/android/net/module/util/NetworkCapabilitiesUtils;
.super Ljava/lang/Object;
.source "NetworkCapabilitiesUtils.java"


# static fields
.field private static final DISPLAY_TRANSPORT_PRIORITIES:[I

.field static final RESTRICTED_CAPABILITIES:J = -0x177ff844L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final UNRESTRICTED_CAPABILITIES:J = 0x1043L
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 60
    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->DISPLAY_TRANSPORT_PRIORITIES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x4
        0x0
        0x5
        0x2
        0x1
        0x3
        0x8
    .end array-data
.end method

.method public static getDisplayTransport([I)I
    .locals 6

    .line 169
    sget-object v0, Lcom/android/net/module/util/NetworkCapabilitiesUtils;->DISPLAY_TRANSPORT_PRIORITIES:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 170
    invoke-static {p0, v4}, Lcom/android/net/module/util/CollectionUtils;->contains([II)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 175
    :cond_1
    array-length v0, p0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 181
    aget p0, p0, v2

    return p0

    .line 179
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No transport in the provided array"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
