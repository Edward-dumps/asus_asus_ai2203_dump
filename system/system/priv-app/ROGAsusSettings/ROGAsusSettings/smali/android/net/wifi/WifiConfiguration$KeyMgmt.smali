.class public Landroid/net/wifi/WifiConfiguration$KeyMgmt;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyMgmt"
.end annotation


# static fields
.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const-string v0, "NONE"

    const-string v1, "WPA_PSK"

    const-string v2, "WPA_EAP"

    const-string v3, "IEEE8021X"

    const-string v4, "WPA2_PSK"

    const-string v5, "OSEN"

    const-string v6, "FT_PSK"

    const-string v7, "FT_EAP"

    const-string v8, "SAE"

    const-string v9, "OWE"

    const-string v10, "SUITE_B_192"

    const-string v11, "WPA_PSK_SHA256"

    const-string v12, "WPA_EAP_SHA256"

    const-string v13, "WAPI_PSK"

    const-string v14, "WAPI_CERT"

    const-string v15, "FILS_SHA256"

    const-string v16, "FILS_SHA384"

    const-string v17, "DPP"

    .line 239
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    return-void
.end method
