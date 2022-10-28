.class public Landroid/net/wifi/WifiConfiguration$PairwiseCipher;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PairwiseCipher"
.end annotation


# static fields
.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "NONE"

    const-string v1, "TKIP"

    const-string v2, "CCMP"

    const-string v3, "GCMP_256"

    const-string v4, "SMS4"

    const-string v5, "GCMP_128"

    .line 343
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    return-void
.end method
