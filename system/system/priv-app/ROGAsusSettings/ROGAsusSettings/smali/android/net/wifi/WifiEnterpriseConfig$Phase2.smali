.class public final Landroid/net/wifi/WifiEnterpriseConfig$Phase2;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phase2"
.end annotation


# static fields
.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "NULL"

    const-string v1, "PAP"

    const-string v2, "MSCHAP"

    const-string v3, "MSCHAPV2"

    const-string v4, "GTC"

    const-string v5, "SIM"

    const-string v6, "AKA"

    const-string v7, "AKA\'"

    .line 436
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Phase2;->strings:[Ljava/lang/String;

    return-void
.end method
