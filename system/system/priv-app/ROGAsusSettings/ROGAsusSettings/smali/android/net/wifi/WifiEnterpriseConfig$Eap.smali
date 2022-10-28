.class public final Landroid/net/wifi/WifiEnterpriseConfig$Eap;
.super Ljava/lang/Object;
.source "WifiEnterpriseConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiEnterpriseConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Eap"
.end annotation


# static fields
.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "PEAP"

    const-string v1, "TLS"

    const-string v2, "TTLS"

    const-string v3, "PWD"

    const-string v4, "SIM"

    const-string v5, "AKA"

    const-string v6, "AKA\'"

    const-string v7, "WFA-UNAUTH-TLS"

    const-string v8, "WAPI_CERT"

    .line 408
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiEnterpriseConfig$Eap;->strings:[Ljava/lang/String;

    return-void
.end method
