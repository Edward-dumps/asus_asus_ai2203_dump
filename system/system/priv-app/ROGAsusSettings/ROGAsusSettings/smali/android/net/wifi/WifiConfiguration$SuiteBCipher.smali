.class public Landroid/net/wifi/WifiConfiguration$SuiteBCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SuiteBCipher"
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
    .locals 2

    const-string v0, "ECDHE_ECDSA"

    const-string v1, "ECDHE_RSA"

    .line 463
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$SuiteBCipher;->strings:[Ljava/lang/String;

    return-void
.end method
