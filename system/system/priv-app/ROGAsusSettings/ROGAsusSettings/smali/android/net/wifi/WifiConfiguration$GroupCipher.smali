.class public Landroid/net/wifi/WifiConfiguration$GroupCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupCipher"
.end annotation


# static fields
.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "WEP40"

    const-string v1, "WEP104"

    const-string v2, "TKIP"

    const-string v3, "CCMP"

    const-string v4, "GTK_NOT_USED"

    const-string v5, "GCMP_256"

    const-string v6, "SMS4"

    const-string v7, "GCMP_128"

    .line 398
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    return-void
.end method
