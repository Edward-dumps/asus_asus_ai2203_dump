.class public Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupMgmtCipher"
.end annotation


# static fields
.field public static final strings:[Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AllUpper"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "BIP_CMAC_256"

    const-string v1, "BIP_GMAC_128"

    const-string v2, "BIP_GMAC_256"

    .line 433
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$GroupMgmtCipher;->strings:[Ljava/lang/String;

    return-void
.end method
