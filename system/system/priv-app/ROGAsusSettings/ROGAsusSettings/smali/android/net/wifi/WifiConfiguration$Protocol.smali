.class public Landroid/net/wifi/WifiConfiguration$Protocol;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Protocol"
.end annotation


# static fields
.field public static final strings:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "WPA"

    const-string v1, "RSN"

    const-string v2, "OSEN"

    const-string v3, "WAPI"

    .line 275
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    return-void
.end method
