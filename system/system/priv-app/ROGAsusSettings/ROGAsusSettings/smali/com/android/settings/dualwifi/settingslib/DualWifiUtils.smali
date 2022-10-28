.class public Lcom/android/settings/dualwifi/settingslib/DualWifiUtils;
.super Ljava/lang/Object;
.source "DualWifiUtils.java"


# static fields
.field static final NO_INTERNET_WIFI_PIE:[I

.field static final WIFI_PIE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 25
    sget v2, Lcom/android/settingslib/R$drawable;->ic_wifi_signal_0:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$drawable;->ic_wifi_signal_1:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/settingslib/R$drawable;->ic_wifi_signal_2:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/settingslib/R$drawable;->ic_wifi_signal_3:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/settingslib/R$drawable;->ic_wifi_signal_4:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sput-object v1, Lcom/android/settings/dualwifi/settingslib/DualWifiUtils;->WIFI_PIE:[I

    new-array v0, v0, [I

    .line 33
    sget v1, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_0:I

    aput v1, v0, v3

    sget v1, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_1:I

    aput v1, v0, v4

    sget v1, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_2:I

    aput v1, v0, v5

    sget v1, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_3:I

    aput v1, v0, v6

    sget v1, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_4:I

    aput v1, v0, v7

    sput-object v0, Lcom/android/settings/dualwifi/settingslib/DualWifiUtils;->NO_INTERNET_WIFI_PIE:[I

    return-void
.end method

.method public static getInternetIconResource(IZ)I
    .locals 2

    if-ltz p0, :cond_1

    .line 71
    sget-object v0, Lcom/android/settings/dualwifi/settingslib/DualWifiUtils;->WIFI_PIE:[I

    array-length v1, v0

    if-ge p0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 74
    sget-object p1, Lcom/android/settings/dualwifi/settingslib/DualWifiUtils;->NO_INTERNET_WIFI_PIE:[I

    aget p0, p1, p0

    goto :goto_0

    :cond_0
    aget p0, v0, p0

    :goto_0
    return p0

    .line 72
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No Wifi icon found for level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
