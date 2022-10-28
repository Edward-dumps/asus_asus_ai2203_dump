.class public Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;
.super Ljava/lang/Object;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner$PnoSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PnoNetwork"
.end annotation


# instance fields
.field public authBitField:B

.field public flags:B

.field public frequencies:[I

.field public ssid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 929
    iput-byte v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    .line 931
    iput-byte v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    new-array v0, v0, [I

    .line 933
    iput-object v0, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->frequencies:[I

    .line 939
    iput-object p1, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 952
    :cond_0
    instance-of v1, p1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 955
    :cond_1
    check-cast p1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;

    .line 956
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    invoke-static {v1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-byte v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    iget-byte v3, p1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    if-ne v1, v3, :cond_2

    iget-byte p0, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    iget-byte p1, p1, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 944
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->ssid:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-byte v1, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->flags:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-byte p0, p0, Landroid/net/wifi/WifiScanner$PnoSettings$PnoNetwork;->authBitField:B

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/4 v1, 0x2

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
